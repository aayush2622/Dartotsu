// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => 'అనిమే & మాంగా ట్రాక్ చేయడానికి\nకొత్త బెస్ట్ యాప్';

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
  String get loadMore => 'ఇంకా లోడ్ చెయ్యి';

  @override
  String get login => 'లాగిన్';

  @override
  String get continueAsGuest => 'గెస్ట్‌గా కొనసాగు';

  @override
  String get getStarted => 'మొదలుపెట్టు';

  @override
  String get loginWithToken => 'టోకెన్‌తో లాగిన్';

  @override
  String get pasteTokenHint => 'నీ యాక్సెస్ టోకెన్ పేస్ట్ చెయ్యి';

  @override
  String loginTo(String service) {
    return '$serviceకి లాగిన్ అవ్వు';
  }

  @override
  String get settings => 'సెట్టింగ్స్';

  @override
  String get account => 'అకౌంట్';

  @override
  String get about => 'గురించి';

  @override
  String get language => 'భాష';

  @override
  String get animationSpeed => 'యానిమేషన్లు';

  @override
  String get animationSpeedDesc =>
      'యాప్ అంతటా ట్రాన్సిషన్లు, ఎంట్రీ ఎఫెక్ట్‌ల స్పీడ్';

  @override
  String get animationSpeedOff => 'ఆఫ్';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ఎక్స్టెన్షన్లు',
      one: 'ఎక్స్టెన్షన్',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'తెలియని సోర్స్';

  @override
  String get install => 'ఇన్‌స్టాల్';

  @override
  String get update => 'అప్‌డేట్';

  @override
  String get uninstall => 'అన్‌ఇన్‌స్టాల్';

  @override
  String get updateInstallCancelled =>
      'ఇన్‌స్టాల్ రద్దయింది. ఇన్‌స్టాల్ అయిన యాప్‌తో కాన్ఫ్లిక్ట్ అవుతోందని Android చెబితే, సిగ్నేచర్ వేరే ఉందని అర్థం: ముందు ప్రస్తుత వెర్షన్‌ను అన్‌ఇన్‌స్టాల్ చేసి, తర్వాత అప్‌డేట్ ఇన్‌స్టాల్ చేయండి';

  @override
  String updateInstallFailed(String error) {
    return 'అప్‌డేట్ కాలేదు: $error';
  }

  @override
  String get appLock => 'యాప్ లాక్';

  @override
  String get appLockDesc =>
      'యాప్ తెరిచినప్పుడు లేదా కాసేపటి తర్వాత తిరిగి వచ్చినప్పుడు పాస్‌కోడ్ అడుగుతుంది';

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
  String get appLockUnlock => 'మీ పాస్‌కోడ్ ఎంటర్ చేయండి';

  @override
  String get appLockWrong => 'పాస్‌కోడ్ తప్పు';

  @override
  String appLockWait(String seconds) {
    return 'చాలాసార్లు ట్రై చేశారు, $seconds సెకన్లు ఆగండి';
  }

  @override
  String get appLockNew => 'ఒక పాస్‌కోడ్ ఎంచుకోండి';

  @override
  String get appLockNewHint => '4 నుంచి 8 అంకెలు';

  @override
  String get appLockConfirm => 'మళ్ళీ ఎంటర్ చేయండి';

  @override
  String get appLockMismatch => 'పాస్‌కోడ్‌లు సరిపోలలేదు';

  @override
  String get appLockOn => 'పాస్‌కోడ్ సెట్ అయింది';

  @override
  String get appLockRemoveTitle => 'లాక్ ఆఫ్ చేయడానికి పాస్‌కోడ్ ఎంటర్ చేయండి';

  @override
  String get installFailed => 'ఇన్‌స్టాల్ ఫెయిలైంది';

  @override
  String get updateFailed => 'అప్‌డేట్ ఫెయిలైంది';

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
  String get noSourceSettings => 'ఈ సోర్స్‌కి సెట్టింగ్స్ ఏమీ లేవు';

  @override
  String get addPluginRepository => 'ప్లగిన్ రిపోజిటరీ యాడ్ చెయ్యి';

  @override
  String get pluginIndexUrlHint => 'ప్లగిన్ ఇండెక్స్ URL';

  @override
  String get addRepository => 'రిపోజిటరీ యాడ్ చెయ్యి';

  @override
  String get pluginRepoUpdated => 'ప్లగిన్ రిపోజిటరీ అప్‌డేట్ అయింది';

  @override
  String get pluginRepoUpdateFailed => 'ప్లగిన్ రిపోజిటరీ రిఫ్రెష్ కాలేదు';

  @override
  String get ok => 'సరే';

  @override
  String get cancel => 'క్యాన్సిల్';

  @override
  String get yes => 'అవును';

  @override
  String get no => 'కాదు';

  @override
  String get save => 'సేవ్';

  @override
  String get reset => 'రీసెట్';

  @override
  String get clear => 'క్లియర్';

  @override
  String get test => 'టెస్ట్';

  @override
  String get testing => 'టెస్ట్ చేస్తున్నాం…';

  @override
  String get resolving => 'రిజాల్వ్ అవుతోంది…';

  @override
  String get none => 'ఏమీ లేదు';

  @override
  String get selectMediaService => 'మీడియా సర్వీస్ ఎంచుకో';

  @override
  String get pickColor => 'ఒక రంగు ఎంచుకో';

  @override
  String get colorPickerCustom => 'కస్టమ్';

  @override
  String get colorPickerTransparent => 'ట్రాన్స్‌పరెంట్';

  @override
  String get ltr => 'ఎడమ నుండి కుడికి';

  @override
  String get searchSettings => 'సెట్టింగ్స్‌లో వెతుకు';

  @override
  String nothingMatches(String query) {
    return '\"$query\"కి ఏదీ మ్యాచ్ అవ్వలేదు';
  }

  @override
  String searchCategory(String category) {
    return '$categoryలో వెతుకు';
  }

  @override
  String get settingsAppearance => 'లుక్';

  @override
  String get settingsAppearanceDesc => 'థీమ్, రంగులు, గ్లాస్ మోడ్';

  @override
  String get settingsGeneral => 'జనరల్';

  @override
  String get settingsGeneralDesc => 'భాష, బిహేవియర్';

  @override
  String get settingsNetwork => 'నెట్‌వర్క్';

  @override
  String get settingsNetworkDesc =>
      'యూజర్ ఏజెంట్, సర్టిఫికెట్లు, DNS మరియు ప్రాక్సీ';

  @override
  String get settingsAccountDesc => 'ట్రాకింగ్ సర్వీస్, సైన్ ఇన్';

  @override
  String get settingsUpdates => 'అప్‌డేట్లు';

  @override
  String get amoledBlack => 'AMOLED నలుపు';

  @override
  String get amoledBlackDesc => 'డార్క్ మోడ్‌లో పూర్తి నలుపు సర్ఫేస్‌లు';

  @override
  String get glassMode => 'గ్లాస్ మోడ్';

  @override
  String get glassModeDesc => 'నీ లైబ్రరీ ఆర్ట్ మీద ఫ్రాస్టెడ్ సర్ఫేస్‌లు';

  @override
  String get shelfFrame => 'సెక్షన్ల చుట్టూ ఫ్రేమ్';

  @override
  String get shelfFrameDesc =>
      'ప్రతి షెల్ఫ్ వెనుక కార్డ్ చూపించు, లేదా వరుసలను నేరుగా పేజీ మీద ఉంచు';

  @override
  String get settingsExtensionsDesc =>
      'సోర్స్ మేనేజర్లు, రిపోజిటరీలు, ఎక్స్టెన్షన్ ఆప్షన్లు';

  @override
  String get settingsAddons => 'యాడాన్లు';

  @override
  String get customPath => 'కస్టమ్ స్టోరేజ్ పాత్';

  @override
  String get customPathDesc =>
      'యాప్ డేటా ఎక్కడ ఉంటుందో. రీసెట్ చేయడానికి లాంగ్ ప్రెస్ చెయ్యి';

  @override
  String get selectDirectory => 'ఫోల్డర్ ఎంచుకో';

  @override
  String get differentCacheManager => 'ప్రత్యామ్నాయ ఇమేజ్ కాష్';

  @override
  String get differentCacheManagerDesc => 'ఇమేజ్‌ల కోసం వేరే కాష్ మేనేజర్ వాడు';

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
  String get backupAndRestore => 'బ్యాకప్ & రీస్టోర్';

  @override
  String get backupAndRestoreDesc =>
      'నీ ప్రిఫరెన్సులు సేవ్ చెయ్యి లేదా లోడ్ చెయ్యి';

  @override
  String get backup => 'బ్యాకప్';

  @override
  String get restore => 'రీస్టోర్';

  @override
  String get loadExtensionsIcon => 'ఎక్స్టెన్షన్ ఐకాన్లు లోడ్ చెయ్యి';

  @override
  String get autoUpdateRuntimes => 'Update extension runtimes automatically';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead.';

  @override
  String get loadExtensionsIconDesc =>
      'ఎక్స్టెన్షన్ లిస్ట్‌లలో సోర్స్ ఐకాన్లు చూపించు';

  @override
  String get sectionStorage => 'స్టోరేజ్';

  @override
  String get sectionManagers => 'మేనేజర్లు';

  @override
  String get sectionOptions => 'ఆప్షన్లు';

  @override
  String get backupTabBackup => 'బ్యాకప్ తీసుకో';

  @override
  String get backupTabRestore => 'రీస్టోర్ చెయ్యి';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$categories కేటగిరీల్లో $keys సెట్టింగ్స్';
  }

  @override
  String backupLastBackup(Object time) {
    return 'లాస్ట్ బ్యాకప్ $time';
  }

  @override
  String get backupNever => 'ఇంకా బ్యాకప్ లేదు';

  @override
  String get backupSelectAll => 'అన్నీ సెలెక్ట్ చెయ్యి';

  @override
  String get backupClearAll => 'క్లియర్';

  @override
  String backupKeys(Object count) {
    return '$count సెట్టింగ్స్';
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
  String get backupPassword => 'పాస్‌వర్డ్ (ఆప్షనల్)';

  @override
  String get backupPasswordHint => 'డిఫాల్ట్ వాడాలంటే ఖాళీగా వదిలెయ్యి';

  @override
  String get backupSensitive =>
      'లాగిన్ టోకెన్లు ఉంటాయి. ఈ ఫైల్ ప్రైవేట్‌గా ఉంచు';

  @override
  String get backupCreate => 'బ్యాకప్ క్రియేట్ చెయ్యి';

  @override
  String backupSaved(Object name) {
    return 'బ్యాకప్ $nameకి సేవ్ అయింది';
  }

  @override
  String backupFailed(Object error) {
    return 'బ్యాకప్ ఫెయిలైంది: $error';
  }

  @override
  String get backupPickFile => 'బ్యాకప్ ఫైల్ ఎంచుకో';

  @override
  String get backupPickFileDesc => 'Dartotsu తయారు చేసిన .json ఫైల్ ఎంచుకో';

  @override
  String get backupChooseAnother => 'వేరే ఫైల్ ఎంచుకో';

  @override
  String get backupCreatedAt => 'క్రియేట్ అయింది';

  @override
  String get backupAppVersion => 'యాప్ వెర్షన్';

  @override
  String get backupDevice => 'డివైస్';

  @override
  String get backupAccounts => 'అకౌంట్లు';

  @override
  String get backupSize => 'సైజ్';

  @override
  String get backupEncrypted => 'పాస్‌వర్డ్ ప్రొటెక్టెడ్';

  @override
  String get backupUnlock => 'అన్‌లాక్';

  @override
  String get backupWrongPassword =>
      'ఈ ఫైల్ చదవలేకపోయాం. పాస్‌వర్డ్ చెక్ చెయ్యి';

  @override
  String get backupRestoreSelected => 'సెలెక్ట్ చేసినవి రీస్టోర్ చెయ్యి';

  @override
  String backupRestoreConfirm(Object count) {
    return '$count సెట్టింగ్స్ రీస్టోర్ చేయాలా? ఈ కేటగిరీల్లో ఉన్న వాల్యూలు ఓవర్‌రైట్ అవుతాయి.';
  }

  @override
  String get backupRestored =>
      'రీస్టోర్ అయింది. అన్నీ అప్లై అవ్వాలంటే యాప్ రీస్టార్ట్ చెయ్యి';

  @override
  String backupRestoreFailed(Object error) {
    return 'రీస్టోర్ ఫెయిలైంది: $error';
  }

  @override
  String get backupSelectOne => 'కనీసం ఒక కేటగిరీ సెలెక్ట్ చెయ్యి';

  @override
  String get backupCatTheme => 'లుక్';

  @override
  String get backupCatThemeDesc =>
      'థీమ్, రంగులు, గ్లాస్, ఫాంట్లు, కార్డ్ స్టైల్';

  @override
  String get backupCatCommon => 'జనరల్';

  @override
  String get backupCatCommonDesc =>
      'భాష, స్టోరేజ్, నెట్‌వర్క్, ఎక్స్టెన్షన్ ఆప్షన్లు';

  @override
  String get backupCatPlayer => 'ప్లేయర్';

  @override
  String get backupCatPlayerDesc => 'ప్లేయర్ ప్రిఫరెన్సులు';

  @override
  String get backupCatReader => 'రీడర్';

  @override
  String get backupCatReaderDesc => 'రీడర్ ప్రిఫరెన్సులు';

  @override
  String get backupCatProtected => 'అకౌంట్లు';

  @override
  String get backupCatProtectedDesc => 'లాగిన్ టోకెన్లు, సైన్ ఇన్ డేటా';

  @override
  String get backupCatOther => 'సర్వీసులు & ఫీడ్‌లు';

  @override
  String get backupCatOtherDesc =>
      'ఫీడ్ లేఅవుట్లు, లిస్ట్‌లు, సర్వీస్ ఆప్షన్లు';

  @override
  String get logFile => 'లాగ్ ఫైల్';

  @override
  String get logFileDesc =>
      'యాప్ లాగ్ షేర్ చెయ్యి, లేదా Linuxలో దాని పాత్ కాపీ చెయ్యి';

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
  String get logFileCopied => 'లాగ్ పాత్ కాపీ అయింది';

  @override
  String get donateSheetTitle => 'Dartotsu నచ్చిందా?';

  @override
  String get donateSheetMessage =>
      'Dartotsuని ఒక్కరే తయారు చేసి మెయింటైన్ చేస్తున్నారు. నీకు ఉపయోగపడితే, డెవలప్‌మెంట్‌కి సపోర్ట్ చేయడం గురించి ఆలోచించు.';

  @override
  String get donateLater => 'తర్వాత చూద్దాం';

  @override
  String get glassBackground => 'గ్లాస్ బ్యాక్‌గ్రౌండ్';

  @override
  String get glassBackgroundDesc =>
      'ఇమేజ్ లింక్ ఇవ్వకపోతే నీ ప్రొఫైల్ బ్యానర్ వాడతాం';

  @override
  String get glassBackgroundHint =>
      'ఇమేజ్ లింక్ (నీ బ్యానర్ కోసం ఖాళీగా వదిలెయ్యి)';

  @override
  String get followCover => 'కవర్‌ని ఫాలో అవ్వు';

  @override
  String get followCoverDesc =>
      'రంగులు బ్యాక్‌గ్రౌండ్‌ని ఫాలో అవుతాయి, డీటెయిల్ పేజీల్లో కవర్‌ని';

  @override
  String get followCoverMediaOnly => 'Only for media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Only follow the cover on media pages, everywhere else keeps the normal colors';

  @override
  String get cardStyle => 'కార్డ్ స్టైల్';

  @override
  String get cardStyleDesc =>
      'టైటిల్ ప్లేస్‌మెంట్, సైజ్, ప్రోగ్రెస్, బ్యాడ్జ్‌లు';

  @override
  String get customFont => 'ఫాంట్';

  @override
  String get customFontDesc =>
      'డిఫాల్ట్, నీ డివైస్‌లోని ఫైల్, లేదా Google Fonts';

  @override
  String get customFontError => 'ఆ ఫాంట్ ఫైల్ లోడ్ అవ్వలేదు';

  @override
  String get googleFontError => 'ఆ ఫాంట్ డౌన్‌లోడ్ అవ్వలేదు';

  @override
  String get yourFonts => 'నీ ఫాంట్లు';

  @override
  String get addFontFile => 'ఫాంట్ ఫైల్ యాడ్ చెయ్యి…';

  @override
  String get browseGoogleFonts => 'Google Fonts బ్రౌజ్ చెయ్యి…';

  @override
  String get searchGoogleFonts => 'Google Fontsలో వెతుకు';

  @override
  String get defaultFont => 'డిఫాల్ట్';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'సిస్టమ్ నుండి డైనమిక్ కలర్';

  @override
  String get jsonTheme => 'కస్టమ్ థీమ్ ఫైల్';

  @override
  String get jsonThemeDesc =>
      '~/.config/dartotsu/theme.json నుండి లైవ్ రంగులు (కస్టమ్ స్క్రిప్ట్ లేదా నీ సొంత ఎడిట్లు)';

  @override
  String get themeMode => 'థీమ్ మోడ్';

  @override
  String get mode => 'మోడ్';

  @override
  String get trackingService => 'ట్రాకింగ్ సర్వీస్';

  @override
  String get signOut => 'సైన్ అవుట్';

  @override
  String get signIn => 'సైన్ ఇన్';

  @override
  String get notSignedIn => 'సైన్ ఇన్ అవ్వలేదు';

  @override
  String signOutOf(String service) {
    return '$service నుండి సైన్ అవుట్ అవ్వాలా?';
  }

  @override
  String get checkForUpdates => 'అప్‌డేట్లు చెక్ చెయ్యి';

  @override
  String get checkForUpdatesDesc => 'కొత్త GitHub రిలీజ్ వస్తే చెప్పు';

  @override
  String get updateChannel => 'అప్‌డేట్ ఛానెల్';

  @override
  String get channel => 'ఛానెల్';

  @override
  String get stable => 'స్టేబుల్';

  @override
  String get preRelease => 'ప్రీ-రిలీజ్';

  @override
  String get alpha => 'ఆల్ఫా';

  @override
  String get checkNow => 'ఇప్పుడే చెక్ చెయ్యి';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'డిఫాల్ట్';

  @override
  String currentlyUsing(String value) {
    return 'ప్రస్తుతం: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'డిఫాల్ట్ (Cloudflare)';

  @override
  String get proxy => 'ప్రాక్సీ';

  @override
  String get proxyProtocol => 'టైప్';

  @override
  String get proxyHost => 'హోస్ట్';

  @override
  String get proxyPort => 'పోర్ట్';

  @override
  String get proxyUsername => 'యూజర్‌నేమ్';

  @override
  String get proxyPassword => 'పాస్‌వర్డ్';

  @override
  String get optional => 'ఆప్షనల్';

  @override
  String get clearCookies => 'కుకీలు క్లియర్ చెయ్యి';

  @override
  String get clearCookiesDesc => 'స్టోర్ అయిన కుకీలన్నీ తీసేయ్';

  @override
  String notImplementedArea(String area) {
    return '$area — త్వరలో వస్తుంది';
  }

  @override
  String notImplementedService(String service) {
    return '$service దీన్ని ఇంకా సపోర్ట్ చేయట్లేదు.';
  }

  @override
  String get couldNotLoadResults => 'రిజల్ట్స్ లోడ్ అవ్వలేదు';

  @override
  String get updateCheckFailed => 'అప్‌డేట్లు చెక్ చేయలేకపోయాం';

  @override
  String get highRefreshRate => 'హై రిఫ్రెష్ రేట్';

  @override
  String get highRefreshRateDesc =>
      'నీ స్క్రీన్ సపోర్ట్ చేసే అత్యధిక రిఫ్రెష్ రేట్ వాడు';

  @override
  String get imageSave => 'ఇమేజ్ సేవ్ చెయ్యి';

  @override
  String imageSavedTo(String path) {
    return '$pathకి సేవ్ అయింది';
  }

  @override
  String get imageActionFailed => 'ఇమేజ్ డౌన్‌లోడ్ అవ్వలేదు';

  @override
  String get imageTitleCover => 'కవర్';

  @override
  String get imageTitlePage => 'Page';

  @override
  String get imageTitleBanner => 'బ్యానర్';

  @override
  String get imageTitleAvatar => 'ప్రొఫైల్ పిక్చర్';

  @override
  String get verifyTls => 'సర్టిఫికెట్లు వెరిఫై చెయ్యి';

  @override
  String get verifyTlsDesc =>
      'చెల్లని HTTPS సర్టిఫికెట్ ఉన్న సర్వర్లను రిజెక్ట్ చెయ్యి. సెల్ఫ్-సైన్డ్ వాడే సోర్స్ కోసం మాత్రమే ఆఫ్ చెయ్యి';

  @override
  String get clearCookiesConfirm =>
      'స్టోర్ అయిన కుకీలన్నీ తీసేయాలా? దీనివల్ల కొన్ని సోర్స్‌ల నుండి సైన్ అవుట్ అవ్వచ్చు.';

  @override
  String get version => 'వెర్షన్';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'సోర్స్, ఇష్యూలు, రిలీజ్‌లు';

  @override
  String get discordDesc => 'కమ్యూనిటీ & సపోర్ట్';

  @override
  String get supportDeveloper => 'Support the developer';

  @override
  String get buyMeCoffee => 'Buy me a coffee';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID copied';

  @override
  String get donateDesc => 'డెవలప్‌మెంట్‌కి సపోర్ట్ చెయ్యి';

  @override
  String get contributors => 'కాంట్రిబ్యూటర్లు';

  @override
  String get contributorsDesc => 'Dartotsu తయారు చేసిన వాళ్ళు';

  @override
  String get contributorsLoadFailed => 'కాంట్రిబ్యూటర్లు లోడ్ అవ్వలేదు';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Dartotsu మీద తయారైన ప్రాజెక్టులు';

  @override
  String get forksEmpty => 'ఫోర్క్‌లు ఏవీ దొరకలేదు';

  @override
  String get sectionColors => 'రంగులు';

  @override
  String get sectionDisplay => 'డిస్‌ప్లే';

  @override
  String get sectionStyle => 'స్టైల్';

  @override
  String get sectionCommunity => 'కమ్యూనిటీ';

  @override
  String get sectionAppInfo => 'యాప్ ఇన్ఫో';

  @override
  String get sectionRequests => 'రిక్వెస్ట్‌లు';

  @override
  String get sectionDnsProxy => 'DNS & ప్రాక్సీ';

  @override
  String get onboardingBack => 'వెనక్కి';

  @override
  String get onboardingNext => 'తర్వాత';

  @override
  String get onboardingSkip => 'స్కిప్';

  @override
  String get onboardingPaletteTitle => 'నీ స్టైల్‌లో మార్చుకో';

  @override
  String get onboardingPaletteBody =>
      'ఒక ప్యాలెట్ ఎంచుకో. కార్డుల నుండి ప్లేయర్ వరకు ప్రతి యాక్సెంట్ దాన్నే ఫాలో అవుతుంది.';

  @override
  String get themeModeAuto => 'ఆటో';

  @override
  String get themeModeLight => 'లైట్';

  @override
  String get themeModeDark => 'డార్క్';

  @override
  String get onboardingSyncTitle => 'నీ లైబ్రరీని సింక్ చెయ్యి';

  @override
  String get onboardingSyncBody =>
      'నీ లిస్ట్‌లు, ప్రోగ్రెస్, స్కోర్లు తెచ్చుకోవడానికి AniListతో సైన్ ఇన్ అవ్వు. లేదా స్కిప్ చేసి గెస్ట్‌గా బ్రౌజ్ చెయ్యి.';

  @override
  String get onboardingOpenLinks =>
      'AniList, రిపో లింకులు Dartotsuలో ఓపెన్ చెయ్యి';

  @override
  String get onboardingPermsTitle => 'పర్మిషన్లు';

  @override
  String get onboardingPermsBody =>
      'డౌన్‌లోడ్లు, అప్‌డేట్లు, అలర్ట్‌లు ఆటంకం లేకుండా పనిచేయాలంటే ఇవి ఇప్పుడే అనుమతించు. తర్వాత సిస్టమ్ సెట్టింగ్స్‌లో మార్చుకోవచ్చు.';

  @override
  String get permNotifications => 'నోటిఫికేషన్లు';

  @override
  String get permNotificationsDesc =>
      'డౌన్‌లోడ్ ప్రోగ్రెస్, కొత్త ఎపిసోడ్లు, రిప్లైలు';

  @override
  String get permStorage => 'అన్ని ఫైల్స్ యాక్సెస్';

  @override
  String get permStorageDesc =>
      'డౌన్‌లోడ్లను పబ్లిక్ Dartotsu ఫోల్డర్‌లో సేవ్ చెయ్యి';

  @override
  String get permInstall => 'అప్‌డేట్లు ఇన్‌స్టాల్ చెయ్యి';

  @override
  String get permInstallDesc =>
      'Dartotsu తన యాప్ అప్‌డేట్లను తానే ఇన్‌స్టాల్ చేసుకోనివ్వు';

  @override
  String get permBattery => 'అన్‌రిస్ట్రిక్టెడ్ బ్యాటరీ';

  @override
  String get permBatteryDesc =>
      'పెద్ద డౌన్‌లోడ్లు బ్యాక్‌గ్రౌండ్‌లో నడుస్తూ ఉండేలా చెయ్యి';

  @override
  String get permGrant => 'అనుమతించు';

  @override
  String get linkOpenInApp => 'లింకులను Dartotsuలో ఓపెన్ చెయ్యి';

  @override
  String get linkOpenInAppDesc =>
      'AniList, రిపో లింకులు యాప్‌ని ఓపెన్ చేయనివ్వు';

  @override
  String get reviewsTitle => 'రివ్యూలు';

  @override
  String get reviewsEmpty => 'ఇంకా రివ్యూలు లేవు';

  @override
  String get reviewsFailed => 'రివ్యూలు లోడ్ అవ్వలేదు';

  @override
  String get reviewHelpfulQuestion => 'ఈ రివ్యూ ఉపయోగపడిందా?';

  @override
  String get reviewVoteFailed => 'నీ ఓటు సేవ్ అవ్వలేదు';

  @override
  String reviewHelpful(int n, int total) {
    return '$total మందిలో $n మందికి ఇది ఉపయోగపడింది';
  }

  @override
  String get calendarTitle => 'ఎయిరింగ్ షెడ్యూల్';

  @override
  String get calendarToday => 'ఈరోజు';

  @override
  String get calendarEmpty => 'ఈ రోజు ఏమీ ఎయిర్ అవ్వదు';

  @override
  String get calendarFailed => 'షెడ్యూల్ లోడ్ అవ్వలేదు';

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
    return 'ఎపిసోడ్ $n';
  }

  @override
  String get shareAnalytics => 'అనామక వాడుక డేటా షేర్ చెయ్యి';

  @override
  String get shareAnalyticsDesc =>
      'అనామక యూజర్ కౌంట్లు, క్రాష్ రిపోర్టులు. అకౌంట్ లేదా పర్సనల్ డేటా ఉండదు';

  @override
  String get linkOpenAnilist => 'AniList లింకులను Dartotsuలో ఓపెన్ చెయ్యి';

  @override
  String get linkOpenAnilistDesc =>
      'anilist.co లింకులు యాప్‌లో తెరుచుకోవడానికి లింక్ హ్యాండ్లింగ్ ఆన్ చెయ్యి';

  @override
  String get linkSettingsFailed => 'సిస్టమ్ సెట్టింగ్స్ ఓపెన్ చేయలేకపోయాం';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'నువ్వు ఏం చేస్తున్నావో నీ Discord ప్రొఫైల్‌లో చూపించు. నీ Discord టోకెన్ కావాలి.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'నువ్వు ఏం చేస్తున్నావో నీ Discord ప్రొఫైల్‌లో చూపించు. Discord డెస్క్‌టాప్ యాప్ రన్ అవుతూ ఉండాలి.';

  @override
  String get discordBrowsing => 'బ్రౌజింగ్ యాక్టివిటీ చూపించు';

  @override
  String get discordBrowsingDesc =>
      'నువ్వు చూసే లేదా చదివేది మాత్రమే కాకుండా, నువ్వు చూస్తున్న ట్యాబ్, పేజీ, ప్రొఫైల్ కూడా చూపించు.';

  @override
  String get discordLookHeader => 'ప్రెజెన్స్ లుక్';

  @override
  String get discordActivityType => 'యాక్టివిటీ టైప్';

  @override
  String get discordActivityTypeDesc =>
      'Discord దాన్ని ఎలా రాస్తుందో: \"Watching …\" లేదా \"Playing …\". ఆటో అంటే అనిమేకి Watching, మిగతా అన్నిటికీ Playing వాడుతుంది.';

  @override
  String get discordWatching => 'చూస్తున్నాను';

  @override
  String get discordPlaying => 'ఆడుతున్నాను';

  @override
  String get discordCovers => 'కవర్లు చూపించు';

  @override
  String get discordCoversDesc => 'కార్డ్ మీద కవర్ ఆర్ట్, Dartotsu ఐకాన్.';

  @override
  String get discordTimer => 'టైమర్ చూపించు';

  @override
  String get discordTimerDesc => 'టైటిల్ కింద గడిచిన లేదా మిగిలిన టైమ్.';

  @override
  String get discordButtons => 'బటన్లు చూపించు';

  @override
  String get discordButtonsDesc =>
      '\"అనిమే / మాంగా చూడు\", \"Dartotsu ఓపెన్ చెయ్యి\" బటన్లు.';

  @override
  String get discordHideTitles => 'టైటిల్స్ దాచు';

  @override
  String get discordHideTitlesDesc =>
      'అనిమే, మాంగా పేర్లను (వాటి కవర్, లింక్‌తో సహా) \"Something private\"తో మార్చు.';

  @override
  String get discordConnectionHeader => 'కనెక్షన్';

  @override
  String get listSearchHint => 'ఈ లిస్ట్‌లో వెతుకు';

  @override
  String get listSort => 'సార్ట్';

  @override
  String get listFilter => 'ఫిల్టర్';

  @override
  String get listRandom => 'రాండమ్ టైటిల్';

  @override
  String get listReverse => 'రివర్స్ ఆర్డర్';

  @override
  String get listSortDefault => 'లిస్ట్ ఆర్డర్';

  @override
  String get listSortScore => 'నీ స్కోర్';

  @override
  String get listSortTitle => 'టైటిల్';

  @override
  String get listSortUpdated => 'లాస్ట్ అప్‌డేటెడ్';

  @override
  String get listSortProgress => 'ప్రోగ్రెస్';

  @override
  String get listSortReleased => 'రిలీజ్ డేట్';

  @override
  String get listSortAverage => 'యావరేజ్ స్కోర్';

  @override
  String get listFilterFormat => 'ఫార్మాట్';

  @override
  String get listFilterStatus => 'స్టేటస్';

  @override
  String get listFilterGenres => 'జానర్లు';

  @override
  String get listFilterClear => 'ఫిల్టర్లు క్లియర్ చెయ్యి';

  @override
  String get listNoMatches => 'ఈ లిస్ట్‌లో ఏదీ మ్యాచ్ అవ్వలేదు';

  @override
  String get discordLogin => 'Discordకి లాగిన్ అవ్వు';

  @override
  String get discordToken => 'Discord టోకెన్';

  @override
  String get discordTokenSaved =>
      'సేవ్ అయింది. మార్చడానికి ట్యాప్ చెయ్యి, తీసేయడానికి లాంగ్ ప్రెస్ చెయ్యి.';

  @override
  String get discordTokenNotSet =>
      'సెట్ చేయలేదు. యాడ్ చేయడానికి ట్యాప్ చెయ్యి.';

  @override
  String get discordTokenSavedSnack => 'Discord టోకెన్ సేవ్ అయింది';

  @override
  String get discordTokenRemovedSnack => 'Discord టోకెన్ తీసేశాం';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn => 'ఆన్ · లుక్ మార్చడానికి ట్యాప్ చెయ్యి';

  @override
  String get discordRichPresenceRowOff =>
      'నువ్వు ఏం చేస్తున్నావో నీ Discord ప్రొఫైల్‌లో చూపించు';

  @override
  String get loginCancelled => 'లాగిన్ క్యాన్సిల్ అయింది';

  @override
  String get invalidToken => 'చెల్లని టోకెన్';

  @override
  String loginFailed(String error) {
    return 'లాగిన్ ఫెయిలైంది: $error';
  }

  @override
  String get malLoginFailed => 'MyAnimeList లాగిన్ ఫెయిలైంది';

  @override
  String get kitsuLoginFailed =>
      'Kitsu లాగిన్ ఫెయిలైంది. నీ ఈమెయిల్, పాస్‌వర్డ్ చెక్ చెయ్యి.';

  @override
  String get kitsuLoginTitle => 'Kitsuకి సైన్ ఇన్ అవ్వు';

  @override
  String get emailOrUsername => 'ఈమెయిల్ లేదా యూజర్‌నేమ్';

  @override
  String get password => 'పాస్‌వర్డ్';

  @override
  String get kitsuProfile => 'Kitsu ప్రొఫైల్';

  @override
  String get mangaBakaLoginFailed => 'MangaBaka లాగిన్ ఫెయిలైంది';

  @override
  String get mangaBakaProfile => 'MangaBaka ప్రొఫైల్';

  @override
  String get refreshFromMangaBaka => 'MangaBaka నుండి రిఫ్రెష్ చెయ్యి';

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
  String get artistsLabel => 'ఆర్టిస్టులు';

  @override
  String get authorsLabel => 'రచయితలు';

  @override
  String get publishersLabel => 'పబ్లిషర్లు';

  @override
  String get licensedLabel => 'లైసెన్స్డ్';

  @override
  String get contentRatingLabel => 'కంటెంట్ రేటింగ్';

  @override
  String get yesLabel => 'అవును';

  @override
  String get noLabel => 'కాదు';

  @override
  String get ratingSteps => 'రేటింగ్ స్టెప్స్';

  @override
  String get hideNsfw => 'NSFW దాచు';

  @override
  String get hideNsfwDesc =>
      'అడల్ట్ టైటిల్స్‌ని ఫీడ్‌లు, సెర్చ్ నుండి తీసేయ్, నీ సొంత అడల్ట్ ఎంట్రీలను హిడెన్ మీడియా కింద చూపించు.';

  @override
  String get kitsuAccountOptions => 'Kitsu అకౌంట్ ఆప్షన్లు';

  @override
  String get mangaBakaAccountOptions => 'MangaBaka అకౌంట్ ఆప్షన్లు';

  @override
  String get couldNotUpdateKitsuSettings =>
      'నీ Kitsu సెట్టింగ్స్ అప్‌డేట్ చేయలేకపోయాం';

  @override
  String get titleCanonical => 'కానానికల్';

  @override
  String get titleRomanized => 'రోమనైజ్డ్';

  @override
  String get titleLocalized => 'లోకలైజ్డ్';

  @override
  String get ratingSystem => 'రేటింగ్ సిస్టమ్';

  @override
  String get ratingSimple => 'సింపుల్ (3 ఫేసులు)';

  @override
  String get ratingRegular => 'రెగ్యులర్ (5 స్టార్లు)';

  @override
  String get ratingAdvanced => 'అడ్వాన్స్డ్ (10 పాయింట్లు)';

  @override
  String get contentFilter => 'కంటెంట్ ఫిల్టర్';

  @override
  String get contentSfw => 'సేఫ్ ఫర్ వర్క్ మాత్రమే';

  @override
  String get contentSometimes => 'సెర్చ్‌లలో మెచ్యూర్ కంటెంట్';

  @override
  String get contentEverywhere => 'ఎక్కడైనా మెచ్యూర్ కంటెంట్';

  @override
  String get shareToGlobal => 'గ్లోబల్ ఫీడ్‌కి షేర్ చెయ్యి';

  @override
  String get shareToGlobalDesc =>
      'నీ యాక్టివిటీ Kitsu గ్లోబల్ ఫీడ్‌లో కనిపించనివ్వు.';

  @override
  String get memberSince => 'మెంబర్ అయిన తేదీ';

  @override
  String get location => 'లొకేషన్';

  @override
  String get accountType => 'అకౌంట్ టైప్';

  @override
  String get accountSupporter => 'సపోర్టర్';

  @override
  String get accountFree => 'ఫ్రీ';

  @override
  String get accountDetails => 'అకౌంట్ వివరాలు';

  @override
  String get refreshFromKitsu => 'Kitsu నుండి రిఫ్రెష్ చెయ్యి';

  @override
  String get simklReadOnly => 'Simkl రీడ్-ఓన్లీ యాక్సెస్ ఇచ్చింది';

  @override
  String get incognitoEditsBlocked =>
      'ఇన్‌కాగ్నిటో: లిస్ట్ ఎడిట్లు బ్లాక్ అయ్యాయి';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved =>
      'ఇన్‌కాగ్నిటో: ప్రోగ్రెస్ సేవ్ అవ్వలేదు';

  @override
  String progressSet(int progress) {
    return 'ప్రోగ్రెస్ $progressకి సెట్ అయింది';
  }

  @override
  String removedFromList(String title) {
    return 'నీ లిస్ట్ నుండి $title తీసేశాం';
  }

  @override
  String get following => 'ఫాలో అవుతున్నవి';

  @override
  String get homeSections => 'హోమ్ సెక్షన్లు';

  @override
  String get homeSectionsHint =>
      'ఆర్డర్ మార్చడానికి డ్రాగ్ చెయ్యి. దాచిన సెక్షన్లు అసలు ఫెచ్ అవ్వవు.';

  @override
  String get customListDeleteFailed => 'కస్టమ్ లిస్ట్ డిలీట్ అవ్వలేదు';

  @override
  String get customListsSaveFailed => 'కస్టమ్ లిస్ట్‌లు సేవ్ అవ్వలేదు';

  @override
  String get customListsSaved => 'కస్టమ్ లిస్ట్‌లు సేవ్ అయ్యాయి';

  @override
  String get listName => 'లిస్ట్ పేరు';

  @override
  String get addList => 'లిస్ట్ యాడ్ చెయ్యి';

  @override
  String voiceActorsIn(String name) {
    return 'వాయిస్ యాక్టర్లు · $name';
  }

  @override
  String get animeAppearances => 'అనిమే అప్పియరెన్స్‌లు';

  @override
  String get mangaAppearances => 'మాంగా అప్పియరెన్స్‌లు';

  @override
  String get voicedCharacters => 'వాయిస్ ఇచ్చిన క్యారెక్టర్లు';

  @override
  String get animeCredits => 'అనిమే క్రెడిట్స్';

  @override
  String get mangaCredits => 'మాంగా క్రెడిట్స్';

  @override
  String get mainProductions => 'మెయిన్ ప్రొడక్షన్లు';

  @override
  String get otherWorks => 'ఇతర వర్క్స్';

  @override
  String get prequelSequel => 'ప్రీక్వెల్ & సీక్వెల్';

  @override
  String get previousSeason => 'గత సీజన్';

  @override
  String get thisSeason => 'ఈ సీజన్';

  @override
  String get nextSeason => 'వచ్చే సీజన్';

  @override
  String get voiceRoles => 'వాయిస్ రోల్స్';

  @override
  String get staffPositions => 'స్టాఫ్ పొజిషన్లు';

  @override
  String get mangaWorks => 'మాంగా వర్క్స్';

  @override
  String get malProfile => 'MyAnimeList ప్రొఫైల్';

  @override
  String get refreshFromMal => 'MyAnimeList నుండి రిఫ్రెష్ చెయ్యి';

  @override
  String get repullProfileCounts => 'నీ ప్రొఫైల్, కౌంట్లు మళ్ళీ తెచ్చుకో';

  @override
  String get refreshed => 'రిఫ్రెష్ అయింది';

  @override
  String get simklProfile => 'Simkl ప్రొఫైల్';

  @override
  String get refreshFromSimkl => 'Simkl నుండి రిఫ్రెష్ చెయ్యి';

  @override
  String get repullProfileLibrary => 'నీ ప్రొఫైల్, లైబ్రరీ మళ్ళీ తెచ్చుకో';

  @override
  String get simklSignInToSearch => 'వెతకడానికి Simklకి సైన్ ఇన్ అవ్వు';

  @override
  String get dropRate => 'డ్రాప్ రేట్';

  @override
  String get simklAttribution =>
      'డేటా, ఆర్ట్‌వర్క్ Simkl అందించింది. Simklలో చూడు';

  @override
  String get onHold => 'ఆన్ హోల్డ్';

  @override
  String get scoredBy => 'స్కోర్ ఇచ్చినవాళ్ళు';

  @override
  String get planToWatch => 'చూడాలనుకుంటున్నవి';

  @override
  String get planToRead => 'చదవాలనుకుంటున్నవి';

  @override
  String get timesRewatched => 'మళ్ళీ చూసిన సార్లు';

  @override
  String get timesReread => 'మళ్ళీ చదివిన సార్లు';

  @override
  String get comments => 'కామెంట్లు';

  @override
  String get moviesAndSeries => 'సినిమాలు & సిరీస్‌లు';

  @override
  String get trackingOnly => 'ట్రాకింగ్ మాత్రమే';

  @override
  String get signedIn => 'సైన్ ఇన్ అయ్యావు';

  @override
  String get searchLanguage => 'సెర్చ్ భాష';

  @override
  String get savedToList => 'నీ లిస్ట్‌లో సేవ్ అయింది';

  @override
  String get removedFromYourList => 'నీ లిస్ట్ నుండి తీసేశాం';

  @override
  String get retry => 'మళ్ళీ ట్రై చెయ్యి';

  @override
  String get synopsis => 'సినాప్సిస్';

  @override
  String get details => 'వివరాలు';

  @override
  String get addToList => 'లిస్ట్‌కి యాడ్ చెయ్యి';

  @override
  String get trailer => 'ట్రైలర్';

  @override
  String get titleCopied => 'టైటిల్ కాపీ అయింది';

  @override
  String get linkCopied => 'లింక్ కాపీ అయింది';

  @override
  String get watchTrailer => 'ట్రైలర్ చూడు';

  @override
  String get copyTitle => 'టైటిల్ కాపీ చెయ్యి';

  @override
  String get copyLink => 'లింక్ కాపీ చెయ్యి';

  @override
  String get openInBrowser => 'బ్రౌజర్‌లో ఓపెన్ చెయ్యి';

  @override
  String viewOnSource(String source) {
    return '$sourceలో చూడు';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'ఎపిసోడ్ $ep $timeలో వస్తుంది';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'తర్వాతి ఎపిసోడ్ $timeలో';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'చాప్టర్ $chapter సుమారు $timeలో వస్తుంది';
  }

  @override
  String get logPathCopied => 'లాగ్ ఫైల్ పాత్ క్లిప్‌బోర్డ్‌కి కాపీ అయింది';

  @override
  String get animeSource => 'అనిమే సోర్స్';

  @override
  String get mangaSource => 'మాంగా సోర్స్';

  @override
  String get popular => 'పాపులర్';

  @override
  String get latest => 'లేటెస్ట్';

  @override
  String get saved => 'సేవ్ చేసినవి';

  @override
  String get nothingMatched => 'ఏదీ మ్యాచ్ అవ్వలేదు';

  @override
  String get nothingSavedFromSource => 'ఈ సోర్స్ నుండి ఇంకా ఏమీ సేవ్ చేయలేదు';

  @override
  String get sourceReturnedNothing => 'ఈ సోర్స్ ఏమీ ఇవ్వలేదు';

  @override
  String get checkConnectionOrSource =>
      'నీ కనెక్షన్ చెక్ చెయ్యి లేదా వేరే సోర్స్ ట్రై చెయ్యి.';

  @override
  String get tryDifferentSearch => 'వేరే సెర్చ్ టర్మ్ ట్రై చెయ్యి.';

  @override
  String get savedTitlesAppearHere =>
      'నువ్వు నీ లిస్ట్‌కి యాడ్ చేసిన టైటిల్స్ ఇక్కడ కనిపిస్తాయి.';

  @override
  String get tryOtherFeed => 'బదులుగా వేరే ఫీడ్ లేదా సెర్చ్ ట్రై చెయ్యి.';

  @override
  String searchSource(String source) {
    return '$sourceలో వెతుకు';
  }

  @override
  String get animeExtensions => 'అనిమే ఎక్స్టెన్షన్లు';

  @override
  String get mangaExtensions => 'మాంగా ఎక్స్టెన్షన్లు';

  @override
  String get nothingHereYet => 'ఇక్కడ ఇంకా ఏమీ లేదు';

  @override
  String get savedOnDeviceUntilLogin =>
      'నువ్వు తీసేసే వరకు కింద ఉన్నవన్నీ ఈ డివైస్‌లోనే సేవ్ అయి ఉంటాయి.';

  @override
  String get yourProfile => 'నీ ప్రొఫైల్';

  @override
  String get activity => 'యాక్టివిటీ';

  @override
  String get extensions => 'ఎక్స్టెన్షన్లు';

  @override
  String get logOut => 'లాగ్ అవుట్';

  @override
  String get logIn => 'లాగిన్';

  @override
  String get logOutConfirm => 'నిజంగా లాగ్ అవుట్ అవ్వాలా?';

  @override
  String get incognitoMode => 'ఇన్‌కాగ్నిటో మోడ్';

  @override
  String get alsoBlockListEdits => 'లిస్ట్ ఎడిట్లు కూడా బ్లాక్ చెయ్యి';

  @override
  String get offlineMode => 'ఆఫ్‌లైన్ మోడ్';

  @override
  String get switchService => 'సర్వీస్ మార్చు';

  @override
  String logOutOf(String name) {
    return '$name నుండి లాగ్ అవుట్ అవ్వు';
  }

  @override
  String get loggedIn => 'లాగిన్ అయ్యావు';

  @override
  String get notifications => 'నోటిఫికేషన్లు';

  @override
  String get nothingNew => 'కొత్తవి ఏమీ లేవు';

  @override
  String get thisWeek => 'ఈ వారం';

  @override
  String get listOnly => 'లిస్ట్ మాత్రమే';

  @override
  String get filter => 'ఫిల్టర్';

  @override
  String get searchResults => 'సెర్చ్ రిజల్ట్స్';

  @override
  String get recentSearches => 'ఇటీవలి సెర్చ్‌లు';

  @override
  String get searchOrSetFilter => 'వెతుకు లేదా ఫిల్టర్ సెట్ చెయ్యి';

  @override
  String get filters => 'ఫిల్టర్లు';

  @override
  String get showLess => 'తక్కువ చూపించు';

  @override
  String get showAll => 'అన్నీ చూపించు';

  @override
  String get apply => 'అప్లై';

  @override
  String get preview => 'ప్రివ్యూ';

  @override
  String get preset => 'ప్రీసెట్';

  @override
  String get cardNormal => 'నార్మల్';

  @override
  String get cardOnCard => 'కార్డ్ మీద';

  @override
  String get cardInCard => 'కార్డ్ లోపల';

  @override
  String get size => 'సైజ్';

  @override
  String get cardWidth => 'కార్డ్ వెడల్పు';

  @override
  String get compact => 'కాంపాక్ట్';

  @override
  String get coverAndTitleOnly => 'కవర్, టైటిల్ మాత్రమే';

  @override
  String get titleLines => 'టైటిల్ లైన్లు';

  @override
  String get shape => 'షేప్';

  @override
  String get posterShape => 'పోస్టర్ షేప్';

  @override
  String get cornerRadius => 'కార్నర్ రేడియస్';

  @override
  String get off => 'ఆఫ్';

  @override
  String get topLeft => 'పైన ఎడమ';

  @override
  String get topRight => 'పైన కుడి';

  @override
  String get bottomLeft => 'కింద ఎడమ';

  @override
  String get bottomRight => 'కింద కుడి';

  @override
  String get overlays => 'ఓవర్‌లేలు';

  @override
  String get progressCount => 'ప్రోగ్రెస్ / కౌంట్';

  @override
  String get pill => 'పిల్';

  @override
  String get bar => 'బార్';

  @override
  String get outside => 'బయట';

  @override
  String get scoreBadge => 'స్కోర్ బ్యాడ్జ్';

  @override
  String get airingDot => 'ఎయిరింగ్ డాట్';

  @override
  String get updateAvailable => 'అప్‌డేట్ అందుబాటులో ఉంది';

  @override
  String get notInstalled => 'ఇన్‌స్టాల్ చేయలేదు';

  @override
  String get done => 'అయిపోయింది';

  @override
  String get searchOrEnterUrl => 'వెతుకు లేదా URL ఎంటర్ చెయ్యి';

  @override
  String get refresh => 'రిఫ్రెష్';

  @override
  String get share => 'షేర్';

  @override
  String get characters => 'క్యారెక్టర్లు';

  @override
  String get staff => 'స్టాఫ్';

  @override
  String get readMore => 'ఇంకా చదువు';

  @override
  String get couldNotLoadList => 'లిస్ట్ లోడ్ అవ్వలేదు';

  @override
  String get logInToFavourite => 'ఫేవరెట్లు యాడ్ చేయడానికి లాగిన్ అవ్వు';

  @override
  String get alsoKnownAs => 'ఇతర పేర్లు';

  @override
  String get hideSpoilerNames => 'స్పాయిలర్ పేర్లు దాచు';

  @override
  String get showSpoilerNames => 'స్పాయిలర్ పేర్లు చూపించు';

  @override
  String get favourited => 'ఫేవరెట్ చేశావు';

  @override
  String get favourite => 'ఫేవరెట్';

  @override
  String get couldNotOpenTitle => 'ఈ టైటిల్ ఓపెన్ అవ్వలేదు';

  @override
  String get nobodyHereYet => 'ఇక్కడ ఇంకా ఎవరూ లేరు';

  @override
  String get noMatches => 'మ్యాచ్‌లు లేవు';

  @override
  String get gridView => 'గ్రిడ్ వ్యూ';

  @override
  String get fullWidth => 'ఫుల్ విడ్త్';

  @override
  String get userNotFound => 'యూజర్ దొరకలేదు';

  @override
  String get couldNotUpdateFollow => 'ఫాలో అప్‌డేట్ అవ్వలేదు';

  @override
  String followedUser(String name) {
    return '$nameని ఫాలో అయ్యావు';
  }

  @override
  String unfollowedUser(String name) {
    return '$nameని అన్‌ఫాలో చేశావు';
  }

  @override
  String get messages => 'మెసేజ్‌లు';

  @override
  String get logInToSeeMessages => 'నీ మెసేజ్‌లు చూడటానికి లాగిన్ అవ్వు';

  @override
  String get editActivity => 'యాక్టివిటీ ఎడిట్ చెయ్యి';

  @override
  String get newActivity => 'కొత్త యాక్టివిటీ';

  @override
  String get editMessage => 'మెసేజ్ ఎడిట్ చెయ్యి';

  @override
  String get writeMessage => 'మెసేజ్ రాయి';

  @override
  String get editReply => 'రిప్లై ఎడిట్ చెయ్యి';

  @override
  String get posted => 'పోస్ట్ అయింది';

  @override
  String get couldNotPost => 'పోస్ట్ చేయలేకపోయాం';

  @override
  String get nothingToPreview => 'ప్రివ్యూ చేయడానికి ఏమీ లేదు';

  @override
  String get writeSomethingHint =>
      'ఏదైనా రాయి… ఇక్కడ AniList మార్క్‌డౌన్ పనిచేస్తుంది';

  @override
  String get privateMessage => 'ప్రైవేట్ మెసేజ్';

  @override
  String get post => 'పోస్ట్';

  @override
  String get nothingHere => 'ఇక్కడ ఏమీ లేదు';

  @override
  String get noAnimeProgress => 'అనిమే ప్రోగ్రెస్ లేదు';

  @override
  String get noMangaProgress => 'మాంగా ప్రోగ్రెస్ లేదు';

  @override
  String get noMessages => 'మెసేజ్‌లు లేవు';

  @override
  String get writeMessageHint => 'మెసేజ్ రాయి…';

  @override
  String get shareSomethingHint => 'ఏదైనా షేర్ చెయ్యి…';

  @override
  String get all => 'అన్నీ';

  @override
  String get anime => 'అనిమే';

  @override
  String get manga => 'మాంగా';

  @override
  String get count => 'కౌంట్';

  @override
  String get hoursWatched => 'చూసిన గంటలు';

  @override
  String get chaptersRead => 'చదివిన చాప్టర్లు';

  @override
  String get meanScore => 'మీన్ స్కోర్';

  @override
  String get noStatsYet => 'ఇంకా స్టాట్స్ లేవు';

  @override
  String get totalEntries => 'మొత్తం ఎంట్రీలు';

  @override
  String get episodesWatched => 'చూసిన ఎపిసోడ్లు';

  @override
  String get daysWatched => 'చూసిన రోజులు';

  @override
  String get volumesRead => 'చదివిన వాల్యూములు';

  @override
  String get standardDeviation => 'స్టాండర్డ్ డీవియేషన్';

  @override
  String get showMore => 'ఇంకా చూపించు';

  @override
  String get followsYou => 'నిన్ను ఫాలో అవుతున్నారు';

  @override
  String get nobodyYet => 'ఇంకా ఎవరూ లేరు';

  @override
  String get logInToLike => 'లైక్ చేయడానికి లాగిన్ అవ్వు';

  @override
  String get failedToLikeActivity => 'యాక్టివిటీ లైక్ అవ్వలేదు';

  @override
  String get deleteActivityConfirm => 'యాక్టివిటీ డిలీట్ చేయాలా?';

  @override
  String get deletedActivity => 'యాక్టివిటీ డిలీట్ అయింది';

  @override
  String get failedToDeleteActivity => 'యాక్టివిటీ డిలీట్ అవ్వలేదు';

  @override
  String get subscribed => 'సబ్‌స్క్రైబ్ అయ్యావు';

  @override
  String get unsubscribed => 'అన్‌సబ్‌స్క్రైబ్ అయ్యావు';

  @override
  String get failedToUpdateSubscription => 'సబ్‌స్క్రిప్షన్ అప్‌డేట్ అవ్వలేదు';

  @override
  String get edit => 'ఎడిట్';

  @override
  String get delete => 'డిలీట్';

  @override
  String get likedBy => 'లైక్ చేసినవాళ్ళు';

  @override
  String get follow => 'ఫాలో';

  @override
  String get nameCopied => 'పేరు కాపీ అయింది';

  @override
  String get followsEachOther => 'ఒకరినొకరు ఫాలో అవుతున్నారు';

  @override
  String get unfollow => 'అన్‌ఫాలో';

  @override
  String get userIdCopied => 'యూజర్ ID కాపీ అయింది';

  @override
  String get shareProfile => 'ప్రొఫైల్ షేర్ చెయ్యి';

  @override
  String get copyUserId => 'యూజర్ ID కాపీ చెయ్యి';

  @override
  String get failedToDelete => 'డిలీట్ అవ్వలేదు';

  @override
  String get failedToLike => 'లైక్ అవ్వలేదు';

  @override
  String get replies => 'రిప్లైలు';

  @override
  String get reply => 'రిప్లై';

  @override
  String get noRepliesYet => 'ఇంకా రిప్లైలు లేవు';

  @override
  String get favouriteAnime => 'ఫేవరెట్ అనిమే';

  @override
  String get favouriteManga => 'ఫేవరెట్ మాంగా';

  @override
  String get favouriteCharacters => 'ఫేవరెట్ క్యారెక్టర్లు';

  @override
  String get favouriteStaff => 'ఫేవరెట్ స్టాఫ్';

  @override
  String get favouriteStudios => 'ఫేవరెట్ స్టూడియోలు';

  @override
  String get noFavouritesYet => 'ఇంకా ఫేవరెట్లు లేవు';

  @override
  String get yourStory => 'నీ స్టోరీ';

  @override
  String get copiedToClipboard => 'క్లిప్‌బోర్డ్‌కి కాపీ అయింది';

  @override
  String get justNow => 'ఇప్పుడే';

  @override
  String get openImage => 'ఇమేజ్ ఓపెన్ చెయ్యి';

  @override
  String get hideSpoiler => 'స్పాయిలర్ దాచు';

  @override
  String get showSpoiler => 'స్పాయిలర్ చూపించు';

  @override
  String get status => 'స్టేటస్';

  @override
  String get score => 'స్కోర్';

  @override
  String get started => 'మొదలుపెట్టింది';

  @override
  String get completed => 'పూర్తయింది';

  @override
  String get private => 'ప్రైవేట్';

  @override
  String get hideFromStatusLists => 'స్టేటస్ లిస్ట్‌ల నుండి దాచు';

  @override
  String get totalRepeats => 'మొత్తం రిపీట్లు';

  @override
  String get other => 'ఇతర';

  @override
  String get customLists => 'కస్టమ్ లిస్ట్‌లు';

  @override
  String get activeDays => 'యాక్టివ్ రోజులు';

  @override
  String get longestStreak => 'లాంగెస్ట్ స్ట్రీక్';

  @override
  String get currentStreak => 'ప్రస్తుత స్ట్రీక్';

  @override
  String get tapOrHoverDay => 'ఒక రోజు మీద ట్యాప్ చెయ్యి లేదా హోవర్ చెయ్యి';

  @override
  String get less => 'తక్కువ';

  @override
  String get more => 'ఎక్కువ';

  @override
  String epIn(int ep, String time) {
    return 'ఎపి $ep $timeలో';
  }

  @override
  String get sectionLoading => 'లోడ్ అవుతోంది';

  @override
  String get querySize => 'క్వెరీ సైజ్';

  @override
  String get querySizeDesc =>
      'ఒక పెద్ద క్వెరీ ప్రతి వరుసను (ప్రొఫైల్ మొత్తాన్ని) ఒకే రిక్వెస్ట్‌లో లోడ్ చేస్తుంది. స్ప్లిట్ క్వెరీలు ప్రతి వరుసకు లేదా ప్రొఫైల్ భాగానికి చిన్న రిక్వెస్ట్ పంపుతాయి: ప్రతిదీ వేగంగా వస్తుంది, భాగాలు వచ్చినకొద్దీ కనిపిస్తాయి.';

  @override
  String get oneBig => 'ఒక పెద్దది';

  @override
  String get split => 'స్ప్లిట్';

  @override
  String get sectionSocial => 'సోషల్';

  @override
  String get systemNotifications => 'సిస్టమ్ నోటిఫికేషన్లు';

  @override
  String get feedLayout => 'ఫీడ్ లేఅవుట్';

  @override
  String sectionsShown(int shown, int total) {
    return '$totalలో $shown చూపిస్తున్నాం — ఎంచుకోవడానికి, ఆర్డర్ మార్చడానికి ట్యాప్ చెయ్యి';
  }

  @override
  String labelSections(String label) {
    return '$label సెక్షన్లు';
  }

  @override
  String get accountOptions => 'అకౌంట్ ఆప్షన్లు';

  @override
  String get anilistAccountOptions => 'AniList అకౌంట్ ఆప్షన్లు';

  @override
  String get sectionPrivacy => 'ప్రైవసీ';

  @override
  String get hidePrivateEntries => 'ప్రైవేట్ ఎంట్రీలు దాచు';

  @override
  String get hidePrivateEntriesDesc =>
      'AniListలో ప్రైవేట్‌గా మార్క్ చేసిన ఎంట్రీలను ఫీడ్ నుండి తీసేయ్';

  @override
  String get anilistExcludeList => 'మీ లిస్ట్‌ను మినహాయించు';

  @override
  String get anilistExcludeListDesc =>
      'మీ AniListలో ఇప్పటికే ఉన్న టైటిల్స్‌ని అనిమే, మాంగా పేజీల్లో చూపించదు';

  @override
  String get anilistProfile => 'AniList ప్రొఫైల్';

  @override
  String get refreshFromAnilist => 'AniList నుండి రిఫ్రెష్ చెయ్యి';

  @override
  String get couldNotUpdateAnilistSettings =>
      'AniList సెట్టింగ్స్ అప్‌డేట్ చేయలేకపోయాం';

  @override
  String get sectionNames => 'పేర్లు';

  @override
  String get titleLanguage => 'టైటిల్ భాష';

  @override
  String get titleLanguageDesc =>
      'టైటిల్స్ అన్నిచోట్లా ఎలా కనిపించాలో, ఉదా. Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'స్టాఫ్, క్యారెక్టర్ పేర్లు';

  @override
  String get sectionLists => 'లిస్ట్‌లు';

  @override
  String get scoreFormat => 'స్కోర్ ఫార్మాట్';

  @override
  String get sortListsBy => 'లిస్ట్‌లను ఇలా సార్ట్ చెయ్యి';

  @override
  String labelCustomLists(String label) {
    return '$label కస్టమ్ లిస్ట్‌లు';
  }

  @override
  String customListsCount(int count) {
    return '$count లిస్ట్‌లు — యాడ్ చేయడానికి లేదా తీసేయడానికి ట్యాప్ చెయ్యి';
  }

  @override
  String get mergeActivities => 'యాక్టివిటీలు మెర్జ్ చెయ్యి';

  @override
  String minutesCount(int count) {
    return '$count నిమిషాలు';
  }

  @override
  String get timezone => 'టైమ్‌జోన్';

  @override
  String get notSet => 'సెట్ చేయలేదు';

  @override
  String get airingNotifications => 'ఎయిరింగ్ నోటిఫికేషన్లు';

  @override
  String get airingNotificationsDesc =>
      'నువ్వు ఫాలో అవుతున్న షో ఎపిసోడ్ ఎయిర్ అయినప్పుడు నోటిఫికేషన్ రావాలి';

  @override
  String get displayAdultContent => 'అడల్ట్ కంటెంట్ చూపించు';

  @override
  String get displayAdultContentDesc =>
      'బ్రౌజ్, సెర్చ్, ఫీడ్‌లలో 18+ టైటిల్స్ కూడా చూపించు';

  @override
  String get restrictMessages => 'మెసేజ్‌లు ఫాలో అయ్యేవాళ్ళకే పరిమితం చెయ్యి';

  @override
  String get restrictMessagesDesc =>
      'నువ్వు ఫాలో అయ్యేవాళ్ళు మాత్రమే నీకు మెసేజ్ చేయగలరు';

  @override
  String get sectionServices => 'సర్వీసులు';

  @override
  String get novel => 'నవల';

  @override
  String labelService(String label) {
    return '$label సర్వీస్';
  }

  @override
  String nameSettings(String name) {
    return '$name సెట్టింగ్స్';
  }

  @override
  String extensionBridgeOptions(String name) {
    return '$name ఎక్స్టెన్షన్ బ్రిడ్జ్ నుండి ఆప్షన్లు';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name స్టార్ట్ అవ్వలేదు: $error';
  }

  @override
  String get importLists => 'లిస్ట్‌లు ఇంపోర్ట్ చెయ్యి';

  @override
  String get importListsDesc =>
      'Aniyomi, Mihon / Tachiyomi లేదా Kotatsu బ్యాకప్‌ల నుండి';

  @override
  String get exportLists => 'లిస్ట్‌లు ఎక్స్‌పోర్ట్ చెయ్యి';

  @override
  String get exportListsDesc => 'Aniyomi, Mihon లేదా Kotatsu బ్యాకప్‌కి';

  @override
  String get sectionBrowse => 'బ్రౌజ్';

  @override
  String get readingTab => 'రీడింగ్ ట్యాబ్';

  @override
  String get readingTabDesc => 'మూడో ట్యాబ్ ఏ ఎక్స్టెన్షన్లు చూపించాలి';

  @override
  String get firstTab => 'First tab';

  @override
  String get firstTabDesc =>
      'Which extensions the first tab shows. Pick manga here and novel on the reading tab to drop anime from the bar';

  @override
  String get novelExtensions => 'Novel Extensions';

  @override
  String get defaultFeed => 'డిఫాల్ట్ ఫీడ్';

  @override
  String get defaultFeedDesc => 'సోర్స్ ఏ లిస్ట్‌తో ఓపెన్ అవ్వాలి';

  @override
  String noServiceSupports(String type) {
    return 'ఏ సర్వీస్ $typeని సపోర్ట్ చేయట్లేదు';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · $installed సోర్స్‌లలో $loaded లోడ్ అవుతున్నాయి';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'ఇక్కడ $typeని సపోర్ట్ చేసే ఎక్స్టెన్షన్ సర్వీస్ లేదు.';
  }

  @override
  String get loadDataFrom => 'డేటా ఎక్కడ నుండి లోడ్ చేయాలి';

  @override
  String noInstalledSourcesYet(String type) {
    return 'ఇంకా ఇన్‌స్టాల్ చేసిన $type సోర్స్‌లు లేవు.';
  }

  @override
  String extensionNotInstalled(String name) {
    return '$name ఎక్స్టెన్షన్ ఇన్‌స్టాల్ చేయలేదు';
  }

  @override
  String get thisSource => 'ఈ సోర్స్';

  @override
  String failedToAddRepository(String error) {
    return 'రిపోజిటరీ యాడ్ అవ్వలేదు: $error';
  }

  @override
  String installedType(String type) {
    return 'ఇన్‌స్టాల్ చేసిన $type';
  }

  @override
  String availableType(String type) {
    return 'అందుబాటులో ఉన్న $type';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'ఇన్‌స్టాల్ చేసిన $type ఎక్స్టెన్షన్లు లేవు';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'అందుబాటులో $type ఎక్స్టెన్షన్లు లేవు';
  }

  @override
  String get nothingToShowYet => 'ఇంకా చూపించడానికి ఏమీ లేదు';

  @override
  String get addTitlesHint =>
      'నీ లిస్ట్‌కి కొన్ని టైటిల్స్ యాడ్ చెయ్యి, అవి ఇక్కడ కనిపిస్తాయి.';

  @override
  String get couldntLoad => 'లోడ్ అవ్వలేదు';

  @override
  String get progressStyleHint =>
      'పిల్, బార్ పోస్టర్ మీద ఓవర్‌లే అవుతాయి; బయట అదే కౌంట్‌ని సాదా టెక్స్ట్‌గా చూపిస్తుంది — ఏదో ఒకటి ఎంచుకో.';

  @override
  String get nixManagedUpdate =>
      'ఈ బిల్డ్‌ని Nix మేనేజ్ చేస్తుంది — ఇక్కడ అప్‌డేట్ చేయడానికి బదులు నీ flakeలో \"nix flake update\" రన్ చేసి మళ్ళీ బిల్డ్ చెయ్యి';

  @override
  String autoUpdateFailed(String error) {
    return 'ఆటోమేటిక్ అప్‌డేట్ ఫెయిలైంది ($error) — బదులుగా డౌన్‌లోడ్ పేజీ ఓపెన్ చేస్తున్నాం';
  }

  @override
  String get unknownPreference => 'తెలియని ప్రిఫరెన్స్';

  @override
  String unsupportedPreferenceType(String type) {
    return 'సపోర్ట్ లేని ప్రిఫరెన్స్ టైప్ $type';
  }

  @override
  String get notYetReleased => 'ఇంకా రిలీజ్ అవ్వలేదు';

  @override
  String get notStarted => 'ఇంకా మొదలవ్వలేదు';

  @override
  String get country => 'దేశం';

  @override
  String get sort => 'సార్ట్';

  @override
  String get chooseBackupDialog => 'Aniyomi, Mihon లేదా Kotatsu బ్యాకప్ ఎంచుకో';

  @override
  String get importListsHint =>
      'Aniyomi, Mihon / Tachiyomi లేదా Kotatsu నుండి లైబ్రరీని తెచ్చుకో. టైటిల్స్, కవర్లు, ప్రోగ్రెస్, కేటగిరీలు అలాగే ఉంటాయి.';

  @override
  String get chooseBackupFile => 'బ్యాకప్ ఫైల్ ఎంచుకో';

  @override
  String importAnimeCount(int count) {
    return '$count అనిమే ఇంపోర్ట్ చెయ్యి';
  }

  @override
  String importMangaCount(int count) {
    return '$count మాంగా ఇంపోర్ట్ చెయ్యి';
  }

  @override
  String get mergeWithExisting => 'ఉన్న లిస్ట్‌లతో మెర్జ్ చెయ్యి';

  @override
  String get mergeWithExistingDesc =>
      'నీ దగ్గర ఉన్నవి అలాగే ఉంచుతుంది; ఆఫ్ చేస్తే మ్యాచ్ అయిన టైటిల్స్ రీప్లేస్ అవుతాయి';

  @override
  String get chooseAnother => 'వేరేది ఎంచుకో';

  @override
  String get import => 'ఇంపోర్ట్';

  @override
  String animeCount(int count) {
    return '$count అనిమే';
  }

  @override
  String mangaCount(int count) {
    return '$count మాంగా';
  }

  @override
  String get chooseSaveLocation => 'బ్యాకప్ ఎక్కడ సేవ్ చేయాలో ఎంచుకో';

  @override
  String savedPath(String path) {
    return '$pathకి సేవ్ అయింది';
  }

  @override
  String exportFailed(String error) {
    return 'ఎక్స్‌పోర్ట్ ఫెయిలైంది: $error';
  }

  @override
  String get nothingInLocalLists => 'నీ లోకల్ లిస్ట్‌లలో ఇంకా ఏమీ లేదు.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'నీ లోకల్ లిస్ట్‌ల నుండి $anime అనిమే, $manga మాంగా ఎక్స్‌పోర్ట్ అవుతాయి. Kotatsu మాంగాని మాత్రమే సపోర్ట్ చేస్తుంది.';
  }

  @override
  String get saveToFolder => 'ఫోల్డర్‌కి సేవ్ చెయ్యి';

  @override
  String get formatAnimeManga => 'అనిమే & మాంగా · .tachibk';

  @override
  String get formatMangaTachibk => 'మాంగా మాత్రమే · .tachibk';

  @override
  String get formatMangaZip => 'మాంగా మాత్రమే · .zip';

  @override
  String get genres => 'జానర్లు';

  @override
  String get relations => 'రిలేషన్స్';

  @override
  String get recommendations => 'రికమండేషన్లు';

  @override
  String get openings => 'ఓపెనింగ్స్';

  @override
  String get endings => 'ఎండింగ్స్';

  @override
  String get background => 'బ్యాక్‌గ్రౌండ్';

  @override
  String get links => 'లింకులు';

  @override
  String get rank => 'ర్యాంక్';

  @override
  String get members => 'మెంబర్లు';

  @override
  String get favorites => 'ఫేవరెట్లు';

  @override
  String get episodes => 'ఎపిసోడ్లు';

  @override
  String get chapters => 'చాప్టర్లు';

  @override
  String get volumes => 'వాల్యూములు';

  @override
  String get format => 'ఫార్మాట్';

  @override
  String get source => 'సోర్స్';

  @override
  String get duration => 'డ్యూరేషన్';

  @override
  String minutesPerEpisode(int minutes) {
    return 'ఎపిసోడ్‌కి $minutes నిమి';
  }

  @override
  String get rating => 'రేటింగ్';

  @override
  String get studio => 'స్టూడియో';

  @override
  String get serialization => 'సీరియలైజేషన్';

  @override
  String get season => 'సీజన్';

  @override
  String get broadcast => 'బ్రాడ్‌కాస్ట్';

  @override
  String get aired => 'ఎయిర్ అయింది';

  @override
  String get published => 'పబ్లిష్ అయింది';

  @override
  String get popularity => 'పాపులారిటీ';

  @override
  String get community => 'కమ్యూనిటీ';

  @override
  String get watching => 'చూస్తున్నాను';

  @override
  String get reading => 'చదువుతున్నాను';

  @override
  String get dropped => 'డ్రాప్ చేశాను';

  @override
  String get planned => 'ప్లాన్‌లో';

  @override
  String get trailers => 'ట్రైలర్లు';

  @override
  String get ratings => 'రేటింగ్‌లు';

  @override
  String get originalTitle => 'ఒరిజినల్';

  @override
  String get titleLabel => 'టైటిల్';

  @override
  String get votes => 'ఓట్లు';

  @override
  String get watchedStat => 'చూశాను';

  @override
  String get runtime => 'రన్‌టైమ్';

  @override
  String get director => 'డైరెక్టర్';

  @override
  String get network => 'నెట్‌వర్క్';

  @override
  String get certification => 'సర్టిఫికేషన్';

  @override
  String get airs => 'ఎయిర్ అవుతుంది';

  @override
  String get budget => 'బడ్జెట్';

  @override
  String get revenue => 'రెవెన్యూ';

  @override
  String get released => 'రిలీజ్ అయింది';

  @override
  String get tags => 'ట్యాగ్‌లు';

  @override
  String get author => 'రచయిత';

  @override
  String get born => 'పుట్టిన తేదీ';

  @override
  String get website => 'వెబ్‌సైట్';

  @override
  String get established => 'స్థాపన';

  @override
  String get manhwa => 'మన్హ్వా';

  @override
  String get manhua => 'మన్హువా';

  @override
  String get novels => 'నవలలు';

  @override
  String get thisMonth => 'ఈ నెల';

  @override
  String get movies => 'సినిమాలు';

  @override
  String get shows => 'షోలు';

  @override
  String get rewatching => 'మళ్ళీ చూస్తున్నాను';

  @override
  String get rereading => 'మళ్ళీ చదువుతున్నాను';

  @override
  String get watchedStatus => 'చూశాను';

  @override
  String get planning => 'ప్లానింగ్';

  @override
  String get paused => 'పాజ్‌లో';

  @override
  String get watch => 'చూడు';

  @override
  String get read => 'చదువు';

  @override
  String get finished => 'పూర్తయింది';

  @override
  String get releasing => 'రిలీజ్ అవుతోంది';

  @override
  String get cancelled => 'క్యాన్సిల్ అయింది';

  @override
  String get hiatus => 'హయాటస్';

  @override
  String get remove => 'తీసేయ్';

  @override
  String syncToService(String service) {
    return '$serviceకి సింక్ చెయ్యి';
  }

  @override
  String syncedToService(String service) {
    return '$serviceకి సింక్ అయింది';
  }

  @override
  String get latestReleases => 'లేటెస్ట్ రిలీజ్‌లు';

  @override
  String get topRated => 'టాప్ రేటెడ్';

  @override
  String localSection(String title) {
    return '$title · లోకల్';
  }

  @override
  String get localEntryNote =>
      'ఈ టైటిల్ ఈ డివైస్‌లో నీ లోకల్ లిస్ట్‌లో మాత్రమే ఉంది. నీ అకౌంట్ లిస్ట్‌తో క్లాష్ అయ్యే అవకాశం ఉన్నందున ఇక్కడ ఎడిటింగ్ ఆఫ్‌లో ఉంది; అయినా తీసేయొచ్చు.';

  @override
  String get cardPresetPoster => 'పోస్టర్';

  @override
  String get cardPresetCard => 'కార్డ్';

  @override
  String get cardPresetCozy => 'కోజీ';

  @override
  String get sortTopRated => 'టాప్ రేటెడ్';

  @override
  String get sortMostPopular => 'మోస్ట్ పాపులర్';

  @override
  String get sortTrending => 'ట్రెండింగ్';

  @override
  String get sortNewest => 'న్యూయెస్ట్';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'మోస్ట్ ఫేవరెట్';

  @override
  String get anyCountry => 'ఏ దేశమైనా';

  @override
  String get orderScore => 'స్కోర్';

  @override
  String get orderTitle => 'టైటిల్';

  @override
  String get orderLastUpdated => 'లాస్ట్ అప్‌డేటెడ్';

  @override
  String get orderLastAdded => 'లాస్ట్ యాడెడ్';

  @override
  String get never => 'ఎప్పుడూ కాదు';

  @override
  String get always => 'ఎప్పుడూ';

  @override
  String get scorePoint100 => '100 పాయింట్లు';

  @override
  String get scorePoint10Decimal => '10 పాయింట్ డెసిమల్';

  @override
  String get scorePoint10 => '10 పాయింట్లు';

  @override
  String get scorePoint5 => '5 స్టార్';

  @override
  String get scorePoint3 => '3 పాయింట్ స్మైలీ';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count గంటలు',
      one: '1 గంట',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count రోజులు',
      one: '1 రోజు',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count వారాలు',
      one: '1 వారం',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'రెజ్యూమ్';

  @override
  String get resumeSourceMissing =>
      'రెజ్యూమ్ చేయడానికి ఈ టైటిల్ సోర్స్ ఇన్‌స్టాల్ చెయ్యి';

  @override
  String get resumeRemove => 'రెజ్యూమ్ నుండి తీసేయ్';

  @override
  String resumeAt(String time) {
    return '$time మిగిలింది';
  }

  @override
  String resumePage(int page, int total) {
    return 'పేజీ $page / $total';
  }

  @override
  String get continueWatching => 'చూడటం కొనసాగించు';

  @override
  String get continueReading => 'చదవడం కొనసాగించు';

  @override
  String get favouriteAnimeSection => 'ఫేవరెట్ అనిమే';

  @override
  String get favouriteMangaSection => 'ఫేవరెట్ మాంగా';

  @override
  String get plannedAnime => 'ప్లాన్ చేసిన అనిమే';

  @override
  String get plannedManga => 'ప్లాన్ చేసిన మాంగా';

  @override
  String get completedAnime => 'పూర్తయిన అనిమే';

  @override
  String get completedManga => 'పూర్తయిన మాంగా';

  @override
  String get hiddenMedia => 'హిడెన్ మీడియా';

  @override
  String get recentUpdates => 'రీసెంట్ అప్‌డేట్లు';

  @override
  String get trendingNow => 'ఇప్పుడు ట్రెండింగ్';

  @override
  String get popularThisSeason => 'ఈ సీజన్‌లో పాపులర్';

  @override
  String get trendingMovies => 'ట్రెండింగ్ సినిమాలు';

  @override
  String get topRatedSeries => 'టాప్ రేటెడ్ సిరీస్‌లు';

  @override
  String get mostFavouriteSeries => 'మోస్ట్ ఫేవరెట్ సిరీస్‌లు';

  @override
  String get popularAnime => 'పాపులర్ అనిమే';

  @override
  String get trendingManhwa => 'ట్రెండింగ్ మన్హ్వా';

  @override
  String get trendingNovels => 'ట్రెండింగ్ నవలలు';

  @override
  String get topRatedManga => 'టాప్ రేటెడ్ మాంగా';

  @override
  String get mostFavouriteManga => 'మోస్ట్ ఫేవరెట్ మాంగా';

  @override
  String get popularManga => 'పాపులర్ మాంగా';

  @override
  String get topMovies => 'టాప్ సినిమాలు';

  @override
  String get topOna => 'టాప్ ONA';

  @override
  String get topOva => 'టాప్ OVA';

  @override
  String get mostPopular => 'మోస్ట్ పాపులర్';

  @override
  String get mostFavourite => 'మోస్ట్ ఫేవరెట్';

  @override
  String get upcoming => 'అప్‌కమింగ్';

  @override
  String get topManga => 'టాప్ మాంగా';

  @override
  String get topManhwa => 'టాప్ మన్హ్వా';

  @override
  String get topManhua => 'టాప్ మన్హువా';

  @override
  String get topNovels => 'టాప్ నవలలు';

  @override
  String get topOneShots => 'టాప్ వన్-షాట్లు';

  @override
  String get trendingMoviesToday => 'ఈరోజు ట్రెండింగ్ సినిమాలు';

  @override
  String get trendingShowsToday => 'ఈరోజు ట్రెండింగ్ షోలు';

  @override
  String get trendingMoviesWeek => 'ఈ వారం ట్రెండింగ్ సినిమాలు';

  @override
  String get trendingShowsWeek => 'ఈ వారం ట్రెండింగ్ షోలు';

  @override
  String get mostWatchedMoviesMonth => 'ఈ నెల ఎక్కువ చూసిన సినిమాలు';

  @override
  String get mostWatchedShowsMonth => 'ఈ నెల ఎక్కువ చూసిన షోలు';

  @override
  String get trendingThisWeek => 'ఈ వారం ట్రెండింగ్';

  @override
  String get mostWatchedThisMonth => 'ఈ నెల ఎక్కువ చూసినవి';

  @override
  String get repoLinksAdded => 'రిపో లింకులు సక్సెస్‌ఫుల్‌గా యాడ్ అయ్యాయి!';

  @override
  String repoLinkConfirm(String url) {
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust.';
  }

  @override
  String get errorGettingAnilistData => 'AniList నుండి డేటా తేవడంలో ఎర్రర్.';

  @override
  String get navInfo => 'INFO';

  @override
  String get navComments => 'COMMENTS';

  @override
  String get playerNotAvailable => 'ప్లేయర్ ఇంకా అందుబాటులో లేదు';

  @override
  String deepLinkInitialError(String error) {
    return 'ఇనిషియల్ డీప్ లింక్ తేవడంలో ఎర్రర్: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'లింక్ ఓపెన్ చేయడంలో ఎర్రర్: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'ఈ లింక్ ఓపెన్ అవ్వదు: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'లింక్ ఓపెన్ చేయడంలో ఎర్రర్: $error';
  }

  @override
  String get forReleasingTitles => 'ప్రస్తుతం రిలీజ్ అవుతున్న టైటిల్స్ కోసం';

  @override
  String get progress => 'ప్రోగ్రెస్';

  @override
  String get notes => 'నోట్స్';

  @override
  String serviceNotFound(String id) {
    return '\"$id\" సర్వీస్ దొరకలేదు';
  }

  @override
  String get glassEffectEnabled => 'గ్లాస్ ఎఫెక్ట్ ఆన్ అయింది';

  @override
  String get glassEffectDisabled => 'గ్లాస్ ఎఫెక్ట్ ఆఫ్ అయింది';

  @override
  String get materialYouEnabled => 'Material You ఆన్ అయింది';

  @override
  String get materialYouDisabled => 'Material You ఆఫ్ అయింది';

  @override
  String get darkModeEnabled => 'డార్క్ మోడ్ ఆన్ అయింది';

  @override
  String get darkModeDisabled => 'డార్క్ మోడ్ ఆఫ్ అయింది';

  @override
  String get animeList => 'అనిమే లిస్ట్';

  @override
  String get mangaList => 'మాంగా లిస్ట్';

  @override
  String ownerAnimeList(String owner) {
    return '$owner అనిమే లిస్ట్';
  }

  @override
  String ownerMangaList(String owner) {
    return '$owner మాంగా లిస్ట్';
  }

  @override
  String get loadingList => 'లిస్ట్ లోడ్ అవుతోంది';

  @override
  String get earlier => 'ముందు';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count రోజుల క్రితం',
      one: '1 రోజు క్రితం',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count గంటల క్రితం',
      one: '1 గంట క్రితం',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count నిమిషాల క్రితం',
      one: '1 నిమిషం క్రితం',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '$countని క్రితం';
  }

  @override
  String hoursAgoShort(int count) {
    return '$countగం క్రితం';
  }

  @override
  String daysAgoShort(int count) {
    return '$countరో క్రితం';
  }

  @override
  String weeksAgoShort(int count) {
    return '$countవా క్రితం';
  }

  @override
  String get couldntLoadSource => 'ఈ సోర్స్ లోడ్ అవ్వలేదు';

  @override
  String get followers => 'ఫాలోవర్లు';

  @override
  String couldntLoadTitle(String title) {
    return '$title లోడ్ అవ్వలేదు';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'ఈ ప్రొఫైల్ లోడ్ అవ్వలేదు';

  @override
  String get profile => 'ప్రొఫైల్';

  @override
  String get feed => 'ఫీడ్';

  @override
  String get stats => 'స్టాట్స్';

  @override
  String get received => 'వచ్చినవి';

  @override
  String get sent => 'పంపినవి';

  @override
  String get global => 'గ్లోబల్';

  @override
  String get couldntLoadPage => 'ఈ పేజీ లోడ్ అవ్వలేదు';

  @override
  String get couldntLoadAllDetails => 'అన్ని వివరాలు లోడ్ అవ్వలేదు';

  @override
  String get series => 'సిరీస్';

  @override
  String get studios => 'స్టూడియోలు';

  @override
  String get users => 'యూజర్లు';

  @override
  String repositoriesTitle(String type) {
    return '$type రిపోజిటరీలు';
  }

  @override
  String get repositoryUrl => 'రిపోజిటరీ URL';

  @override
  String get downloadingRepository => 'రిపోజిటరీ డౌన్‌లోడ్ అవుతోంది…';

  @override
  String get noRepositories => 'రిపోజిటరీలు యాడ్ చేయలేదు';

  @override
  String repoExtensionsCount(String count) {
    return '$count ఎక్స్టెన్షన్లు';
  }

  @override
  String get searchExtensions => 'ఎక్స్టెన్షన్లలో వెతుకు...';

  @override
  String deletePluginTitle(String name) {
    return '$name డిలీట్ చేయాలా?';
  }

  @override
  String get deletePluginMessage => 'ఈ ప్లగిన్ నిజంగా డిలీట్ చేయాలా?';

  @override
  String pluginDeleted(String name) {
    return '$name డిలీట్ అయింది';
  }

  @override
  String pluginNotInRepo(String name) {
    return 'కాన్ఫిగర్ చేసిన రిపోలో $name అందుబాటులో లేదు';
  }

  @override
  String get pluginFetchFailed => 'ప్లగిన్ ఇన్ఫో ఫెచ్ అవ్వలేదు';

  @override
  String installPluginTitle(String name) {
    return '$name ఇన్‌స్టాల్ చెయ్యి';
  }

  @override
  String sizeLabel(String size) {
    return 'సైజ్: $size';
  }

  @override
  String get installedState => 'ఇన్‌స్టాల్ అయింది';

  @override
  String updatePluginTitle(String name) {
    return 'Update $name';
  }

  @override
  String get errorLabel => 'ఎర్రర్:';

  @override
  String get stackTraceDetails => 'వివరాలు (స్టాక్ ట్రేస్)';

  @override
  String get shareLogFile => 'లాగ్ ఫైల్ షేర్ చెయ్యి';

  @override
  String get copyLogs => 'లాగ్స్ కాపీ చెయ్యి';

  @override
  String noListToEdit(String service) {
    return '$serviceలో ఎడిట్ చేయడానికి లిస్ట్ లేదు';
  }

  @override
  String get couldNotReadFile => 'ఆ ఫైల్ చదవలేకపోయాం';

  @override
  String importedSummary(int anime, int manga) {
    return '$anime అనిమే, $manga మాంగా ఇంపోర్ట్ అయ్యాయి';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count ఇప్పటికే ఉన్నాయి';
  }

  @override
  String get airingNow => 'ఇప్పుడు ఎయిరింగ్';

  @override
  String get topRatedMovies => 'టాప్ రేటెడ్ సినిమాలు';

  @override
  String get koreanDramas => 'కొరియన్ డ్రామాలు';

  @override
  String get chineseDramas => 'చైనీస్ డ్రామాలు';

  @override
  String get japaneseDramas => 'జపనీస్ డ్రామాలు';

  @override
  String get thaiDramas => 'థాయ్ డ్రామాలు';

  @override
  String get turkishDramas => 'టర్కిష్ డ్రామాలు';

  @override
  String get miniSeries => 'మినీ సిరీస్';

  @override
  String get topRatedShows => 'టాప్ రేటెడ్ షోలు';

  @override
  String get recommendedSection => 'రికమెండెడ్';

  @override
  String get syncRow => 'లిస్ట్‌లు సింక్ చెయ్యి';

  @override
  String get syncRowDesc =>
      'ఒక సర్వీస్ లిస్ట్‌ని నీ మిగతా అకౌంట్లకు మిర్రర్ చెయ్యి';

  @override
  String get syncTitle => 'సింక్';

  @override
  String get syncMainService => 'మెయిన్ సర్వీస్';

  @override
  String get syncMainServiceDesc =>
      'దాని లిస్ట్ ప్రామాణికం; సైన్ ఇన్ అయిన మిగతా సర్వీసులన్నీ దానికి తగ్గట్టు అప్‌డేట్ అవుతాయి';

  @override
  String get syncAuto => 'ఆటో సింక్';

  @override
  String get syncAutoDesc =>
      'యాప్ ఓపెన్ చేసినప్పుడు, ప్రతి 30 నిమిషాలకు బ్యాక్‌గ్రౌండ్‌లో ఫెచ్ చేసి సింక్ చెయ్యి';

  @override
  String get syncAddMissing => 'మిస్సింగ్ ఎంట్రీలు యాడ్ చెయ్యి';

  @override
  String get syncAddMissingDesc =>
      'అవతలి సర్వీస్‌లో ఇంకా లేని ఎంట్రీలను కూడా యాడ్ చెయ్యి';

  @override
  String get syncOnlyForward => 'ఎక్కువ ప్రోగ్రెస్ అలాగే ఉంచు';

  @override
  String get syncOnlyForwardDesc =>
      'ఇప్పటికే ముందున్న సర్వీస్ ప్రోగ్రెస్‌ని తగ్గించకు';

  @override
  String get syncFetch => 'ఫెచ్';

  @override
  String get syncFetchAgain => 'మళ్ళీ ఫెచ్ చెయ్యి';

  @override
  String get syncAll => 'అన్నీ సింక్ చెయ్యి';

  @override
  String get syncStop => 'ఆపు';

  @override
  String get syncResume => 'రెజ్యూమ్';

  @override
  String get syncNothingToSync => 'ఈ టైప్ కోసం ఈ సర్వీస్ సింక్ అవ్వదు';

  @override
  String get syncNoTargets => 'సింక్ చేయడానికి వేరే సర్వీస్‌కి సైన్ ఇన్ అవ్వు';

  @override
  String get syncLoadingMap => 'ID మ్యాపింగ్ లోడ్ అవుతోంది';

  @override
  String get syncComparing => 'లిస్ట్‌లు పోలుస్తున్నాం';

  @override
  String get syncIntro =>
      'ఒక మెయిన్ సర్వీస్ ఎంచుకుని ఫెచ్ నొక్కు. ప్రతి సర్వీస్ నుండి నీ లిస్ట్ ఒకసారి తెచ్చి, మెయిన్‌తో పోలుస్తాం.';

  @override
  String get syncStateSynced => 'సింక్ అయింది';

  @override
  String get syncStateOutdated => 'సింక్ లో లేదు';

  @override
  String get syncStateMissing => 'లిస్ట్‌లో లేదు';

  @override
  String get syncStateUnmapped => 'మ్యాచ్ లేదు';

  @override
  String syncPaused(String time) {
    return 'రేట్ లిమిట్ కోసం ఆగుతున్నాం, $timeలో కొనసాగుతుంది';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$nameలో మాత్రమే ఉన్న $count, ముట్టుకోలేదు';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$totalలో $done';
  }

  @override
  String get syncNothingHere => 'చూపించడానికి ఏమీ లేదు';

  @override
  String syncLimits(int used, int max, String window) {
    return 'ఈ $windowలో $max రిక్వెస్ట్‌లకు $used వాడావు';
  }

  @override
  String get syncMinute => 'నిమిషం';

  @override
  String get syncDay => 'రోజు';

  @override
  String get syncNotInList => 'ఇంకా లిస్ట్‌లో లేదు';

  @override
  String get syncCleared => 'ప్లాన్ క్లియర్ అయింది';

  @override
  String get syncClear => 'క్లియర్';

  @override
  String get syncOptions => 'ఆప్షన్లు';

  @override
  String get syncShared => 'ఈ ఎంట్రీ వేరే ఐటమ్‌తో షేర్ అవుతోంది';

  @override
  String syncNotFound(String service) {
    return '$serviceలో దొరకలేదు';
  }

  @override
  String syncService(String service, int count) {
    return '$service సింక్ ($count)';
  }

  @override
  String get syncOnEdit => 'మార్పులు వెంటనే సింక్ చెయ్యి';

  @override
  String get syncOnEditDesc =>
      'ప్రతి ప్రోగ్రెస్ అప్‌డేట్, లిస్ట్ ఎడిట్ నీ మిగతా సైన్ ఇన్ అయిన సర్వీసులకు వెంటనే పంపు';

  @override
  String syncPushed(String services) {
    return '$servicesకి సింక్ అయింది';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited =>
      'రేట్ లిమిట్ అయింది, కాసేపాగి మళ్ళీ ట్రై చెయ్యి';

  @override
  String get syncAhead => 'ఏది ముందుంటే అది';

  @override
  String get syncAheadDesc =>
      'టూ-వే: ప్రతి టైటిల్‌కి ఎక్కువ ప్రోగ్రెస్ ఉన్న ఎంట్రీ గెలుస్తుంది, నీ మిగతా సర్వీసులన్నిటికీ కాపీ అవుతుంది';

  @override
  String syncAheadFrom(String service) {
    return '$service నుండి';
  }

  @override
  String get syncConfirm => 'సింక్ చేసే ముందు రివ్యూ చెయ్యి';

  @override
  String get syncConfirmDesc =>
      'అన్నీ సింక్ చెయ్యి వల్ల ఏం మారతాయో, ఎన్ని రిక్వెస్ట్‌లు అవసరమో చూపించు';

  @override
  String get syncPreviewTitle => 'సింక్‌కి రెడీ';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates అప్‌డేట్లు, $adds యాడ్ చేయాలి';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'సుమారు $count రిక్వెస్ట్‌లు';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count IDలను ముందు లుకప్ చేయాలి';
  }

  @override
  String get syncPreviewNothing => 'మార్చడానికి ఏమీ లేదు';

  @override
  String get syncStart => 'స్టార్ట్';

  @override
  String get syncRetry => 'మళ్ళీ ట్రై చెయ్యి';

  @override
  String get syncSkip => 'ఈ ఐటమ్ స్కిప్ చెయ్యి';

  @override
  String get syncInclude => 'ఈ ఐటమ్ మళ్ళీ చేర్చు';

  @override
  String get syncSkippedLabel => 'స్కిప్ అయింది';

  @override
  String get syncChanges => 'తేడాలు';

  @override
  String get syncChangeStatus => 'స్టేటస్';

  @override
  String get syncChangeProgress => 'ప్రోగ్రెస్';

  @override
  String get syncChangeScore => 'స్కోర్';

  @override
  String get syncChangeDates => 'డేట్స్';

  @override
  String get syncChangeRepeat => 'రీవాచ్ కౌంట్';

  @override
  String get syncFailedReason => 'ఎందుకు ఫెయిలైంది';

  @override
  String get syncSkippedHint =>
      'మళ్ళీ ఫెచ్ చేసినా స్కిప్ చేసిన ఐటమ్స్‌ని ముట్టుకోం';

  @override
  String get commentsRules => 'కామెంట్ రూల్స్';

  @override
  String get commentsRulesBody =>
      'ఏ రూల్ బ్రేక్ చేసినా బయటికే\n\n1. జాతి వివక్ష, వివక్ష లేదా ద్వేషపూరిత మాటలు వద్దు\n2. స్పామ్, సెల్ఫ్ ప్రమోషన్ వద్దు\n3. NSFW కంటెంట్ అస్సలు వద్దు\n4. ఇంగ్లీష్ మాత్రమే, ఎలాంటి మినహాయింపులు లేవు\n5. ఇంపర్సొనేషన్, వేధింపులు, దుర్భాష వద్దు\n6. చట్టవిరుద్ధమైన కంటెంట్ లేదా ఏ ఫ్యాండమ్‌ని అయినా విపరీతంగా అగౌరవపరచడం వద్దు\n7. రిపోజిటరీలు లేదా ఎక్స్టెన్షన్లు అడగొద్దు, షేర్ చేయొద్దు\n8. స్పాయిలర్లు స్పాయిలర్ ట్యాగ్, వార్నింగ్‌తో మాత్రమే\n9. మైనర్ క్యారెక్టర్ల గురించి సెక్సువలైజ్ చేసే లేదా తగని కామెంట్లు వద్దు\n10. తప్పు అనిపిస్తే పోస్ట్ చేయొద్దు!';

  @override
  String get commentsRulesAccept => 'అర్థమైంది';

  @override
  String get commentsSortNewest => 'న్యూయెస్ట్';

  @override
  String get commentsSortOldest => 'ఓల్డెస్ట్';

  @override
  String get commentsSortHighest => 'హైయెస్ట్ రేటెడ్';

  @override
  String get commentsSortLowest => 'లోయెస్ట్ రేటెడ్';

  @override
  String commentsEpisodeShort(int number) {
    return 'ఎపి $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'చా $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'ఎపిసోడ్ వారీగా ఫిల్టర్';

  @override
  String get commentsFilterChapterTitle => 'చాప్టర్ వారీగా ఫిల్టర్';

  @override
  String get commentsFilterTagTitle =>
      'ఎపిసోడ్ లేదా చాప్టర్ నంబర్ ఎంటర్ చెయ్యి';

  @override
  String get commentsFilterHint => 'నంబర్';

  @override
  String get commentsFilterApply => 'ఫిల్టర్';

  @override
  String get commentsFilterClear => 'అన్నీ చూపించు';

  @override
  String get commentsPlaceholder => 'కామెంట్ యాడ్ చెయ్యి…';

  @override
  String commentsReplyingTo(String name) {
    return '$nameకి రిప్లై ఇస్తున్నావు';
  }

  @override
  String get commentsSend => 'పంపు';

  @override
  String get commentsTagButton => 'ట్యాగ్';

  @override
  String commentsTagTitle(String label) {
    return '$label ట్యాగ్ (ఆప్షనల్)';
  }

  @override
  String get commentsTagEpisode => 'ఎపిసోడ్';

  @override
  String get commentsTagChapter => 'చాప్టర్';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return '$label నంబర్';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'ట్యాగ్ టోటల్ ($total) దాటకూడదు';
  }

  @override
  String get commentsNoTag => 'ట్యాగ్ లేదు';

  @override
  String get commentsSpoiler => 'స్పాయిలర్';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'GIFలు వెతుకు';

  @override
  String get commentsGifEmpty => 'GIFలు దొరకలేదు';

  @override
  String get commentsEmptyText => 'కామెంట్ ఖాళీగా ఉండకూడదు';

  @override
  String get commentsBannedYou => 'నిన్ను కామెంట్ చేయకుండా బ్యాన్ చేశారు';

  @override
  String get commentsEdited => 'కామెంట్ ఎడిట్ అయింది';

  @override
  String get commentsDeleted => 'కామెంట్ డిలీట్ అయింది';

  @override
  String get commentsDeletedPlaceholder => '[డిలీట్ అయింది]';

  @override
  String get commentsReported => 'కామెంట్ రిపోర్ట్ అయింది';

  @override
  String get commentsUserBanned => 'యూజర్ బ్యాన్ అయ్యాడు';

  @override
  String get commentsReport => 'రిపోర్ట్';

  @override
  String get commentsReportAsk => 'ఈ కామెంట్‌ని మోడరేటర్లకు రిపోర్ట్ చేయాలా?';

  @override
  String get commentsDelete => 'డిలీట్';

  @override
  String get commentsDeleteAsk => 'ఈ కామెంట్ అందరికీ తొలగిపోతుంది.';

  @override
  String get commentsBan => 'బ్యాన్';

  @override
  String get commentsBanAsk => 'ఈ యూజర్‌ని కామెంట్ చేయకుండా బ్యాన్ చేయాలా?';

  @override
  String get commentsCopy => 'కాపీ';

  @override
  String get commentsViewReply => '1 రిప్లై చూడు';

  @override
  String commentsViewReplies(int count) {
    return '$count రిప్లైలు చూడు';
  }

  @override
  String get commentsHideReplies => 'రిప్లైలు దాచు';

  @override
  String get commentsLoadMore => 'ఇంకా కామెంట్లు లోడ్ చెయ్యి';

  @override
  String get commentsEmpty =>
      'ఇంకా కామెంట్లు లేవు. మొదటి కామెంట్ నువ్వే చెయ్యి!';

  @override
  String get commentsEmptyFiltered => 'ఈ ఫిల్టర్‌కి కామెంట్లు లేవు';

  @override
  String get commentsSignIn =>
      'కామెంట్లు చదవడానికి, రాయడానికి AniListకి సైన్ ఇన్ అవ్వు';

  @override
  String get commentsSignInMessage =>
      'కామెంట్లు అన్ని సర్వీసుల మధ్య షేర్ అవుతాయి, నీ AniList అకౌంట్ వాడతాయి.';

  @override
  String get commentsUnavailable => 'ఈ టైటిల్‌కి కామెంట్లు అందుబాటులో లేవు';

  @override
  String get commentsUnavailableMessage =>
      'దీన్ని AniList ఎంట్రీకి మ్యాచ్ చేయలేకపోయాం.';

  @override
  String get commentsDisabled => 'కామెంట్లు ఆఫ్‌లో ఉన్నాయి';

  @override
  String get commentsDisabledMessage =>
      'సెట్టింగ్స్ › జనరల్‌లో మళ్ళీ ఆన్ చేసుకోవచ్చు.';

  @override
  String get commentsOffline => 'కామెంట్లు లోడ్ అవ్వలేదు';

  @override
  String get commentsSingleTitle => 'ఒక కామెంట్ చూపిస్తున్నాం';

  @override
  String get commentsShowAll => 'అన్ని కామెంట్లు చూపించు';

  @override
  String get commentsSettingsHeader => 'కామెంట్లు';

  @override
  String get commentsSettingEnabled => 'కామెంట్లు';

  @override
  String get commentsSettingEnabledDesc =>
      'టైటిల్స్ మీద కామెంట్స్ ట్యాబ్ చూపించు, నీ AniList అకౌంట్‌తో కామెంట్ సర్వర్‌కి సైన్ ఇన్ అవ్వు';

  @override
  String get commentsSettingAlerts => 'రిప్లై నోటిఫికేషన్లు';

  @override
  String get commentsSettingAlertsDesc =>
      'ఎవరైనా నా కామెంట్లకు రిప్లై ఇచ్చినప్పుడు చెప్పు';

  @override
  String get commentsNoticeReplyTitle => 'కామెంట్‌కి కొత్త రిప్లై';

  @override
  String commentsNoticeReply(String name) {
    return '$name నీ కామెంట్‌కి రిప్లై ఇచ్చారు';
  }

  @override
  String get commentsNoticeWarningTitle => 'నీకు వార్నింగ్ వచ్చింది';

  @override
  String get commentsNoticeWarning =>
      'నీ కామెంట్ల విషయంలో కాస్త జాగ్రత్తగా ఉండు';

  @override
  String get commentsNoticeUpdateTitle => 'Dantotsu నుండి అప్‌డేట్';

  @override
  String get barcodeTitle => 'బార్‌కోడ్ స్కాన్ చెయ్యి';

  @override
  String get barcodeTooltip => 'బార్‌కోడ్ నుండి మాంగా లేదా నవల వెతుకు';

  @override
  String get barcodeIntro =>
      'ఒక వాల్యూమ్ వెనుక ఉన్న బార్‌కోడ్ మీద కెమెరా పెట్టు, లేదా దాని ISBN టైప్ చెయ్యి.';

  @override
  String get barcodeIntroManual =>
      'ఒక వాల్యూమ్ వెనుక బార్‌కోడ్ పైన ప్రింట్ అయిన ISBN టైప్ చెయ్యి.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'అది సరైన ISBN కాదు';

  @override
  String barcodeNotFound(String isbn) {
    return '$isbnకి పుస్తకం దొరకలేదు';
  }

  @override
  String get barcodeCameraDenied =>
      'కెమెరా అందుబాటులో లేదు. కెమెరా యాక్సెస్ ఇవ్వు లేదా ISBN టైప్ చెయ్యి.';

  @override
  String get themesTitle => 'ఓపెనింగ్స్ & ఎండింగ్స్';

  @override
  String get themesPlayVideo => 'వీడియో ప్లే చెయ్యి';

  @override
  String get themesPlayAudio => 'ఆడియో మాత్రమే ప్లే చెయ్యి';

  @override
  String get themesOpenSite => 'AnimeThemesలో ఓపెన్ చెయ్యి';

  @override
  String get themesCredit => 'AnimeThemes నుండి థీమ్స్';

  @override
  String get themesVersions => 'వెర్షన్లు';

  @override
  String get sauceTitle => 'సోర్స్ కనుక్కో';

  @override
  String get sauceIntro =>
      'ఒక మాంగా పేజీ లేదా ఆర్ట్‌వర్క్ అప్‌లోడ్ చెయ్యి, లేదా దాని లింక్ పేస్ట్ చెయ్యి, అది ఎక్కడిదో కనుక్కుంటాం.';

  @override
  String get sauceKeyTitle => 'SauceNAO API కీ';

  @override
  String get sauceKeyHint => 'ఆప్షనల్, డైలీ సెర్చ్ లిమిట్ పెంచుతుంది';

  @override
  String get sauceKeyDesc => 'saucenao.com/user.php లో ఫ్రీ కీ తీసుకో';

  @override
  String get sauceOpen => 'సోర్స్ ఓపెన్ చెయ్యి';

  @override
  String get sauceCredit => 'SauceNAO ఇమేజ్ సెర్చ్';

  @override
  String get sauceEmpty => 'మ్యాచ్ దొరకలేదు';

  @override
  String get sauceTooltip => 'మాంగా పేజీ లేదా ఆర్ట్‌వర్క్ సోర్స్ కనుక్కో';

  @override
  String get trendzTitle => 'అనిమే చార్ట్స్';

  @override
  String get trendzAnime => 'అనిమే';

  @override
  String get trendzFemale => 'ఫీమేల్ క్యారెక్టర్లు';

  @override
  String get trendzMale => 'మేల్ క్యారెక్టర్లు';

  @override
  String get trendzCouple => 'కపుల్స్';

  @override
  String get trendzCredit => 'AniTrendz నుండి వీక్లీ చార్ట్స్';

  @override
  String get trendzNew => 'NEW';

  @override
  String get trendzEmpty => 'చార్ట్ ఖాళీగా ఉంది';

  @override
  String get shareCard => 'కార్డ్ షేర్ చెయ్యి';

  @override
  String get shareCardList => 'లిస్ట్ కార్డ్ షేర్ చెయ్యి';

  @override
  String get shareCardSaved => 'కార్డ్ సేవ్ అయింది';

  @override
  String get shareCardFailed => 'కార్డ్ తయారు చేయలేకపోయాం';

  @override
  String get shareCardListEmpty => 'నీ లిస్ట్‌లో ఇంకా షేర్ చేయడానికి ఏమీ లేదు';

  @override
  String get shareCardTop => 'నా టాప్ పిక్స్';

  @override
  String themesEpisodes(String eps) {
    return 'ఎపిసోడ్లు $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent% మ్యాచ్';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'వారం $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count ఓట్లు';
  }

  @override
  String trendzPeak(String rank) {
    return 'పీక్ #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return 'టాప్ టెన్‌లో $count వారాలు';
  }

  @override
  String get imageSearchTitle => 'ఇమేజ్‌తో వెతుకు';

  @override
  String get imageSearchTooltip => 'స్క్రీన్‌షాట్ నుండి అనిమే కనుక్కో';

  @override
  String get imageSearchIntro =>
      'ఒక స్క్రీన్‌షాట్ ఎంచుకో లేదా ఇమేజ్ లింక్ పేస్ట్ చెయ్యి, trace.moe అది ఏ ఎపిసోడ్‌లో, ఏ మూమెంట్‌లో ఉందో కనుక్కుంటుంది.';

  @override
  String get imageSearchPick => 'ఇమేజ్ ఎంచుకో';

  @override
  String get imageSearchLinkHint => 'ఇమేజ్ లింక్ పేస్ట్ చెయ్యి';

  @override
  String get imageSearchGo => 'వెతుకు';

  @override
  String get imageSearchEmpty => 'మ్యాచ్ దొరకలేదు';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'ఎపిసోడ్ $number';
  }

  @override
  String imageSearchAt(String time) {
    return '$time దగ్గర';
  }

  @override
  String get imageSearchPreview => 'ప్రివ్యూ క్లిప్';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent% మ్యాచ్';
  }

  @override
  String get imageSearchCredit => 'trace.moe ఆధారంగా';

  @override
  String get imageSearchOpenFailed => 'ఈ టైటిల్ ఓపెన్ చేయలేకపోయాం';

  @override
  String get groups => 'గ్రూపులు';

  @override
  String get groupsYours => 'నీ గ్రూపులు';

  @override
  String get groupsPopular => 'పాపులర్';

  @override
  String get groupsNew => 'కొత్త';

  @override
  String get groupsFeatured => 'ఫీచర్డ్';

  @override
  String get groupsSearch => 'గ్రూపులు వెతుకు';

  @override
  String get groupsAll => 'అన్నీ';

  @override
  String get groupsEmpty => 'గ్రూపులు దొరకలేదు';

  @override
  String get groupsEmptyYours => 'నువ్వు ఇంకా ఏ గ్రూపులోనూ చేరలేదు';

  @override
  String get groupsSignIn => 'నువ్వు చేరిన గ్రూపులు చూడటానికి సైన్ ఇన్ అవ్వు';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count మెంబర్లు',
      one: '1 మెంబర్',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'జాయిన్';

  @override
  String get groupsJoined => 'జాయిన్ అయ్యావు';

  @override
  String get groupsLeave => 'గ్రూప్ వదిలెయ్';

  @override
  String get groupsLeaveAsk => 'ఈ గ్రూప్ పోస్ట్‌లు ఇక నీ ఫీడ్‌లో కనిపించవు.';

  @override
  String get groupsJoinFailed =>
      'ఈ గ్రూప్‌లో చేరలేకపోయాం, ఇన్వైట్ ఓన్లీ కావచ్చు';

  @override
  String get groupsLeaveFailed => 'ఈ గ్రూప్ వదలలేకపోయాం';

  @override
  String get groupsPosts => 'పోస్ట్‌లు';

  @override
  String get groupsMembersTab => 'మెంబర్లు';

  @override
  String get groupsAbout => 'గురించి';

  @override
  String get groupsRules => 'రూల్స్';

  @override
  String get groupsPrivacyOpen => 'ఓపెన్';

  @override
  String get groupsPrivacyRestricted => 'రిస్ట్రిక్టెడ్';

  @override
  String get groupsPrivacyClosed => 'క్లోజ్డ్';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'అడ్మిన్';

  @override
  String get groupsRoleMod => 'మోడ్';

  @override
  String get groupsCouldntLoad => 'ఈ గ్రూప్ లోడ్ అవ్వలేదు';

  @override
  String get groupsNewPost => 'గ్రూప్‌కి పోస్ట్ చెయ్యి';

  @override
  String get groupsPostHint => 'గ్రూప్‌తో ఏదైనా షేర్ చెయ్యి';

  @override
  String get groupsOpenInBrowser => 'బ్రౌజర్‌లో ఓపెన్ చెయ్యి';

  @override
  String get groupsCategory => 'కేటగిరీ';

  @override
  String get groupsLanguage => 'భాష';

  @override
  String get groupsCreated => 'క్రియేట్ అయింది';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count లీడర్లు',
      one: '1 లీడర్',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'ప్రైవసీ';

  @override
  String get notificationsAll => 'అన్నీ';

  @override
  String get notificationsAiring => 'ఎయిరింగ్';

  @override
  String get notificationsMedia => 'కొత్త టైటిల్స్';

  @override
  String get notificationsReplies => 'రిప్లైలు';

  @override
  String get notificationsMentions => 'మెన్షన్లు';

  @override
  String get notificationsMessages => 'మెసేజ్‌లు';

  @override
  String get notificationsLikes => 'లైక్‌లు';

  @override
  String get notificationsFollows => 'ఫాలోలు';

  @override
  String get notificationsNoServices =>
      'సైన్ ఇన్ అయిన ఏ సర్వీస్‌కీ నోటిఫికేషన్లు లేవు';

  @override
  String get notificationsNoServicesMessage =>
      'నోటిఫికేషన్లు పంపే సర్వీస్‌కి సైన్ ఇన్ అవ్వు, అవి ఇక్కడ కనిపిస్తాయి.';

  @override
  String get notificationsEmptyKind => 'ఈ కేటగిరీలో ఇంకా ఏమీ లేదు';

  @override
  String get notificationsCommentsEmpty => 'కామెంట్ నోటిఫికేషన్లు లేవు';

  @override
  String get notificationsCommentsEmptyMessage =>
      'నీ కామెంట్లకు వచ్చిన రిప్లైలు, Dantotsu ప్రకటనలు ఇక్కడ కనిపిస్తాయి.';

  @override
  String get notificationsSettings => 'నోటిఫికేషన్ సెట్టింగ్స్';

  @override
  String get notificationsPollTitle => 'కొత్త నోటిఫికేషన్లు చెక్ చెయ్యి';

  @override
  String notificationsPollDesc(int minutes) {
    return 'యాప్ ఓపెన్‌లో ఉన్నప్పుడు ప్రతి $minutes నిమిషాలకు';
  }

  @override
  String get notificationsNotifyAbout => 'వీటి గురించి చెప్పు';

  @override
  String get notificationsCommentsHeader => 'కామెంట్ నోటిఫికేషన్లు';

  @override
  String systemNotificationsDescFor(String service) {
    return 'యాప్ రన్ అవుతున్నప్పుడు చదవని ప్రతి $service నోటిఫికేషన్‌కి సిస్టమ్ నోటిఫికేషన్ చూపించు.';
  }

  @override
  String get notificationsTestSent => 'టెస్ట్ నోటిఫికేషన్ పంపాం';

  @override
  String get notificationsTestDenied =>
      'Dartotsuకి నోటిఫికేషన్లు అనుమతించలేదు. సిస్టమ్ సెట్టింగ్స్‌లో ఆన్ చెయ్యి.';

  @override
  String get notificationsTestHint =>
      'టెస్ట్ నోటిఫికేషన్ పంపడానికి లాంగ్ ప్రెస్ చెయ్యి';

  @override
  String get notificationsTestSample => 'ఇది టెస్ట్ నోటిఫికేషన్';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$mediaలో నీ కామెంట్‌కి $name రిప్లై ఇచ్చారు';
  }

  @override
  String get imageSearchNotLink => 'ఇది లింక్‌లా లేదు';

  @override
  String get imageSearchQuota => 'సెర్చ్ కోటా అయిపోయింది';

  @override
  String get imageSearchBusy =>
      'చాలా రిక్వెస్ట్‌లు, కాసేపాగి మళ్ళీ ట్రై చెయ్యి';

  @override
  String imageSearchFailed(int code) {
    return 'సెర్చ్ ఫెయిలైంది ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count కొత్త నోటిఫికేషన్లు';
  }

  @override
  String get reactionsTitle => 'రియాక్షన్లు';

  @override
  String get reactionsNeedEntry =>
      'రియాక్ట్ అవ్వడానికి ముందు ఈ టైటిల్‌ని నీ లిస్ట్‌కి యాడ్ చెయ్యి';

  @override
  String get reactionsAdd => 'రియాక్షన్ యాడ్ చెయ్యి';

  @override
  String get reactionsHint =>
      'నీకు ఎలా అనిపించింది? (షార్ట్‌గా, స్పాయిలర్లు లేకుండా)';

  @override
  String get reactionsPost => 'పోస్ట్';

  @override
  String get reactionsFailed => 'రియాక్షన్ అప్‌డేట్ అవ్వలేదు';

  @override
  String get settingsWatch => 'చూడు & చదువు';

  @override
  String get settingsWatchDesc =>
      'ఎపిసోడ్ లిస్ట్‌లు, సోర్స్ మ్యాచింగ్, ఎపిసోడ్ వివరాలు';

  @override
  String get watchSettingsLayout => 'ఎపిసోడ్ లిస్ట్';

  @override
  String get watchSettingsSources => 'సోర్స్‌లు';

  @override
  String get watchSettingsMetadata => 'ఎపిసోడ్ వివరాలు';

  @override
  String get watchLayout => 'లేఅవుట్';

  @override
  String get watchListView => 'లిస్ట్';

  @override
  String get watchGridView => 'గ్రిడ్';

  @override
  String get watchCompactView => 'కాంపాక్ట్';

  @override
  String get watchDefaultLayoutDesc =>
      'ఒక టైటిల్‌కి మార్చే వరకు ఎపిసోడ్లు, చాప్టర్లు ఎలా కనిపించాలి';

  @override
  String get watchChunkSize => 'రేంజ్ సైజ్';

  @override
  String get watchChunkSizeDesc =>
      'ప్రతి రేంజ్ ట్యాబ్‌లో ఎన్ని ఎపిసోడ్లు లేదా చాప్టర్లు ఉండాలి';

  @override
  String get watchShowDescription => 'డిస్క్రిప్షన్లు చూపించు';

  @override
  String get watchShowDescriptionDesc =>
      'లిస్ట్ లేఅవుట్‌లో ప్రతి టైటిల్ కింద ఎపిసోడ్ సమ్మరీ చూపించు';

  @override
  String get watchShowFiller => 'ఫిల్లర్ ఎపిసోడ్లు చూపించు';

  @override
  String get watchShowFillerDesc =>
      'ఫిల్లర్‌గా మార్క్ చేసిన ఎపిసోడ్లు దాచడానికి ఆఫ్ చెయ్యి';

  @override
  String get watchBlurUnwatched => 'స్పాయిలర్ థంబ్‌నెయిల్స్ దాచు';

  @override
  String get watchBlurUnwatchedDesc =>
      'ఇంకా చూడని ఎపిసోడ్ల థంబ్‌నెయిల్ బ్లర్ చెయ్యి';

  @override
  String get watchResumeShelf => 'రెజ్యూమ్ షెల్ఫ్';

  @override
  String get watchResumeShelfDesc => 'హోమ్‌లో రెజ్యూమ్ వరుస చూపించు';

  @override
  String get watchMarkOnLongPress => 'లాంగ్ ప్రెస్‌తో ప్రోగ్రెస్ మార్క్ చెయ్యి';

  @override
  String get watchMarkOnLongPressDesc =>
      'ఎపిసోడ్ లేదా చాప్టర్ మీద లాంగ్ ప్రెస్ చేస్తే చూసినట్టు లేదా చూడనట్టు మార్క్ అవుతుంది';

  @override
  String get watchMatching => 'సోర్స్ మ్యాచింగ్';

  @override
  String get watchMatchingDesc =>
      'క్లోజెస్ట్ బెస్ట్ సెర్చ్ రిజల్ట్ తీసుకుంటుంది. ఎగ్జాక్ట్ ఓన్లీ దాదాపు ఒకేలా ఉన్న టైటిల్‌ని మాత్రమే తీసుకుని, మిగతావి నీకే వదిలేస్తుంది.';

  @override
  String get watchMatchClosest => 'క్లోజెస్ట్ మ్యాచ్';

  @override
  String get watchMatchExact => 'ఎగ్జాక్ట్ మ్యాచ్ మాత్రమే';

  @override
  String get watchMetadataDesc =>
      'ఎపిసోడ్ టైటిల్స్, సమ్మరీలు, థంబ్‌నెయిల్స్, ఎయిర్ డేట్స్, ఫిల్లర్ ఫ్లాగ్స్ ఎక్కడ నుండి రావాలి. ప్రయారిటీ సెట్ చేయడానికి డ్రాగ్ చెయ్యి; వాల్యూ ఉన్న మొదటి సోర్స్ గెలుస్తుంది.';

  @override
  String get watchMetaAniZipDesc =>
      'ఎపిసోడ్ టైటిల్స్, సమ్మరీలు, స్టిల్స్, ఎయిర్ డేట్స్';

  @override
  String get watchMetaKitsuDesc =>
      'ఎపిసోడ్ టైటిల్స్, డిస్క్రిప్షన్లు, థంబ్‌నెయిల్స్';

  @override
  String get watchMetaSimklDesc =>
      'ఎపిసోడ్ టైటిల్స్, డిస్క్రిప్షన్లు, స్టిల్స్, ఎయిర్ డేట్స్';

  @override
  String get watchMetaAniListDesc =>
      'స్ట్రీమింగ్ ఎపిసోడ్ టైటిల్స్, థంబ్‌నెయిల్స్, ఎయిరింగ్ షెడ్యూల్';

  @override
  String get watchMetaTenraiDesc =>
      'Tenrai ద్వారా MyAnimeList ఎపిసోడ్ టైటిల్స్, ఎయిర్ డేట్స్, ఫిల్లర్, రీక్యాప్ ఫ్లాగ్స్';

  @override
  String get watchClearMetadata => 'ఎపిసోడ్ వివరాలు రిఫ్రెష్ చెయ్యి';

  @override
  String get watchClearMetadataDesc =>
      'కాష్ అయిన ఎపిసోడ్ వివరాలు మర్చిపో, మళ్ళీ ఫెచ్ అవుతాయి';

  @override
  String get watchMetadataCleared => 'ఎపిసోడ్ వివరాలు మళ్ళీ ఫెచ్ అవుతాయి';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ఎపిసోడ్లు',
      one: '1 ఎపిసోడ్',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count చాప్టర్లు',
      one: '1 చాప్టర్',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'ఎపిసోడ్ $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'చాప్టర్ $number';
  }

  @override
  String get watchSearching => 'వెతుకుతున్నాం…';

  @override
  String watchSearchingFor(String term) {
    return 'వెతుకుతున్నాం: $term';
  }

  @override
  String watchSelected(String title) {
    return 'ఎంచుకున్నది: $title';
  }

  @override
  String watchFound(String title) {
    return 'దొరికింది: $title';
  }

  @override
  String get watchNothingFound => 'ఈ సోర్స్‌లో ఏదీ దొరకలేదు';

  @override
  String get watchSearchFailed => 'సోర్స్ సెర్చ్ ఫెయిలైంది';

  @override
  String get watchLoadFailed => 'లిస్ట్ లోడ్ అవ్వలేదు';

  @override
  String get watchSignInToTrack =>
      'నీ ప్రోగ్రెస్ ట్రాక్ చేయడానికి సైన్ ఇన్ అవ్వు';

  @override
  String watchInstallSource(String action) {
    return '$action మొదలుపెట్టడానికి ఒక ఎక్స్టెన్షన్ ఇన్‌స్టాల్ చెయ్యి';
  }

  @override
  String get watchSourceMissing => 'ఈ సోర్స్ ఇన్‌స్టాల్ చేయలేదు';

  @override
  String get watchWrongTitle => 'టైటిల్ తప్పా?';

  @override
  String get watchSearchAgain => 'మళ్ళీ వెతుకు';

  @override
  String watchSearchSource(String source) {
    return '$sourceలో వెతుకు';
  }

  @override
  String get watchSource => 'సోర్స్';

  @override
  String get watchOptions => 'ఆప్షన్లు';

  @override
  String get watchReverse => 'రివర్స్ ఆర్డర్';

  @override
  String get watchScanlators => 'గ్రూపులు';

  @override
  String get watchResetOptions => 'ఈ ఆప్షన్లు రీసెట్ చెయ్యి';

  @override
  String get watchContinue => 'కొనసాగించు';

  @override
  String get watchStart => 'స్టార్ట్';

  @override
  String get watchPlay => 'ప్లే';

  @override
  String get watchRead => 'చదువు';

  @override
  String get watchMarkWatched => 'చూసినట్టు మార్క్ చెయ్యి';

  @override
  String get watchMarkUnwatched => 'చూడనట్టు మార్క్ చెయ్యి';

  @override
  String get watchMarkRead => 'చదివినట్టు మార్క్ చెయ్యి';

  @override
  String get watchMarkUnread => 'చదవనట్టు మార్క్ చెయ్యి';

  @override
  String get watchFiller => 'ఫిల్లర్';

  @override
  String get watchRecap => 'రీక్యాప్';

  @override
  String get watchNoEpisodes => 'ఎపిసోడ్లు దొరకలేదు';

  @override
  String get watchNoChapters => 'చాప్టర్లు దొరకలేదు';

  @override
  String get watchSourceTools => 'సోర్స్ టూల్స్';

  @override
  String get watchSourceSettings => 'సోర్స్ సెట్టింగ్స్';

  @override
  String get watchOpenWebView => 'వెబ్ వ్యూలో ఓపెన్ చెయ్యి';

  @override
  String get watchOpenWebViewDesc =>
      'Cloudflare చెక్ సాల్వ్ చెయ్యి లేదా లాగిన్ అవ్వు; కుకీలు సోర్స్ రిక్వెస్ట్‌లతో షేర్ అవుతాయి';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$host కోసం $count కుకీలు సేవ్ అయ్యాయి',
      one: '$host కోసం 1 కుకీ సేవ్ అయింది',
      zero: '$host కోసం కుకీలు సేవ్ కాలేదు',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Cloudflare క్లియరెన్స్ యాక్టివ్, $time';
  }

  @override
  String get watchClearanceMissing => 'Cloudflare క్లియరెన్స్ కుకీ లేదు';

  @override
  String get watchClearanceSession => 'యాప్ క్లోజ్ అయ్యే వరకు ఉంటుంది';

  @override
  String get watchAgentShared =>
      'రిక్వెస్ట్‌లు వెబ్ వ్యూ యూజర్ ఏజెంట్ వాడతాయి, Cloudflare దాన్ని చెక్ చేస్తుంది';

  @override
  String get watchAgentCustom =>
      'కస్టమ్ యూజర్ ఏజెంట్ సెట్ చేసి ఉంది, కాబట్టి వెబ్ వ్యూ నుండి వచ్చిన Cloudflare క్లియరెన్స్ రిజెక్ట్ అవ్వచ్చు';

  @override
  String get watchTestConnection => 'కనెక్షన్ టెస్ట్ చెయ్యి';

  @override
  String get watchSolveChallenge => 'సాల్వ్ చెయ్యి';

  @override
  String watchProbeOk(int code) {
    return 'రీచబుల్ (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare ఇంకా చెక్ అడుగుతోంది';

  @override
  String watchProbeBlocked(int code) {
    return 'సైట్ బ్లాక్ చేసింది (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'సైట్‌ని చేరుకోలేకపోయాం';

  @override
  String get watchClearCookies => 'ఈ సైట్ కుకీలు క్లియర్ చెయ్యి';

  @override
  String get watchCookiesCleared => 'కుకీలు క్లియర్ అయ్యాయి';

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
  String get watchMetaSource => 'ఎపిసోడ్ వివరాలు ఎక్కడ నుండి';

  @override
  String get watchMetaAuto => 'ఆటోమేటిక్';

  @override
  String get watchMetaOff => 'ఆఫ్';

  @override
  String get playerSettingsTitle => 'ప్లేయర్ సెట్టింగ్స్';

  @override
  String get playerSectionPlayback => 'ప్లేబ్యాక్';

  @override
  String get playerSectionSkip => 'స్కిప్పింగ్';

  @override
  String get playerSectionGestures => 'కంట్రోల్స్';

  @override
  String get playerSectionSubtitles => 'సబ్‌టైటిల్స్';

  @override
  String get playerSectionShaders => 'షేడర్లు';

  @override
  String get playerSectionEngine => 'ఇంజిన్';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'ప్లేబ్యాక్ స్పీడ్';

  @override
  String get playerCursedSpeed => 'ఎక్స్‌ట్రా స్పీడ్లు';

  @override
  String get playerCursedSpeedDesc => 'లిస్ట్‌కి 10x వరకు స్పీడ్లు యాడ్ చెయ్యి';

  @override
  String get playerResize => 'రీసైజ్ మోడ్';

  @override
  String get playerFitFit => 'ఫిట్';

  @override
  String get playerFitCover => 'కవర్';

  @override
  String get playerFitStretch => 'స్ట్రెచ్';

  @override
  String get playerSkipDuration => 'స్కిప్ బటన్ లెంగ్త్';

  @override
  String get playerSkipDurationDesc =>
      'ఓపెనింగ్స్, ఎండింగ్స్ బయట స్కిప్ బటన్ ఎన్ని సెకన్లు దూకుతుంది';

  @override
  String get playerSeekDuration => 'డబుల్ ట్యాప్ సీక్';

  @override
  String get playerSeekDurationDesc =>
      'డబుల్ ట్యాప్ లేదా యారో కీకి ఎన్ని సెకన్లు దూకాలి';

  @override
  String get playerAutoPlay => 'తర్వాతిది ఆటోమేటిక్‌గా ప్లే చెయ్యి';

  @override
  String get playerAutoPlayDesc => 'ఇది అయిపోగానే తర్వాతి ఎపిసోడ్ మొదలుపెట్టు';

  @override
  String get playerResume => 'ఆపిన చోట నుండి కొనసాగించు';

  @override
  String get playerResumeDesc => 'ఎపిసోడ్‌ని ఆఖరి పొజిషన్ నుండి కొనసాగించు';

  @override
  String get playerOrientation => 'ఓరియెంటేషన్';

  @override
  String get playerOrientationAuto => 'డివైస్‌ని ఫాలో అవ్వు';

  @override
  String get playerOrientationLandscape => 'ల్యాండ్‌స్కేప్';

  @override
  String get playerOrientationPortrait => 'పోర్ట్రెయిట్';

  @override
  String get playerAutoSkipOpening => 'ఓపెనింగ్స్ స్కిప్ చెయ్యి';

  @override
  String get playerAutoSkipEnding => 'ఎండింగ్స్ స్కిప్ చెయ్యి';

  @override
  String get playerAutoSkipRecap => 'రీక్యాప్‌లు స్కిప్ చెయ్యి';

  @override
  String get playerAutoSkipDesc =>
      'AniSkip, స్ట్రీమ్ టైమ్‌స్టాంపులు వాడి, మొదలైన వెంటనే దాటేయ్';

  @override
  String get playerSkipOnce => 'ఒక్కసారి మాత్రమే స్కిప్ చెయ్యి';

  @override
  String get playerSkipOnceDesc =>
      'నువ్వు వెనక్కి సీక్ చేసి అదే భాగంలోకి వస్తే మళ్ళీ స్కిప్ చేయకు';

  @override
  String get playerAdjustBrightness => 'బ్రైట్‌నెస్ జెస్చర్';

  @override
  String get playerAdjustBrightnessDesc =>
      'స్క్రీన్ కుడి సగంలో పైకి కిందకి స్వైప్ చెయ్యి';

  @override
  String get playerAdjustVolume => 'వాల్యూమ్ జెస్చర్';

  @override
  String get playerAdjustVolumeDesc =>
      'స్క్రీన్ ఎడమ సగంలో పైకి కిందకి స్వైప్ చెయ్యి';

  @override
  String get playerHoldToSpeed => 'హోల్డ్ చేసి స్పీడ్ పెంచు';

  @override
  String get playerHoldToSpeedDesc =>
      'వీడియోని వేగంగా ప్లే చేయడానికి నొక్కి పట్టుకో, స్పీడ్ మార్చడానికి పక్కకి డ్రాగ్ చెయ్యి';

  @override
  String get playerThumbless => 'మందమైన సీక్ బార్';

  @override
  String get playerThumblessDesc => 'థంబ్ లేని మందపాటి బార్';

  @override
  String get playerShowSubtitles => 'సబ్‌టైటిల్స్ చూపించు';

  @override
  String get playerShowSubtitlesDesc =>
      'అన్ని సబ్‌టైటిల్ ట్రాక్‌లు దాచడానికి ఆఫ్ చెయ్యి';

  @override
  String get playerSubtitleLanguage => 'ఇష్టమైన సబ్‌టైటిల్ భాష';

  @override
  String get playerSubtitleSize => 'సబ్‌టైటిల్ సైజ్';

  @override
  String get playerSubtitleWeight => 'సబ్‌టైటిల్ వెయిట్';

  @override
  String get playerSubtitleBottom => 'సబ్‌టైటిల్ బాటమ్ ప్యాడింగ్';

  @override
  String get playerSubtitleFont => 'సబ్‌టైటిల్ ఫాంట్';

  @override
  String get playerSubtitleColor => 'సబ్‌టైటిల్ కలర్';

  @override
  String get playerSubtitleBackground => 'సబ్‌టైటిల్ బ్యాక్‌గ్రౌండ్';

  @override
  String get playerSubtitleOutline => 'సబ్‌టైటిల్ అవుట్‌లైన్';

  @override
  String get playerLibass => 'libass వాడు';

  @override
  String get playerLibassDesc =>
      'స్టైల్ ఉన్న .ass సబ్‌టైటిల్స్ రెండర్ చెయ్యి. అప్పుడు పైన ఉన్న సైజ్, కలర్, ఫాంట్ వర్తించవు';

  @override
  String get playerShaders => 'షేడర్లు';

  @override
  String get playerShadersEnable => 'షేడర్లు ఎనేబుల్ చెయ్యి';

  @override
  String get playerShadersEnableDesc =>
      'Anime4K లాంటి GLSL షేడర్లతో పిక్చర్‌ని అప్‌స్కేల్ చేసి క్లీన్ చెయ్యి';

  @override
  String get playerShadersOff => 'షేడర్లు ఆఫ్';

  @override
  String get playerShadersMissing => 'Anime4K ఇన్‌స్టాల్ చేయలేదు';

  @override
  String get playerShadersMissingDesc =>
      'బిల్ట్-ఇన్ మోడ్స్ వాడాలంటే Anime4K షేడర్ ప్యాక్ (సుమారు 0.8 MB) డౌన్‌లోడ్ చెయ్యి.';

  @override
  String get playerShadersDownload => 'Anime4K డౌన్‌లోడ్ చెయ్యి';

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
  String get playerShadersPreview => 'ఈ ఫ్రేమ్‌లో ప్రివ్యూ చెయ్యి';

  @override
  String get playerShadersUse => 'ఇది వాడు';

  @override
  String get playerPicture => 'పిక్చర్';

  @override
  String get playerColors => 'రంగులు';

  @override
  String get playerColorDefault => 'డిఫాల్ట్';

  @override
  String get playerColorVivid => 'వివిడ్';

  @override
  String get playerColorPop => 'అనిమే పాప్';

  @override
  String get playerColorSoft => 'సాఫ్ట్';

  @override
  String get playerColorCinematic => 'సినిమాటిక్';

  @override
  String get playerColorBright => 'బ్రైట్';

  @override
  String get playerColorNight => 'నైట్';

  @override
  String get playerColorMono => 'మోనో';

  @override
  String get playerColorCustom => 'కస్టమ్';

  @override
  String get playerColorBrightness => 'బ్రైట్‌నెస్';

  @override
  String get playerColorContrast => 'కాంట్రాస్ట్';

  @override
  String get playerColorSaturation => 'శాచ్యురేషన్';

  @override
  String get playerColorGamma => 'గామా';

  @override
  String get playerColorHue => 'హ్యూ';

  @override
  String get playerColorReset => 'రీసెట్';

  @override
  String get playerColorAdjust => 'అడ్జస్ట్';

  @override
  String get playerShadersOriginal => 'ఒరిజినల్';

  @override
  String get playerShadersPreviewFailed =>
      'ప్రివ్యూ కోసం ఫ్రేమ్ పట్టుకోలేకపోయాం';

  @override
  String get playerShadersSoftware =>
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Only for a black video. Shaders don\'t work with it. Applies the next time the player opens';

  @override
  String get playerShadersCustomFiles => 'నీ షేడర్లు';

  @override
  String get playerShadersCustom => 'కస్టమ్ షేడర్లు';

  @override
  String get playerShadersImport => '.glsl ఇంపోర్ట్ చెయ్యి';

  @override
  String get playerShadersNone =>
      'నీ సొంత .glsl లేదా .hook ఫైల్స్ ఇంపోర్ట్ చేసి, చైన్ చేయడానికి టిక్ చెయ్యి';

  @override
  String get playerShadersBadFile => '.glsl లేదా .hook షేడర్ ఫైల్ ఎంచుకో';

  @override
  String get playerDecoder => 'డికోడర్';

  @override
  String get playerDecoderAuto => 'ఆటో';

  @override
  String get playerDecoderAutoSafe => 'ఆటో (సేఫ్)';

  @override
  String get playerDecoderSoftware => 'సాఫ్ట్‌వేర్';

  @override
  String get playerDecoderHardware => 'హార్డ్‌వేర్';

  @override
  String get playerDecoderHardwarePlus => 'హార్డ్‌వేర్+';

  @override
  String get playerVideoOutput => 'వీడియో అవుట్‌పుట్';

  @override
  String get playerAudioChannels => 'ఆడియో ఛానెల్స్';

  @override
  String get playerBuffer => 'బఫర్ సైజ్ (MB)';

  @override
  String get playerBufferDesc =>
      'స్ట్రీమ్ బఫర్ చేయడానికి ప్లేయర్ వాడగలిగే మెమరీ';

  @override
  String get playerUseMpvConf => 'mpv.conf వాడు';

  @override
  String get playerUseMpvConfDesc =>
      'ప్లేబ్యాక్ మొదలైనప్పుడు నీ mpv.confలోని ఆప్షన్లు అప్లై చెయ్యి';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'mpv కాన్ఫిగరేషన్ ఎడిట్ చెయ్యి';

  @override
  String get playerMpvConfDesc =>
      'ఒక లైన్‌కి ఒక ఆప్షన్, మామూలు mpv.confలో --hwdec=auto లాగా. [బ్రాకెట్లలో] ఉన్న ప్రొఫైల్స్ పట్టించుకోం.';

  @override
  String get playerMpvConfSaved => 'mpv.conf సేవ్ అయింది';

  @override
  String get playerUseScripts => 'mpv స్క్రిప్ట్‌లు వాడు';

  @override
  String get playerUseScriptsDesc =>
      'స్క్రిప్ట్స్ ఫోల్డర్‌లోని ప్లగిన్లు లోడ్ చెయ్యి. వాటికి Lua లేదా JavaScript సపోర్ట్ ఉన్న libmpv బిల్డ్ కావాలి';

  @override
  String get playerScripts => 'mpv స్క్రిప్ట్‌లు';

  @override
  String get playerScriptsManage =>
      'ప్లగిన్లు యాడ్ చెయ్యి, తీసేయ్, ఆన్/ఆఫ్ చెయ్యి';

  @override
  String get playerScriptsAdd => 'స్క్రిప్ట్ యాడ్ చెయ్యి';

  @override
  String get playerScriptsDesc =>
      'ఇక్కడ పెట్టిన Lua, JavaScript, నేటివ్ ప్లగిన్లు ప్లేబ్యాక్ మొదలైనప్పుడు లోడ్ అవుతాయి.';

  @override
  String get playerScriptsNone => 'ఇంకా స్క్రిప్ట్‌లు లేవు';

  @override
  String get playerScriptsBadFile =>
      '.lua, .js లేదా నేటివ్ ప్లగిన్ ఫైల్ ఎంచుకో';

  @override
  String get playerTuning => 'అడ్వాన్స్డ్ వీడియో ట్యూనింగ్';

  @override
  String get playerTuningDesc =>
      'సింక్, కాషింగ్, స్కేలింగ్, టోన్ మ్యాపింగ్ ఓవర్‌రైడ్ చెయ్యి. తప్పు వాల్యూలు ప్లేబ్యాక్‌ని పాడు చేయొచ్చు';

  @override
  String get playerVideoSync => 'వీడియో సింక్';

  @override
  String get playerInterpolation => 'ఫ్రేమ్ ఇంటర్పోలేషన్';

  @override
  String get playerInterpolationDesc =>
      'స్మూత్ మోషన్, display-resample సింక్ కావాలి';

  @override
  String get playerPitch => 'పిచ్ కరెక్షన్';

  @override
  String get playerPitchDesc => 'వేరే స్పీడ్లలో కూడా వాయిస్‌లు నేచురల్‌గా ఉంచు';

  @override
  String get playerCacheSeconds => 'కాష్ (సెకన్లు)';

  @override
  String get playerReadahead => 'రీడ్ అహెడ్ (సెకన్లు)';

  @override
  String get playerThreads => 'డికోడర్ థ్రెడ్లు';

  @override
  String get playerDeband => 'డీబ్యాండ్';

  @override
  String get playerDebandDesc => 'గ్రేడియంట్లలో కలర్ బ్యాండింగ్ తగ్గించు';

  @override
  String get playerDebandIterations => 'డీబ్యాండ్ ఇటరేషన్లు';

  @override
  String get playerDebandThreshold => 'డీబ్యాండ్ థ్రెషోల్డ్';

  @override
  String get playerCorrectDownscaling => 'కరెక్ట్ డౌన్‌స్కేలింగ్';

  @override
  String get playerSigmoid => 'సిగ్మాయిడ్ అప్‌స్కేలింగ్';

  @override
  String get playerScale => 'అప్‌స్కేలర్';

  @override
  String get playerCscale => 'క్రోమా అప్‌స్కేలర్';

  @override
  String get playerDscale => 'డౌన్‌స్కేలర్';

  @override
  String get playerToneMapping => 'టోన్ మ్యాపింగ్';

  @override
  String get playerTargetPeak => 'టార్గెట్ పీక్';

  @override
  String get playerOpenFiles => 'వీడియో ఫైల్స్ ఓపెన్ చెయ్యి';

  @override
  String get playerOpenFilesDesc => 'ఈ డివైస్‌లోని ఫైల్స్ ప్లే చెయ్యి';

  @override
  String get playerOpenFolder => 'ఫోల్డర్ ఓపెన్ చెయ్యి';

  @override
  String get playerOpenFolderDesc =>
      'ఫోల్డర్‌లోని ప్రతి వీడియోని ప్లేలిస్ట్‌గా ప్లే చెయ్యి';

  @override
  String get playerNetworkStream => 'నెట్‌వర్క్ స్ట్రీమ్';

  @override
  String get playerNetworkStreamDesc =>
      'డైరెక్ట్ వీడియో లేదా HLS లింక్ ఓపెన్ చెయ్యి';

  @override
  String get playerStreamUrl => 'స్ట్రీమ్ URL';

  @override
  String get playerStreamReferer => 'రెఫరర్ (ఆప్షనల్)';

  @override
  String get playerTorrent => 'టొరెంట్';

  @override
  String get playerTorrentDesc =>
      'మ్యాగ్నెట్ లింక్ లేదా .torrent ఫైల్ స్ట్రీమ్ చెయ్యి';

  @override
  String get playerMagnetLink => 'మ్యాగ్నెట్ లింక్ లేదా టొరెంట్ URL';

  @override
  String get playerPickTorrent => '.torrent ఫైల్ ఎంచుకో';

  @override
  String get playerTorrentMissing =>
      'ముందు సెట్టింగ్స్ > యాడాన్లలో టొరెంట్ యాడాన్ ఇన్‌స్టాల్ చెయ్యి';

  @override
  String get playerNoVideos => 'ప్లే చేయగల వీడియోలు దొరకలేదు';

  @override
  String get playerReset => 'ప్లేయర్ సెట్టింగ్స్ రీసెట్ చెయ్యి';

  @override
  String get playerResetDesc => 'ప్లేయర్ ఆప్షన్లన్నీ డిఫాల్ట్‌కి తీసుకురా';

  @override
  String get playerResetConfirm => 'ప్లేయర్ సెట్టింగ్స్ అన్నీ రీసెట్ చేయాలా?';

  @override
  String get playerResetDone => 'ప్లేయర్ సెట్టింగ్స్ రీసెట్ అయ్యాయి';

  @override
  String get playerQuality => 'క్వాలిటీ';

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
  String get playerStreams => 'స్ట్రీమ్స్';

  @override
  String get playerAutoSelect => 'స్ట్రీమ్ ఆటో సెలెక్ట్';

  @override
  String get playerAutoSelectDesc =>
      'ఈ టైటిల్‌కి నీ లాస్ట్ ఎంపికకు దగ్గరగా ఉన్న స్ట్రీమ్ ఎంచుకో';

  @override
  String get playerLoadingStreams => 'స్ట్రీమ్స్ వెతుకుతున్నాం…';

  @override
  String get playerNoStreams => 'ఈ ఎపిసోడ్‌కి స్ట్రీమ్స్ లేవు';

  @override
  String get playerNoStreamsTitle => 'స్ట్రీమ్స్ దొరకలేదు';

  @override
  String get playerFailed => 'ప్లేబ్యాక్ ఫెయిలైంది';

  @override
  String get playerTorrentNeeded => 'ఈ స్ట్రీమ్ ఒక టొరెంట్';

  @override
  String get playerTorrentNeededDesc =>
      'మ్యాగ్నెట్ లింకులు, .torrent ఫైల్స్ ప్లే చేయడానికి టొరెంట్ యాడాన్ ఇన్‌స్టాల్ చెయ్యి';

  @override
  String get playerOpenAddons => 'యాడాన్లు ఓపెన్ చెయ్యి';

  @override
  String get playerTryAnotherStream => 'వేరే స్ట్రీమ్ ట్రై చెయ్యి';

  @override
  String get playerEpisodes => 'ఎపిసోడ్లు';

  @override
  String get playerLock => 'కంట్రోల్స్ లాక్ చెయ్యి';

  @override
  String get playerFullscreen => 'ఫుల్‌స్క్రీన్';

  @override
  String get readerChapters => 'చాప్టర్లు';

  @override
  String get readerSettingsTitle => 'రీడర్ సెట్టింగ్స్';

  @override
  String get readerPreviousChapter => 'ముందు చాప్టర్';

  @override
  String get readerNextChapter => 'తర్వాతి చాప్టర్';

  @override
  String get readerFirstChapter => 'ఇదే మొదటి చాప్టర్';

  @override
  String get readerLastChapter => 'అన్నీ చదివేశావు';

  @override
  String get readerFailed => 'ఈ చాప్టర్ ఓపెన్ అవ్వలేదు';

  @override
  String get readerOpenBook => 'Open a book';

  @override
  String get readerOpenBookDesc =>
      'Read an epub (novel reader) or a PDF (manga reader) from your files';

  @override
  String get readerNoText => 'ఈ చాప్టర్‌లో టెక్స్ట్ లేదు';

  @override
  String get readerPerTitle => 'ఈ టైటిల్‌కి మాత్రమే';

  @override
  String get readerPerTitleDesc =>
      'ఈ రీడర్ సెట్టింగ్స్ ఈ టైటిల్‌కి మాత్రమే ఉంచు';

  @override
  String get readerSectionReading => 'రీడింగ్';

  @override
  String get readerSectionControls => 'కంట్రోల్స్';

  @override
  String get readerSectionDisplay => 'డిస్‌ప్లే';

  @override
  String get readerSectionNovel => 'నవల';

  @override
  String get readerMode => 'రీడింగ్ మోడ్';

  @override
  String get readerModeAuto => 'Auto (by series type)';

  @override
  String get readerModeRtl => 'కుడి నుండి ఎడమకి';

  @override
  String get readerModeLtr => 'ఎడమ నుండి కుడికి';

  @override
  String get readerModeVertical => 'వర్టికల్ పేజీలు';

  @override
  String get readerModeWebtoon => 'వెబ్‌టూన్';

  @override
  String get readerModeContinuous => 'కంటిన్యూస్ స్క్రోల్';

  @override
  String get readerScale => 'ఇమేజ్ స్కేల్';

  @override
  String get readerScaleFit => 'స్క్రీన్‌కి ఫిట్';

  @override
  String get readerScaleWidth => 'విడ్త్‌కి ఫిట్';

  @override
  String get readerScaleHeight => 'హైట్‌కి ఫిట్';

  @override
  String get readerScaleOriginal => 'ఒరిజినల్ సైజ్';

  @override
  String get readerScaleSmart => 'స్మార్ట్ ఫిట్';

  @override
  String get readerDoublePage => 'డబుల్ పేజీలు';

  @override
  String get readerDoublePageDesc =>
      'ల్యాండ్‌స్కేప్‌లో రెండు పేజీలు పక్కపక్కనే చూపించు';

  @override
  String get readerDoubleTapZoom => 'డబుల్ ట్యాప్‌తో జూమ్';

  @override
  String get readerDoubleTapZoomDesc =>
      'డబుల్ ట్యాప్‌తో పేజీని జూమ్ ఇన్/అవుట్ చెయ్యి';

  @override
  String get readerAnimate => 'పేజీ యానిమేషన్';

  @override
  String get readerAnimateDesc => 'పేజీ తిప్పడాన్ని యానిమేట్ చెయ్యి';

  @override
  String get readerSidePadding => 'సైడ్ ప్యాడింగ్';

  @override
  String get readerSidePaddingDesc => 'పేజీల పక్కన ఖాళీ, శాతంలో';

  @override
  String get readerPageGap => 'పేజీ గ్యాప్';

  @override
  String get readerPageGapDesc => 'పేజీల మధ్య ఖాళీ';

  @override
  String get readerAutoNext => 'తర్వాతి చాప్టర్‌లోకి కొనసాగించు';

  @override
  String get readerAutoNextDesc =>
      'ఈ చాప్టర్ చివర చదువుతున్నప్పుడే తర్వాతి చాప్టర్ లోడ్ చెయ్యి';

  @override
  String get readerPreload => 'పేజీలు ప్రీలోడ్ చెయ్యి';

  @override
  String get readerPreloadDesc => 'ముందుగా ఎన్ని పేజీలు డౌన్‌లోడ్ చేయాలి';

  @override
  String get readerTapZones => 'ట్యాప్ జోన్లు';

  @override
  String get readerTapDefault => 'డిఫాల్ట్';

  @override
  String get readerTapLShaped => 'L-ఆకారం';

  @override
  String get readerTapKindle => 'Kindle లాంటిది';

  @override
  String get readerTapEdge => 'అంచులు మాత్రమే';

  @override
  String get readerTapOff => 'డిసేబుల్';

  @override
  String get readerInvertTaps => 'ట్యాప్ జోన్లు రివర్స్ చెయ్యి';

  @override
  String get readerInvertTapsDesc => 'ముందు, తర్వాతి ఏరియాలు మార్చు';

  @override
  String get readerBackground => 'బ్యాక్‌గ్రౌండ్';

  @override
  String get readerBackgroundBlack => 'నలుపు';

  @override
  String get readerBackgroundGray => 'గ్రే';

  @override
  String get readerBackgroundWhite => 'తెలుపు';

  @override
  String get readerBackgroundTheme => 'యాప్ థీమ్';

  @override
  String get readerFilter => 'కలర్ ఫిల్టర్';

  @override
  String get readerFilterNone => 'ఏదీ లేదు';

  @override
  String get readerFilterGrayscale => 'గ్రేస్కేల్';

  @override
  String get readerFilterInvert => 'ఇన్వర్ట్';

  @override
  String get readerFilterSepia => 'సెపియా';

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
  String get readerDim => 'డిమ్';

  @override
  String get readerDimDesc => 'పేజీలను డార్క్ చెయ్యి';

  @override
  String get readerPageNumber => 'పేజీ నంబర్';

  @override
  String get readerPageNumberDesc => 'చదువుతున్నప్పుడు పేజీ నంబర్ చూపించు';

  @override
  String get readerFullscreen => 'ఫుల్‌స్క్రీన్';

  @override
  String get readerFullscreenDesc => 'సిస్టమ్ బార్లు దాచు';

  @override
  String get readerCropBorders => 'అంచులు క్రాప్ చెయ్యి';

  @override
  String get readerCropBordersDesc =>
      'పేజీల్లో ఖాళీ తెలుపు లేదా నలుపు మార్జిన్లు కత్తిరించు';

  @override
  String get readerLongPressSave => 'Hold a page to save it';

  @override
  String get readerLongPressSaveDesc =>
      'Long press a page to open save, share and copy options';

  @override
  String get readerVolumeKeys => 'వాల్యూమ్ కీలతో పేజీలు తిప్పు';

  @override
  String get readerVolumeKeysDesc =>
      'వాల్యూమ్ డౌన్ ముందుకి, వాల్యూమ్ అప్ వెనక్కి';

  @override
  String get readerBookmarks => 'బుక్‌మార్క్‌లు';

  @override
  String get readerBookmarkAdd => 'బుక్‌మార్క్ యాడ్ చెయ్యి';

  @override
  String get readerBookmarkRemove => 'బుక్‌మార్క్ తీసేయ్';

  @override
  String get readerBookmarksEmpty => 'ఇంకా బుక్‌మార్క్‌లు లేవు';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'పేజీ $page / $total';
  }

  @override
  String get readerAutoScroll => 'ఆటో స్క్రోల్';

  @override
  String get readerAutoScrollStop => 'ఆటో స్క్రోల్ ఆపు';

  @override
  String get readerAutoScrollSpeed => 'ఆటో స్క్రోల్ స్పీడ్';

  @override
  String get readerAutoScrollSpeedDesc =>
      'పేజీలు వాటంతట అవే ఎంత వేగంగా స్క్రోల్ లేదా టర్న్ అవ్వాలి';

  @override
  String get readerKeepOn => 'స్క్రీన్ ఆన్‌లో ఉంచు';

  @override
  String get readerKeepOnDesc => 'చదువుతున్నప్పుడు స్క్రీన్ ఆఫ్ అవ్వకుండా ఆపు';

  @override
  String get readerOrientation => 'ఓరియెంటేషన్';

  @override
  String get readerOrientationFree => 'ఫ్రీ';

  @override
  String get readerOrientationPortrait => 'పోర్ట్రెయిట్';

  @override
  String get readerOrientationLandscape => 'ల్యాండ్‌స్కేప్';

  @override
  String get readerSaveProgress => 'ప్రోగ్రెస్ సేవ్ చెయ్యి';

  @override
  String get readerSaveProgressDesc =>
      'నీ పేజీ గుర్తుంచుకో, చాప్టర్లను చదివినట్టు మార్క్ చెయ్యి';

  @override
  String get readerReset => 'రీడర్ సెట్టింగ్స్ రీసెట్ చెయ్యి';

  @override
  String get readerResetDesc => 'డిఫాల్ట్స్‌కి తిరిగి వెళ్ళు';

  @override
  String get novelSize => 'టెక్స్ట్ సైజ్';

  @override
  String get novelFont => 'ఫాంట్';

  @override
  String get novelLineHeight => 'లైన్ హైట్';

  @override
  String get novelParagraph => 'పేరాగ్రాఫ్ స్పేసింగ్';

  @override
  String get novelMargin => 'మార్జిన్లు';

  @override
  String get novelTheme => 'రీడర్ థీమ్';

  @override
  String get novelThemeApp => 'యాప్ థీమ్';

  @override
  String get novelThemeLight => 'లైట్';

  @override
  String get novelThemeSepia => 'సెపియా';

  @override
  String get novelThemeDark => 'డార్క్';

  @override
  String get novelThemeBlack => 'నలుపు';

  @override
  String get novelJustify => 'టెక్స్ట్ జస్టిఫై చెయ్యి';

  @override
  String get novelJustifyDesc => 'టెక్స్ట్‌ని రెండు అంచులకూ అలైన్ చెయ్యి';

  @override
  String get trackProgressTitle => 'ప్రోగ్రెస్ సేవ్ చేయాలా?';

  @override
  String trackProgressAnime(String name) {
    return 'నువ్వు చూస్తున్నప్పుడు $nameని నీ లిస్ట్‌లో ట్రాక్ చేయాలా? లోకల్‌గా ఉంచడానికి \"ఈ డివైస్ మాత్రమే\", ఏమీ సేవ్ చేయకూడదంటే \"కాదు\" ఎంచుకో.';
  }

  @override
  String trackProgressManga(String name) {
    return 'నువ్వు చాప్టర్ పూర్తి చేసినప్పుడు $nameని నీ లిస్ట్‌లో ట్రాక్ చేయాలా? లోకల్‌గా ఉంచడానికి \"ఈ డివైస్ మాత్రమే\", ఏమీ సేవ్ చేయకూడదంటే \"కాదు\" ఎంచుకో.';
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
  String get trackProgressYes => 'సేవ్';

  @override
  String get trackProgressReset =>
      'ఈ టైప్ కోసం సేవ్ ప్రోగ్రెస్ ప్రాంప్ట్ రీసెట్ అయింది, మళ్ళీ అడుగుతుంది';

  @override
  String get trackProgressNo => 'కాదు';

  @override
  String get trackProgressOff => 'ఆఫ్';

  @override
  String get trackProgressLocal => 'ఈ డివైస్ మాత్రమే';

  @override
  String get trackProgressSettingAnime => 'అనిమే ప్రోగ్రెస్ ట్రాక్ చెయ్యి';

  @override
  String get trackProgressSettingManga =>
      'మాంగా & నవల ప్రోగ్రెస్ ట్రాక్ చెయ్యి';

  @override
  String get trackProgressSettingDesc =>
      'ఎపిసోడ్ ఓపెన్ చేసినప్పుడు లేదా చాప్టర్ పూర్తి చేసినప్పుడు ఏం చేయాలి';

  @override
  String get trackProgressAsk => 'అడుగు';

  @override
  String get trackProgressAlways => 'ఎప్పుడూ';

  @override
  String get dantotsuImport => 'Dantotsu నుండి ఇంపోర్ట్ చెయ్యి';

  @override
  String get dantotsuImportDesc =>
      'Dantotsu సెట్టింగ్స్ బ్యాకప్ చదువు (.ani, లేదా ఎన్‌క్రిప్టెడ్ .sani)';

  @override
  String get dantotsuPick => 'Dantotsu బ్యాకప్ ఎంచుకో';

  @override
  String get dantotsuNothing => 'ఈ ఫైల్‌లో ఇంపోర్ట్ చేయడానికి ఏమీ లేదు';

  @override
  String get dantotsuApply => 'సెలెక్ట్ చేసినవి ఇంపోర్ట్ చెయ్యి';

  @override
  String dantotsuDone(int done, int total) {
    return '$totalలో $done ఇంపోర్ట్ అయ్యాయి';
  }

  @override
  String get dantotsuGroupAccounts => 'అకౌంట్లు';

  @override
  String get dantotsuGroupAppearance => 'లుక్';

  @override
  String get dantotsuGroupExtensions => 'ఎక్స్టెన్షన్లు';

  @override
  String get dantotsuGroupApp => 'యాప్';

  @override
  String get dantotsuGroupPlayer => 'ప్లేయర్';

  @override
  String get dantotsuAnilist => 'AniList లాగిన్';

  @override
  String get dantotsuMal => 'MyAnimeList లాగిన్';

  @override
  String get dantotsuDiscord => 'Discord Rich Presence టోకెన్';

  @override
  String get dantotsuTheme => 'థీమ్';

  @override
  String get dantotsuReposAnime => 'అనిమే ఎక్స్టెన్షన్ రిపోజిటరీలు';

  @override
  String get dantotsuReposManga => 'మాంగా ఎక్స్టెన్షన్ రిపోజిటరీలు';

  @override
  String get dantotsuReposNovel => 'నవల ఎక్స్టెన్షన్ రిపోజిటరీలు';

  @override
  String get dantotsuUpdates => 'అప్‌డేట్ చెక్';

  @override
  String get dantotsuComments => 'కామెంట్లు';

  @override
  String get dantotsuActivity => 'AniList నోటిఫికేషన్ పోలింగ్';

  @override
  String get dantotsuDns => 'DNS ప్రొవైడర్';

  @override
  String get dantotsuPlayer => 'ప్లేయర్ స్పీడ్, సబ్‌టైటిల్ రంగులు';

  @override
  String get dantotsuWarning =>
      'ఈ ఫైల్‌లో లాగిన్ టోకెన్లు ఉన్నాయి. ప్రైవేట్‌గా ఉంచు.';

  @override
  String get novelIndent => 'పేరాగ్రాఫ్‌లకు ఇండెంట్ ఇవ్వు';

  @override
  String get novelIndentDesc =>
      'ప్రతి పేరాగ్రాఫ్‌ని మొదటి లైన్ ఇండెంట్‌తో మొదలుపెట్టు';

  @override
  String get novelLetterSpacing => 'లెటర్ స్పేసింగ్';

  @override
  String get novelSectionTranslate => 'ట్రాన్స్‌లేషన్';

  @override
  String get sectionExperimental => 'ఎక్స్‌పెరిమెంటల్';

  @override
  String get kitsuGraphqlDetail => 'ఫాస్టర్ డీటెయిల్ పేజీలు (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'ఒక టైటిల్‌ని దాని క్యారెక్టర్లు, స్టాఫ్, నీ ఎంట్రీతో కలిపి ఒకే రిక్వెస్ట్‌లో లోడ్ చెయ్యి';

  @override
  String get togetherTitle => 'కలిసి చూద్దాం';

  @override
  String get togetherIntro =>
      'నీ ఫ్రెండ్ పంపిన రూమ్ లింక్ పేస్ట్ చెయ్యి. వెంటనే జాయిన్ అవుతావు, వాళ్ళు చూడటం మొదలుపెట్టగానే ప్లేయర్ ఓపెన్ అవుతుంది.';

  @override
  String get togetherName => 'నీ పేరు';

  @override
  String get togetherConnecting => 'కనెక్ట్ అవుతోంది…';

  @override
  String get togetherLeave => 'రూమ్ వదిలెయ్';

  @override
  String get togetherYou => 'నువ్వు';

  @override
  String get togetherNoChat => 'ఇంకా మెసేజ్‌లు లేవు';

  @override
  String get togetherChatHint => 'మెసేజ్';

  @override
  String get togetherCopyInvite => 'ఇన్వైట్ కాపీ చెయ్యి';

  @override
  String get togetherShareInvite => 'Share invite';

  @override
  String togetherShareText(String link) {
    return 'Watch with me on Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'సర్వర్, రూమ్ కాపీ అయ్యాయి';

  @override
  String get togetherConnectionLost => 'కనెక్షన్ పోయింది';

  @override
  String togetherConnectedTo(String room) {
    return '$roomకి కనెక్ట్ అయ్యావు';
  }

  @override
  String togetherFailed(String error) {
    return 'కనెక్ట్ కాలేదు: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name జాయిన్ అయ్యారు';
  }

  @override
  String togetherLeft(String name) {
    return '$name వెళ్ళిపోయారు';
  }

  @override
  String togetherPaused(String name) {
    return '$name పాజ్ చేశారు';
  }

  @override
  String togetherResumed(String name) {
    return '$name మళ్ళీ మొదలుపెట్టారు';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name $timeకి జంప్ చేశారు';
  }

  @override
  String get togetherFollowFailed =>
      'హోస్ట్ ఎపిసోడ్ ఓపెన్ చేయలేకపోయాం. నువ్వే ఓపెన్ చెయ్యి.';

  @override
  String get togetherJoinRole => 'రూమ్‌లో జాయిన్ అవ్వు';

  @override
  String get togetherOpenHost => 'హోస్ట్ ఎపిసోడ్ ఓపెన్ చెయ్యి';

  @override
  String get togetherShowChat => 'లైవ్ చాట్ చూపించు';

  @override
  String get togetherWaitingHost =>
      'హోస్ట్ ఎపిసోడ్ మొదలుపెట్టే వరకు వెయిట్ చేస్తున్నాం';

  @override
  String get togetherRoomLink => 'రూమ్ లింక్';

  @override
  String get togetherBadLink => 'అది రూమ్ లింక్ కాదు';

  @override
  String get togetherHostClosed => 'హోస్ట్ రూమ్ క్లోజ్ చేశారు';

  @override
  String get togetherNowPlaying => 'ఇప్పుడు ప్లే అవుతోంది';

  @override
  String togetherWatchingCount(int count) {
    return '$count మంది చూస్తున్నారు';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user పాజ్ చేయాలనుకుంటున్నారు';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user మళ్ళీ మొదలుపెట్టాలనుకుంటున్నారు';
  }

  @override
  String get togetherChip => 'టుగెదర్';

  @override
  String get togetherSettingsDesc => 'లింక్‌తో ఫ్రెండ్ రూమ్‌లో జాయిన్ అవ్వు';

  @override
  String get novelBilingual => 'ఒరిజినల్, ట్రాన్స్‌లేషన్ రెండూ చూపించు';

  @override
  String get novelBilingualDesc =>
      'ప్రతి పేరాగ్రాఫ్ ఒరిజినల్ టెక్స్ట్‌ని, కింద దాని ట్రాన్స్‌లేషన్‌ని చూపిస్తుంది';

  @override
  String get novelTranslateTo => 'దీనిలోకి ట్రాన్స్‌లేట్ చెయ్యి';

  @override
  String get novelTranslateOff => 'ఆఫ్';

  @override
  String get novelSectionSpeech => 'టెక్స్ట్ టు స్పీచ్';

  @override
  String get novelSpeechRate => 'స్పీచ్ స్పీడ్';

  @override
  String get novelSpeechPitch => 'స్పీచ్ పిచ్';

  @override
  String get novelSpeak => 'గట్టిగా చదువు';

  @override
  String get novelSpeakStop => 'గట్టిగా చదవడం ఆపు';

  @override
  String get novelTranslate => 'చాప్టర్ ట్రాన్స్‌లేట్ చెయ్యి';

  @override
  String get novelTranslateShowOriginal => 'ఒరిజినల్ చూపించు';

  @override
  String novelTranslateFailed(String error) {
    return 'ట్రాన్స్‌లేషన్ ఫెయిలైంది: $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'ఈ డివైస్‌లో టెక్స్ట్ టు స్పీచ్ అందుబాటులో లేదు';

  @override
  String get novelSpeechVoice => 'వాయిస్';

  @override
  String get novelSpeechVoiceDefault => 'సిస్టమ్ డిఫాల్ట్';

  @override
  String get novelSpeakPrevious => 'ముందు లైన్';

  @override
  String get novelSpeakNext => 'తర్వాతి లైన్';

  @override
  String get novelTapPaging => 'పేజీ తిప్పడానికి అంచులు ట్యాప్ చెయ్యి';

  @override
  String get novelTapPagingDesc =>
      'ఎడమ లేదా కుడి వైపు ట్యాప్ చేస్తే ఒక పేజీ స్క్రోల్ అవుతుంది, మధ్యలో కంట్రోల్స్ కనిపిస్తాయి';

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
    return '$count నిమిషాలు మిగిలాయి';
  }

  @override
  String get novelBold => 'బోల్డ్ టెక్స్ట్';

  @override
  String get novelBoldDesc => 'మందమైన వెయిట్ వాడు';

  @override
  String readerFinishedChapter(String chapter) {
    return '$chapter పూర్తయింది';
  }

  @override
  String readerNextUp(String chapter) {
    return 'తర్వాత: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'ముందు: $chapter';
  }

  @override
  String get readerNoPages => 'ఈ చాప్టర్‌లో పేజీలు లేవు';

  @override
  String get readerLoadingPages => 'పేజీలు లోడ్ అవుతున్నాయి…';

  @override
  String get readerSlowPage => 'ఈ పేజీ ఇంకా లోడ్ అవుతోంది…';

  @override
  String get readerPageFailed => 'ఈ పేజీ లోడ్ అవ్వలేదు';

  @override
  String get playerShowComments => 'కామెంట్లు చూపించు';

  @override
  String get playerHideComments => 'కామెంట్లు దాచు';

  @override
  String get playerSubtitles => 'సబ్‌టైటిల్స్';

  @override
  String get playerSubtitlesOff => 'సబ్‌టైటిల్స్ ఆఫ్';

  @override
  String get playerAudio => 'ఆడియో';

  @override
  String get playerAddSubtitle => 'సబ్‌టైటిల్ ఫైల్ యాడ్ చెయ్యి';

  @override
  String get playerAddAudio => 'ఆడియో ఫైల్ యాడ్ చెయ్యి';

  @override
  String get playerChapters => 'చాప్టర్లు';

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
  String get playerNoChapters => 'చాప్టర్లు లేవు';

  @override
  String get playerTimestamp => 'టైమ్‌స్టాంప్';

  @override
  String get playerAutoPlayDelay => 'తర్వాతి ఎపిసోడ్ కౌంట్‌డౌన్';

  @override
  String get playerWatchedAt => 'దీని దగ్గర చూసినట్టు లెక్కించు';

  @override
  String playerNextIn(int seconds) {
    return 'తర్వాతి ఎపిసోడ్ $secondsసె లో';
  }

  @override
  String get playerPlayNow => 'ఇప్పుడే ప్లే చెయ్యి';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: ఈ టైటిల్‌కి ఆటోమేటిక్‌గా స్కిప్ అవుతుంది';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: ఈ టైటిల్‌కి ఆటోమేటిక్‌గా స్కిప్ అవ్వదు';
  }

  @override
  String get playerAudioLanguage => 'ఇష్టమైన ఆడియో భాష';

  @override
  String get playerLanguageOrderHint =>
      'భాషలను కామాలతో వేరు చెయ్యి. దొరికిన మొదటిది వాడతాం.';

  @override
  String get playerPip => 'పిక్చర్ ఇన్ పిక్చర్';

  @override
  String get playerAutoPip => 'వెళ్ళిపోతే పిక్చర్ ఇన్ పిక్చర్';

  @override
  String get playerAutoPipDesc =>
      'యాప్ నుండి బయటికి వెళ్ళినా చిన్న విండోలో ప్లే అవుతూనే ఉంటుంది';

  @override
  String playerAutoPlaying(String title) {
    return 'తర్వాత $title ప్లే అవుతోంది…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'షేడర్లు ఇన్‌స్టాల్ చేయలేకపోయాం: $error';
  }

  @override
  String playerChapter(int number) {
    return 'చాప్టర్ $number';
  }

  @override
  String get playerPerTitle => 'ఈ టైటిల్‌కి మాత్రమే';

  @override
  String get playerPerTitleDesc =>
      'ఈ ఆప్షన్లు ఈ టైటిల్‌కి ఉంచు, నీ డిఫాల్ట్స్‌ని ముట్టుకోకు';

  @override
  String get playerSwapGestures => 'స్వైప్ వైపులు మార్చు';

  @override
  String get playerSwapGesturesDesc =>
      'ఎడమ వైపు బ్రైట్‌నెస్, కుడి వైపు వాల్యూమ్';

  @override
  String get playerOpenBig => 'పెద్ద వ్యూలో తెరవండి';

  @override
  String get playerOpenBigDesc =>
      'ఎపిసోడ్ లిస్ట్ లేకుండా ప్లేయర్‌ను నేరుగా ఫుల్‌స్క్రీన్‌లో మొదలుపెడుతుంది';

  @override
  String get playerPauseOnBlur => 'ఫోకస్ పోతే పాజ్ చేయి';

  @override
  String get playerPauseOnBlurDesc =>
      'నోటిఫికేషన్ ప్యానెల్ లాంటివి యాప్‌ను కప్పేస్తే పాజ్ అవుతుంది, తిరిగి రాగానే కొనసాగుతుంది';

  @override
  String get playerAudioOutput => 'ఆడియో అవుట్‌పుట్';

  @override
  String get fontAppDefault => 'యాప్ ఫాంట్';

  @override
  String get fontImport => 'ఫాంట్ ఇంపోర్ట్ చెయ్యి';

  @override
  String get fontSample => 'The quick brown fox jumps over the lazy dog';

  @override
  String get playerSubtitleDelay => 'సబ్‌టైటిల్ డిలే';

  @override
  String get playerAudioDelay => 'ఆడియో డిలే';

  @override
  String get playerDelayReset => 'రీసెట్';

  @override
  String get playerOnlineSubtitles => 'ఆన్‌లైన్ సబ్‌టైటిల్స్';

  @override
  String get playerOnlineSearchHint => 'టైటిల్ & ఎపిసోడ్';

  @override
  String get playerOnlineNone => 'సబ్‌టైటిల్స్ దొరకలేదు';

  @override
  String playerOnlineFailed(String error) {
    return 'సబ్‌టైటిల్ సెర్చ్ ఫెయిలైంది: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'ఈ సబ్‌టైటిల్ డౌన్‌లోడ్ చేయలేకపోయాం: $error';
  }

  @override
  String get playerOnlineMatch => 'ఈ ఫైల్‌కి మ్యాచ్ అవుతుంది';

  @override
  String get playerOnlineEpisode => 'ఎపిసోడ్ మ్యాచ్';

  @override
  String playerOnlineDownloads(int count) {
    return '$count డౌన్‌లోడ్లు';
  }

  @override
  String get playerSeekPreview => 'సీక్ ప్రివ్యూ';

  @override
  String get playerSeekPreviewDesc =>
      'స్క్రబ్ చేస్తున్నప్పుడు సీక్ బార్ పైన చిన్న ఫ్రేమ్ ప్రివ్యూ చూపించు. రెండో లో-రెజల్యూషన్ డికోడర్ ఓపెన్ చేస్తుంది, కాబట్టి స్ట్రీమ్స్‌లో ఎక్స్‌ట్రా డేటా వాడుతుంది.';

  @override
  String get playerSettingsChip => 'సెట్టింగ్స్';

  @override
  String get playerAudioDevice => 'ఆడియో డివైస్';

  @override
  String get settingsDownloads => 'డౌన్‌లోడ్లు';

  @override
  String get settingsDownloadsDesc => 'ఆఫ్‌లైన్ ఎపిసోడ్లు, క్యూ, ఆఫ్‌లైన్ మోడ్';

  @override
  String get downloadsTitle => 'డౌన్‌లోడ్లు';

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
  String get downloadsOpenDesc => 'క్యూ, ఈ డివైస్‌లో సేవ్ అయినవన్నీ చూడు';

  @override
  String get downloadTitle => 'డౌన్‌లోడ్';

  @override
  String get downloadAlready => 'ఇప్పటికే డౌన్‌లోడ్ అయింది లేదా క్యూలో ఉంది';

  @override
  String get downloadPickStream => 'ఏ స్ట్రీమ్ డౌన్‌లోడ్ చేయాలి?';

  @override
  String get downloadPickSubtitle => 'ఏ సబ్‌టైటిల్ డౌన్‌లోడ్ చేయాలి?';

  @override
  String get downloadPickAudio => 'ఏ ఆడియో ట్రాక్ డౌన్‌లోడ్ చేయాలి?';

  @override
  String get downloadNoAudio => 'ఎక్స్‌ట్రా ఆడియో లేదు';

  @override
  String get downloadAudio => 'ఆడియో';

  @override
  String get downloadNoSubtitle => 'సబ్‌టైటిల్ లేదు';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'ఈ స్ట్రీమ్ ఒక HLS ప్లేలిస్ట్. డౌన్‌లోడ్ చేయాలంటే FFmpeg యాడాన్ కావాలి.';

  @override
  String get downloadSourceMissing => 'ఈ ఎపిసోడ్ సోర్స్ ఇన్‌స్టాల్ చేయలేదు';

  @override
  String get downloadWaitingConnection => 'కనెక్షన్ కోసం వెయిట్ చేస్తున్నాం';

  @override
  String get downloadSubtitles => 'సబ్‌టైటిల్స్';

  @override
  String get downloadDownloaded => 'డౌన్‌లోడ్ అయింది';

  @override
  String get downloadOffline => 'ఆఫ్‌లైన్';

  @override
  String get downloadDelete => 'డౌన్‌లోడ్ డిలీట్ చెయ్యి';

  @override
  String get downloadCancel => 'క్యాన్సిల్';

  @override
  String get downloadPause => 'పాజ్';

  @override
  String get downloadPaused => 'పాజ్ అయింది';

  @override
  String get downloadResume => 'రెజ్యూమ్';

  @override
  String get downloadPauseAll => 'అన్నీ పాజ్ చెయ్యి';

  @override
  String get downloadResumeAll => 'అన్నీ రెజ్యూమ్ చెయ్యి';

  @override
  String get downloadQueuedState => 'క్యూలో వెయిట్ చేస్తోంది';

  @override
  String get downloadResolving => 'స్ట్రీమ్ తెస్తున్నాం…';

  @override
  String get downloadUsedFallback =>
      'మ్యాచ్ అయ్యే స్ట్రీమ్ లేదు, మొదటిది వాడాం';

  @override
  String get downloadTabQueue => 'క్యూ';

  @override
  String get downloadTabDone => 'అయిపోయింది';

  @override
  String get downloadTabFailed => 'ఫెయిలైంది';

  @override
  String get downloadEmptyQueue => 'ఏదీ డౌన్‌లోడ్ అవ్వట్లేదు';

  @override
  String get downloadEmptyDone => 'ఇంకా ఏదీ డౌన్‌లోడ్ కాలేదు';

  @override
  String get downloadEmptyFailed => 'ఫెయిలైన డౌన్‌లోడ్లు లేవు';

  @override
  String get downloadNext => 'తర్వాతి ఎపిసోడ్';

  @override
  String downloadNextN(int count) {
    return 'తర్వాతి $count ఎపిసోడ్లు';
  }

  @override
  String downloadUnwatched(int count) {
    return 'చూడనివన్నీ ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'ఈ రేంజ్ ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'అన్ని ఎపిసోడ్లు ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ఎపిసోడ్లు క్యూలో ఉన్నాయి',
      one: '1 ఎపిసోడ్ క్యూలో ఉంది',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name డౌన్‌లోడ్ అయింది';
  }

  @override
  String downloadFailedBody(String name) {
    return '$name డౌన్‌లోడ్ ఫెయిలైంది';
  }

  @override
  String downloadStorage(String size) {
    return 'డౌన్‌లోడ్లు $size తీసుకున్నాయి';
  }

  @override
  String get downloadQueueHeader => 'క్యూ';

  @override
  String get downloadParallel => 'ఒకేసారి డౌన్‌లోడ్లు';

  @override
  String get downloadParallelDesc =>
      'ఒక్కో డౌన్‌లోడ్ నడపాలా లేక కొన్నింటిని కలిపి నడపాలా';

  @override
  String get downloadOneByOne => 'ఒక్కొక్కటిగా';

  @override
  String get downloadNotifications => 'డౌన్‌లోడ్ నోటిఫికేషన్లు';

  @override
  String get downloadNotificationsDesc =>
      'సిస్టమ్ సపోర్ట్ చేస్తే లైవ్ ప్రోగ్రెస్, లేకపోతే డౌన్‌లోడ్ అయ్యాక ఒక నోట్';

  @override
  String get downloadNotifyLive => 'లైవ్';

  @override
  String get downloadNotifyDone => 'అయ్యాక';

  @override
  String get downloadNotifyOff => 'ఆఫ్';

  @override
  String get downloadInfoFile => 'ప్రతి డౌన్‌లోడ్ పక్కన ఇన్ఫో ఫైల్ రాయి';

  @override
  String get downloadInfoFileDesc =>
      'స్ట్రీమ్, క్వాలిటీ, సబ్‌టైటిల్, స్కిప్ టైమ్స్‌ని చిన్న .json ఫైల్‌గా సేవ్ చేస్తుంది';

  @override
  String get offlineHeader => 'ఆఫ్‌లైన్';

  @override
  String get offlineModeDesc =>
      'ఆటో అంటే యాప్ కనెక్షన్ లేకుండా స్టార్ట్ అయినప్పుడు మాత్రమే ఆఫ్‌లైన్‌కి వెళ్తుంది. ఆల్వేస్ అంటే నువ్వు మార్చే వరకు ఆఫ్‌లైన్‌లోనే ఉంటుంది.';

  @override
  String get offlineModeOff => 'ఆఫ్';

  @override
  String get offlineModeAlways => 'ఆల్వేస్';

  @override
  String get offlineModeOn =>
      'ఆఫ్‌లైన్ మోడ్ ఆన్‌లో ఉంది. మార్పులు ఇక్కడ సేవ్ అవుతాయి, ఆన్‌లైన్‌కి వచ్చాక పంపబడతాయి.';

  @override
  String get offlineSaved =>
      'ఈ డివైస్‌లో సేవ్ అయింది, ఆన్‌లైన్‌లోకి వచ్చాక సింక్ అవుతుంది';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count మార్పులు సింక్ అయ్యాయి',
      one: '1 మార్పు సింక్ అయింది',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count మార్పులు సింక్ కోసం వెయిట్ చేస్తున్నాయి',
      one: '1 మార్పు సింక్ కోసం వెయిట్ చేస్తోంది',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'సింక్ కోసం వెయిట్ చేస్తున్న మార్పులు';

  @override
  String get offlinePendingNone => 'ఏదీ వెయిట్ చేయట్లేదు';

  @override
  String get offlineSyncNow => 'ఇప్పుడే సింక్ చెయ్యి';

  @override
  String get offlineDiscard => 'పారేయ్';

  @override
  String get downloadNotOffline =>
      'ఈ ఎపిసోడ్ డౌన్‌లోడ్ చేయలేదు, కాబట్టి ఆఫ్‌లైన్‌లో అందుబాటులో లేదు';

  @override
  String get offlineModeChip => 'ఆఫ్‌లైన్';

  @override
  String get downloadNextChapter => 'తర్వాతి చాప్టర్';

  @override
  String downloadNextChapters(int count) {
    return 'తర్వాతి $count చాప్టర్లు';
  }

  @override
  String downloadUnread(int count) {
    return 'చదవనివన్నీ ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'అన్ని చాప్టర్లు ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total పేజీలు';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count పేజీలు';
  }

  @override
  String get downloadFfmpegTitle => 'FFmpeg యాడాన్ కావాలి';

  @override
  String get downloadFfmpegBody =>
      'ఈ స్ట్రీమ్ ఒక HLS ప్లేలిస్ట్. FFmpeg యాడాన్ దాని ముక్కలను ఒక mp4 ఫైల్‌గా కలుపుతుంది. అది లేకపోతే ముక్కలు ఎపిసోడ్ ఫోల్డర్‌లో ఉండి, అక్కడి నుండే ప్లే అవుతాయి.';

  @override
  String get downloadFfmpegInstall => 'ఇన్‌స్టాల్';

  @override
  String get downloadFfmpegInstalling =>
      'FFmpeg ఇన్‌స్టాల్ అవుతోంది, కొంచెం టైమ్ పట్టొచ్చు…';

  @override
  String get downloadFinishing => 'ముక్కలను ఒక ఫైల్‌గా కలుపుతున్నాం…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total భాగాలు';
  }

  @override
  String get downloadTorrentNoFile =>
      'ఈ టొరెంట్‌లో డౌన్‌లోడ్ చేయడానికి వీడియో ఫైల్ లేదు';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ఐటమ్స్ డౌన్‌లోడ్ అవుతున్నాయి',
      one: '1 ఐటమ్ డౌన్‌లోడ్ అవుతోంది',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'చూసిన డౌన్‌లోడ్లు డిలీట్ చెయ్యి';

  @override
  String get downloadAutoDeleteDesc =>
      'నీ ప్రోగ్రెస్ ఆ ఎపిసోడ్ లేదా చాప్టర్ దాటగానే డౌన్‌లోడ్ తీసేస్తుంది';

  @override
  String get downloadConnections => 'ఒక్కో డౌన్‌లోడ్‌కి కనెక్షన్లు';

  @override
  String get downloadConnectionsDesc =>
      'పెద్ద ఫైల్‌ని ఒకేసారి తెచ్చే ముక్కలుగా చేస్తుంది. కొన్ని సర్వర్లు దీన్ని లిమిట్ చేస్తాయి.';

  @override
  String get downloadPlayChoice => 'ఎక్కడ నుండి ప్లే చేయాలి';

  @override
  String get downloadPlayLocalDesc => 'ఈ డివైస్‌లో సేవ్ అయిన ఫైల్';

  @override
  String get downloadPlayStream => 'ఆన్‌లైన్‌లో స్ట్రీమ్ చెయ్యి';

  @override
  String get downloadPlayStreamDesc => 'సోర్స్ నుండి ఎపిసోడ్ లోడ్ చెయ్యి';

  @override
  String get offlineFeedTitle => 'ఈ డివైస్‌లో డౌన్‌లోడ్ అయినవి';

  @override
  String get offlineFeedEmpty =>
      'ఆన్‌లైన్‌లో ఉన్నప్పుడు ఏదైనా డౌన్‌లోడ్ చెయ్యి, అది ఇక్కడ కనిపిస్తుంది';

  @override
  String get offlineEnabled => 'ఆఫ్‌లైన్ మోడ్ ఆన్‌లో ఉంది';

  @override
  String get offlineDisabled => 'ఆఫ్‌లైన్ మోడ్ ఆఫ్‌లో ఉంది';

  @override
  String get downloadReadChoice => 'ఎక్కడ నుండి చదవాలి';

  @override
  String get downloadReadLocalDesc => 'ఈ డివైస్‌లో సేవ్ అయిన పేజీలు';

  @override
  String get downloadReadOnline => 'ఆన్‌లైన్‌లో చదువు';

  @override
  String get downloadReadOnlineDesc => 'సోర్స్ నుండి చాప్టర్ లోడ్ చెయ్యి';

  @override
  String downloadDeleteConfirm(String name) {
    return '$nameని ఈ డివైస్ నుండి డిలీట్ చేయాలా?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return '$name డౌన్‌లోడ్ క్యాన్సిల్ చేయాలా? ఇప్పటికే డౌన్‌లోడ్ అయినది డిలీట్ అవుతుంది.';
  }

  @override
  String get downloadFfmpegFolder => 'ఫోల్డర్‌గా ఉంచు';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'ఎప్పటికీ పంపని $count మార్పులను పారేయాలా? దీన్ని వెనక్కి తీసుకోలేవు.',
      one: 'ఎప్పటికీ పంపని మార్పుని పారేయాలా? దీన్ని వెనక్కి తీసుకోలేవు.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Wi-Fi కోసం వెయిట్ చేస్తోంది';

  @override
  String get downloadWaitingMetered => 'మీటర్డ్ కనెక్షన్‌లో పాజ్ అయింది';

  @override
  String get downloadWifiOnly => 'Wi-Fi మాత్రమే';

  @override
  String get downloadWifiOnlyDesc =>
      'మొబైల్ డేటాలో ఉన్నప్పుడు డౌన్‌లోడ్లు వెయిట్ చేస్తాయి';

  @override
  String get downloadMetered => 'మీటర్డ్ కనెక్షన్లలో పాజ్ చెయ్యి';

  @override
  String get downloadMeteredDesc =>
      'నీ డివైస్ మీటర్డ్‌గా మార్క్ చేసిన Wi-Fiలో కూడా వెయిట్ చేస్తుంది';

  @override
  String get downloadSpeedLimit => 'స్పీడ్ లిమిట్';

  @override
  String get downloadSpeedLimitDesc =>
      'మొత్తం డౌన్‌లోడ్ స్పీడ్‌కి క్యాప్ పెడుతుంది';

  @override
  String get downloadUnlimited => 'అన్‌లిమిటెడ్';

  @override
  String get downloadMoveToTop => 'పైకి తీసుకెళ్ళు';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds సీడ్స్ · $peers పీర్స్';
  }

  @override
  String get downloadTorrentFile => 'ఏ ఫైల్?';

  @override
  String get downloadTorrentAuto => 'ఎపిసోడ్‌ని ఆటోమేటిక్‌గా మ్యాచ్ చెయ్యి';

  @override
  String get downloadTorrentLoading => 'టొరెంట్ చదువుతున్నాం…';

  @override
  String get watchAutoSource => 'తర్వాతి సోర్స్‌కి ఆటోమేటిక్‌గా మారు';

  @override
  String get watchAutoSourceDesc =>
      'సోర్స్‌లో టైటిల్ దొరకకపోయినా లేదా లోడ్ అవ్వకపోయినా, ఇన్‌స్టాల్ చేసిన తర్వాతి సోర్స్ ట్రై చెయ్యి';

  @override
  String get extensionTest => 'ఎక్స్టెన్షన్లు టెస్ట్ చెయ్యి';

  @override
  String get extensionTestCopy => 'ఫెయిల్యూర్లు, వాటి లాగ్స్ కాపీ చెయ్యి';

  @override
  String get extensionTestQuery => 'సెర్చ్ టర్మ్';

  @override
  String get extensionTestRun => 'రన్';

  @override
  String get extensionTestStop => 'ఆపు';

  @override
  String get extensionTestNone => 'ఈ టైప్ ఎక్స్టెన్షన్లు ఇన్‌స్టాల్ చేయలేదు';

  @override
  String get extensionTestNotRun => 'ఇంకా టెస్ట్ చేయలేదు';

  @override
  String get extensionTestSearch => 'సెర్చ్';

  @override
  String get extensionTestDetail => 'వివరాలు';

  @override
  String get extensionTestUnits => 'ఎపిసోడ్లు / చాప్టర్లు';

  @override
  String get extensionTestLinks => 'స్ట్రీమ్స్ / పేజీలు';

  @override
  String extensionTestFailedAt(String step) {
    return '$step దగ్గర ఫెయిలైంది';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$totalలో $done టెస్ట్ చేశాం · $passed పాస్ · $failed ఫెయిల్';
  }

  @override
  String get extensionTestCopyLogs => 'ఫుల్ లాగ్స్‌తో అన్నీ కాపీ చెయ్యి';

  @override
  String get onboardingFeaturesTitle => 'అన్నీ ఒకే చోట';

  @override
  String get onboardingFeaturesBody =>
      'నువ్వు ట్రాక్ చేసేవి, చూసేవి, చదివేవి అన్నీ, యాప్‌లు మారుస్తూ కష్టపడకుండా.';

  @override
  String get onboardingFeatureTrack => 'అన్నీ ట్రాక్ చెయ్యి';

  @override
  String get onboardingFeatureTrackDesc =>
      'AniList, MyAnimeList, Simkl, Kitsu, MangaBakaలో లిస్ట్‌లు, ప్రోగ్రెస్, స్కోర్లు.';

  @override
  String get onboardingFeatureWatch => 'చూడు & చదువు';

  @override
  String get onboardingFeatureWatchDesc =>
      'ఎక్స్టెన్షన్లు ఇన్‌స్టాల్ చేసి, అనిమే స్ట్రీమ్ చెయ్యి లేదా మాంగా, నవలలు నేరుగా యాప్‌లోనే చదువు.';

  @override
  String get onboardingFeatureOffline => 'ఆఫ్‌లైన్‌లో తీసుకెళ్ళు';

  @override
  String get onboardingFeatureOfflineDesc =>
      'ఎపిసోడ్లు, చాప్టర్లు డౌన్‌లోడ్ చేసుకుని, కనెక్షన్ లేకపోయినా కొనసాగించు.';

  @override
  String get onboardingFeatureSync => 'లిస్ట్‌లు సింక్‌లో ఉంచు';

  @override
  String get onboardingFeatureSyncDesc =>
      'నీ లిస్ట్‌ని సర్వీసుల మధ్య మిర్రర్ చెయ్యి, లేదా ఏది ముందుంటే అది గెలవనివ్వు.';

  @override
  String get onboardingServices => 'వీటితో పనిచేస్తుంది';

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
