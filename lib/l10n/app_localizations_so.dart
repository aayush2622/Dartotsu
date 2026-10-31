// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Somali (`so`).
class AppLocalizationsSo extends AppLocalizations {
  AppLocalizationsSo([String locale = 'so']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'Barnaamijka CUSUB ee ugu fiican\nee la socodka Anime & Manga';

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
  String get loadMore => 'Soo rar kuwo kale';

  @override
  String get login => 'Gal';

  @override
  String get continueAsGuest => 'Ku sii wad marti ahaan';

  @override
  String get getStarted => 'Bilow';

  @override
  String get loginWithToken => 'Ku gal token';

  @override
  String get pasteTokenHint => 'Halkan ku dheji token-kaaga gelitaanka';

  @override
  String loginTo(String service) {
    return 'Ku gal $service';
  }

  @override
  String get settings => 'Dejimaha';

  @override
  String get account => 'Akoon';

  @override
  String get about => 'Ku saabsan';

  @override
  String get language => 'Luqad';

  @override
  String get animationSpeed => 'Animation-ka';

  @override
  String get animationSpeedDesc =>
      'Xawaaraha kala-gudbidda iyo saameynta soo-gelidda app-ka oo dhan';

  @override
  String get animationSpeedOff => 'Dami';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kordhimo',
      one: 'Kordhin',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'Isha aan la aqoon';

  @override
  String get install => 'Rakib';

  @override
  String get update => 'Cusboonaysii';

  @override
  String get uninstall => 'Ka saar';

  @override
  String get updateInstallCancelled =>
      'Rakibaadda waa la joojiyay. Haddii Android ku yidhi app-kan wuu ka hor imanayaa kii hore ee la rakibay, saxiixu waa kala duwan yahay: marka hore tirtir nooca hadda jira, kadibna rakib cusboonaysiinta';

  @override
  String updateInstallFailed(String error) {
    return 'Cusboonaysiintii waa fashilantay: $error';
  }

  @override
  String get appLock => 'Qufulka app-ka';

  @override
  String get appLockDesc =>
      'Weydii passcode marka app-ka la furo ama marka aad dib ugu soo noqoto ka dib mudo';

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
  String get appLockUnlock => 'Geli passcode-kaaga';

  @override
  String get appLockWrong => 'Passcode-ku waa khalad';

  @override
  String appLockWait(String seconds) {
    return 'Isku day badan, sug ${seconds}s';
  }

  @override
  String get appLockNew => 'Dooro passcode';

  @override
  String get appLockNewHint => '4 ilaa 8 lambar';

  @override
  String get appLockConfirm => 'Mar kale geli';

  @override
  String get appLockMismatch => 'Passcode-yadu isma waafaqaan';

  @override
  String get appLockOn => 'Passcode waa la dejiyay';

  @override
  String get appLockRemoveTitle =>
      'Geli passcode-kaaga si aad qufulka u damiso';

  @override
  String get installFailed => 'Rakibiddu way fashilantay';

  @override
  String get updateFailed => 'Cusboonaysiintu way fashilantay';

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
  String get noSourceSettings => 'Isha dejimo ma leh';

  @override
  String get addPluginRepository => 'Ku dar kayd plugin';

  @override
  String get pluginIndexUrlHint => 'URL-ka tusaha plugin-ka';

  @override
  String get addRepository => 'Ku dar kayd';

  @override
  String get pluginRepoUpdated => 'Kaydka plugin-ka waa la cusboonaysiiyay';

  @override
  String get pluginRepoUpdateFailed =>
      'Kaydka plugin-ka lama cusboonaysiin karin';

  @override
  String get ok => 'Haa';

  @override
  String get cancel => 'Jooji';

  @override
  String get yes => 'Haa';

  @override
  String get no => 'Maya';

  @override
  String get save => 'Kaydi';

  @override
  String get reset => 'Dib u deji';

  @override
  String get clear => 'Nadiifi';

  @override
  String get test => 'Tijaabi';

  @override
  String get testing => 'Waa la tijaabinayaa…';

  @override
  String get resolving => 'Waa la xallinayaa…';

  @override
  String get none => 'Midna';

  @override
  String get selectMediaService => 'Dooro adeegga warbaahinta';

  @override
  String get pickColor => 'Dooro midab';

  @override
  String get colorPickerCustom => 'Gaar ah';

  @override
  String get colorPickerTransparent => 'Hufan';

  @override
  String get ltr => 'Bidix ilaa midig';

  @override
  String get searchSettings => 'Raadi dejimaha';

  @override
  String nothingMatches(String query) {
    return 'Wax ku habboon \"$query\" ma jiraan';
  }

  @override
  String searchCategory(String category) {
    return 'Raadi $category';
  }

  @override
  String get settingsAppearance => 'Muuqaal';

  @override
  String get settingsAppearanceDesc => 'Qaabka, midabada, qaabka muraayadda';

  @override
  String get settingsGeneral => 'Guud';

  @override
  String get settingsGeneralDesc => 'Luqadda iyo habdhaqanka';

  @override
  String get settingsNetwork => 'Shabakadda';

  @override
  String get settingsNetworkDesc => 'User agent, shahaadooyin, DNS iyo proxy';

  @override
  String get settingsAccountDesc => 'Adeegga la socodka iyo gelitaanka';

  @override
  String get settingsUpdates => 'Cusboonaysiin';

  @override
  String get amoledBlack => 'Madow AMOLED';

  @override
  String get amoledBlackDesc => 'Dusha madow oo saafi ah qaabka mugdiga';

  @override
  String get glassMode => 'Qaabka muraayadda';

  @override
  String get glassModeDesc =>
      'Dusha qabow oo ka sarreeya sawirrada maktabaddaada';

  @override
  String get shelfFrame => 'Gooni ku wareegsan qaybaha';

  @override
  String get shelfFrameDesc =>
      'Muuji kaar ka danbeeya safka kasta, ama u daa safafka inay si toos ah bogga ugu fadhiistaan';

  @override
  String get settingsExtensionsDesc =>
      'Maareeyeyaasha isha, kaydka iyo ikhtiyaarrada kordhinta';

  @override
  String get settingsAddons => 'Kordhin dheeraad ah';

  @override
  String get customPath => 'Waddo kaydin gaar ah';

  @override
  String get customPathDesc =>
      'Meesha xogta app-ka la dhigo. Dheer taabo si aad dib ugu dejiso';

  @override
  String get selectDirectory => 'Dooro galka';

  @override
  String get differentCacheManager => 'Cache sawir oo kale';

  @override
  String get differentCacheManagerDesc =>
      'Isticmaal maareeye cache oo kale sawirrada';

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
  String get backupAndRestore => 'Kaydinta iyo soo celinta';

  @override
  String get backupAndRestoreDesc => 'Kaydi ama soo rar doorbidyadaada';

  @override
  String get backup => 'Kaydin';

  @override
  String get restore => 'Soo celi';

  @override
  String get loadExtensionsIcon => 'Soo rar astaamaha kordhinta';

  @override
  String get autoUpdateRuntimes => 'Update extension runtimes automatically';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead.';

  @override
  String get loadExtensionsIconDesc =>
      'Muuji astaamaha isha liisaska kordhinta';

  @override
  String get sectionStorage => 'Kaydinta';

  @override
  String get sectionManagers => 'Maareeyeyaal';

  @override
  String get sectionOptions => 'Ikhtiyaarro';

  @override
  String get backupTabBackup => 'Kaydi';

  @override
  String get backupTabRestore => 'Soo celi';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$keys dejin oo ku jira $categories qaybood';
  }

  @override
  String backupLastBackup(Object time) {
    return 'Kaydkii ugu danbeeyay $time';
  }

  @override
  String get backupNever => 'Weli kayd ma jiro';

  @override
  String get backupSelectAll => 'Dooro dhammaan';

  @override
  String get backupClearAll => 'Nadiifi';

  @override
  String backupKeys(Object count) {
    return '$count dejin';
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
  String get backupPassword => 'Erayga sirta (ikhtiyaari)';

  @override
  String get backupPasswordHint =>
      'Madhan ka tag si aad u isticmaasho kan caadiga ah';

  @override
  String get backupSensitive =>
      'Waxa ku jira token-yada gelitaanka. Faylkan qari';

  @override
  String get backupCreate => 'Samee kayd';

  @override
  String backupSaved(Object name) {
    return 'Kaydka waxaa lagu keydiyay $name';
  }

  @override
  String backupFailed(Object error) {
    return 'Kaydintu way fashilantay: $error';
  }

  @override
  String get backupPickFile => 'Dooro fayl kayd ah';

  @override
  String get backupPickFileDesc =>
      'Dooro fayl .json ah oo uu sameeyay Dartotsu';

  @override
  String get backupChooseAnother => 'Dooro fayl kale';

  @override
  String get backupCreatedAt => 'La sameeyay';

  @override
  String get backupAppVersion => 'Nooca app-ka';

  @override
  String get backupDevice => 'Qalab';

  @override
  String get backupAccounts => 'Akoonno';

  @override
  String get backupSize => 'Cabbir';

  @override
  String get backupEncrypted => 'Erayga sirta ayaa lagu ilaaliyay';

  @override
  String get backupUnlock => 'Fur';

  @override
  String get backupWrongPassword =>
      'Faylkan lama akhrin karo. Hubi erayga sirta';

  @override
  String get backupRestoreSelected => 'Soo celi kuwa la doortay';

  @override
  String backupRestoreConfirm(Object count) {
    return 'Soo celi $count dejin? Qiimayaasha hadda ku jira qaybahan waa la bedelayaa.';
  }

  @override
  String get backupRestored =>
      'Waa la soo celiyay. Dib u bilow app-ka si wax walba u dhaqmaan';

  @override
  String backupRestoreFailed(Object error) {
    return 'Soo celintu way fashilantay: $error';
  }

  @override
  String get backupSelectOne => 'Dooro ugu yaraan hal qayb';

  @override
  String get backupCatTheme => 'Muuqaal';

  @override
  String get backupCatThemeDesc =>
      'Qaabka, midabada, muraayadda, far-qoraalka iyo qaabka kaarka';

  @override
  String get backupCatCommon => 'Guud';

  @override
  String get backupCatCommonDesc =>
      'Luqadda, kaydinta, shabakadda iyo ikhtiyaarrada kordhinta';

  @override
  String get backupCatPlayer => 'Ciyaaraha';

  @override
  String get backupCatPlayerDesc => 'Doorbidyada ciyaaraha';

  @override
  String get backupCatReader => 'Akhriska';

  @override
  String get backupCatReaderDesc => 'Doorbidyada akhriska';

  @override
  String get backupCatProtected => 'Akoonno';

  @override
  String get backupCatProtectedDesc =>
      'Token-yada gelitaanka iyo xogta gelitaanka';

  @override
  String get backupCatOther => 'Adeegyada iyo feed-yada';

  @override
  String get backupCatOtherDesc =>
      'Qaabka feed-ka, liisaska iyo ikhtiyaarrada adeegga';

  @override
  String get logFile => 'Fayl log ah';

  @override
  String get logFileDesc =>
      'La wadaag log-ka app-ka, ama koobi waddadiisa Linux';

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
  String get logFileCopied => 'Waddada log-ka waa la koobiyay';

  @override
  String get donateSheetTitle => 'Ma ku raaxaysanaysaa Dartotsu?';

  @override
  String get donateSheetMessage =>
      'Dartotsu waxaa dhisay oo kaydiyaa hal qof. Haddii ay kuu faa\'iido leedahay, tixgeli inaad taageerto horumarinta.';

  @override
  String get donateLater => 'Mar dambe';

  @override
  String get glassBackground => 'Gadaal muraayad ah';

  @override
  String get glassBackgroundDesc =>
      'Banner-ka profile-kaaga haddii aadan dejin xiriirka sawirka';

  @override
  String get glassBackgroundHint =>
      'Xiriirka sawirka (madhan ka tag si aad u isticmaasho banner-kaaga)';

  @override
  String get followCover => 'La raac daboolka';

  @override
  String get followCoverDesc =>
      'Midabadu waxay raacaan gadaasha, iyo daboolka boggaga faahfaahinta';

  @override
  String get followCoverMediaOnly => 'Only for media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Only follow the cover on media pages, everywhere else keeps the normal colors';

  @override
  String get cardStyle => 'Qaabka kaarka';

  @override
  String get cardStyleDesc =>
      'Meesha ciwaanka, cabbirka, horumarka iyo calaamadaha';

  @override
  String get customFont => 'Far-qoraal';

  @override
  String get customFontDesc => 'Caadi, fayl qalabkaaga ah, ama Google Fonts';

  @override
  String get customFontError => 'Faylka far-qoraalkaas lama soo rari karo';

  @override
  String get googleFontError => 'Far-qoraalkaas lama soo dejin karo';

  @override
  String get yourFonts => 'Far-qoraalladaada';

  @override
  String get addFontFile => 'Ku dar fayl far-qoraal ah…';

  @override
  String get browseGoogleFonts => 'Baadh Google Fonts…';

  @override
  String get searchGoogleFonts => 'Raadi Google Fonts';

  @override
  String get defaultFont => 'Caadi';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'Midab firfircoon oo nidaamka ka yimaada';

  @override
  String get jsonTheme => 'Fayl qaab gaar ah';

  @override
  String get jsonThemeDesc =>
      'Midabyo toos ah oo ka yimaada ~/.config/dartotsu/theme.json (script gaar ah, ama wax-ka-beddelkaaga)';

  @override
  String get themeMode => 'Habka qaabka';

  @override
  String get mode => 'Habka';

  @override
  String get trackingService => 'Adeegga la socodka';

  @override
  String get signOut => 'Ka bax';

  @override
  String get signIn => 'Gal';

  @override
  String get notSignedIn => 'Lama gelin';

  @override
  String signOutOf(String service) {
    return 'Ka bax $service?';
  }

  @override
  String get checkForUpdates => 'Hubi cusboonaysiinta';

  @override
  String get checkForUpdatesDesc => 'Igu ogeysii sii-deynta cusub ee GitHub';

  @override
  String get updateChannel => 'Kanaalka cusboonaysiinta';

  @override
  String get channel => 'Kanaalka';

  @override
  String get stable => 'Xasiloon';

  @override
  String get preRelease => 'Hore-sii-deyn';

  @override
  String get alpha => 'Alpha';

  @override
  String get checkNow => 'Hadda hubi';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'Caadi';

  @override
  String currentlyUsing(String value) {
    return 'Hadda: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'Caadi (Cloudflare)';

  @override
  String get proxy => 'Proxy';

  @override
  String get proxyProtocol => 'Nooc';

  @override
  String get proxyHost => 'Host';

  @override
  String get proxyPort => 'Deked';

  @override
  String get proxyUsername => 'Magaca isticmaalaha';

  @override
  String get proxyPassword => 'Erayga sirta';

  @override
  String get optional => 'Ikhtiyaari';

  @override
  String get clearCookies => 'Nadiifi cookies';

  @override
  String get clearCookiesDesc => 'Ka saar cookie kasta oo la kaydiyay';

  @override
  String notImplementedArea(String area) {
    return '$area — dhawaan ayuu imanayaa';
  }

  @override
  String notImplementedService(String service) {
    return '$service weli taageeri maayo kan.';
  }

  @override
  String get couldNotLoadResults => 'Natiijooyinka lama soo rari karo';

  @override
  String get updateCheckFailed => 'Cusboonaysiinta lama hubin karo';

  @override
  String get highRefreshRate => 'Heerka cusboonaysiinta sare';

  @override
  String get highRefreshRateDesc =>
      'Isticmaal heerka cusboonaysiinta ugu sarreeya ee shaashaddaadu taageerto';

  @override
  String get imageSave => 'Kaydi sawirka';

  @override
  String imageSavedTo(String path) {
    return 'Waxaa lagu keydiyay $path';
  }

  @override
  String get imageActionFailed => 'Sawirka lama soo dejin karo';

  @override
  String get imageTitleCover => 'Dabool';

  @override
  String get imageTitlePage => 'Page';

  @override
  String get imageTitleBanner => 'Banner';

  @override
  String get imageTitleAvatar => 'Sawirka profile-ka';

  @override
  String get verifyTls => 'Xaqiiji shahaadooyinka';

  @override
  String get verifyTlsDesc =>
      'Diid server-yada leh shahaadooyin HTTPS ah oo aan sax ahayn. Dami oo keliya isha isticmaasha mid is-saxiixay';

  @override
  String get clearCookiesConfirm =>
      'Ka saar dhammaan cookies-ka la kaydiyay? Tani waxay kaa saari kartaa qaar ka mid ah isha.';

  @override
  String get version => 'Nooca';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'Koodka, dhibaatooyinka iyo sii-deyntu';

  @override
  String get discordDesc => 'Bulshada iyo caawimaadda';

  @override
  String get supportDeveloper => 'Support the developer';

  @override
  String get buyMeCoffee => 'Buy me a coffee';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID copied';

  @override
  String get donateDesc => 'Taageer horumarinta';

  @override
  String get contributors => 'Gacan-ka-geystayaasha';

  @override
  String get contributorsDesc => 'Dadka dhisay Dartotsu';

  @override
  String get contributorsLoadFailed =>
      'Gacan-ka-geystayaasha lama soo rari karo';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Mashaariicda lagu dhisay Dartotsu';

  @override
  String get forksEmpty => 'Forks lama helin';

  @override
  String get sectionColors => 'Midabada';

  @override
  String get sectionDisplay => 'Bandhigga';

  @override
  String get sectionStyle => 'Qaab';

  @override
  String get sectionCommunity => 'Bulshada';

  @override
  String get sectionAppInfo => 'Macluumaadka app-ka';

  @override
  String get sectionRequests => 'Codsiyada';

  @override
  String get sectionDnsProxy => 'DNS & Proxy';

  @override
  String get onboardingBack => 'Dib';

  @override
  String get onboardingNext => 'Xiga';

  @override
  String get onboardingSkip => 'Ka bood';

  @override
  String get onboardingPaletteTitle => 'Ka dhig mid kaaga ah';

  @override
  String get onboardingPaletteBody =>
      'Dooro midabaysan. Midab kasta, kaararka ilaa ciyaaraha, wuu raacayaa.';

  @override
  String get themeModeAuto => 'Toos';

  @override
  String get themeModeLight => 'Iftiin';

  @override
  String get themeModeDark => 'Mugdi';

  @override
  String get onboardingSyncTitle => 'Is-waafaji maktabaddaada';

  @override
  String get onboardingSyncBody =>
      'Ku gal AniList si aad u keento liisaskaaga, horumarkaaga iyo dhibcahaaga. Ama ka bood oo ka dhex baadh marti ahaan.';

  @override
  String get onboardingOpenLinks =>
      'Ku fur AniList iyo xiriiriyeyaasha kaydka Dartotsu dhexdiisa';

  @override
  String get onboardingPermsTitle => 'Ogolaanshaha';

  @override
  String get onboardingPermsBody =>
      'Hadda ogol kuwan si soo dejinta, cusboonaysiinta iyo digniinuhu u shaqeeyaan hakad la\'aan. Dib ayaad u beddeli kartaa dejimaha nidaamka.';

  @override
  String get permNotifications => 'Ogeysiisyo';

  @override
  String get permNotificationsDesc =>
      'Horumarka soo dejinta, dhacdooyin cusub iyo jawaabo';

  @override
  String get permStorage => 'Gelitaanka dhammaan faylasha';

  @override
  String get permStorageDesc =>
      'Ku kaydi soo dejinta galka dadweynaha ee Dartotsu';

  @override
  String get permInstall => 'Rakib cusboonaysiin';

  @override
  String get permInstallDesc =>
      'U ogolow Dartotsu inay rakibto cusboonaysiinteeda';

  @override
  String get permBattery => 'Batari aan xaddidnayn';

  @override
  String get permBatteryDesc => 'Ku sii wad soo dejinta dheer gadaasha';

  @override
  String get permGrant => 'Ogolow';

  @override
  String get linkOpenInApp => 'Ku fur xiriiriyeyaasha Dartotsu';

  @override
  String get linkOpenInAppDesc =>
      'U ogolow xiriiriyeyaasha AniList iyo kaydka inay app-ka furaan';

  @override
  String get reviewsTitle => 'Dib-u-eegisyo';

  @override
  String get reviewsEmpty => 'Weli dib-u-eegis ma jiro';

  @override
  String get reviewsFailed => 'Dib-u-eegisyada lama soo rari karo';

  @override
  String get reviewHelpfulQuestion => 'Dib-u-eegiskani ma kaa caawiyay?';

  @override
  String get reviewVoteFailed => 'Codkaaga lama keydin karo';

  @override
  String reviewHelpful(int n, int total) {
    return '$n ka mid ah $total ayaa u arkay mid faa\'iido leh';
  }

  @override
  String get calendarTitle => 'Jadwalka baahinta';

  @override
  String get calendarToday => 'Maanta';

  @override
  String get calendarEmpty => 'Maalintan waxba lama baahinayo';

  @override
  String get calendarFailed => 'Jadwalka lama soo rari karo';

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
    return 'Dhacdada $n';
  }

  @override
  String get shareAnalytics =>
      'La wadaag xogta isticmaalka ee aan magac lahayn';

  @override
  String get shareAnalyticsDesc =>
      'Tirada isticmaalayaasha iyo warbixinnada burburka ee aan magac lahayn. Akoon iyo xog shakhsi ah ma jiraan';

  @override
  String get linkOpenAnilist =>
      'Ku fur xiriiriyeyaasha AniList Dartotsu dhexdiisa';

  @override
  String get linkOpenAnilistDesc =>
      'Shid maamulka xiriiriyeyaasha si xiriiriyeyaasha anilist.co app-ka u furaan';

  @override
  String get linkSettingsFailed => 'Dejimaha nidaamka lama furi karo';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'Muuji waxa aad sameyneyso profile-kaaga Discord. Waxay u baahan tahay token-kaaga Discord.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'Muuji waxa aad sameyneyso profile-kaaga Discord. Waxay u baahan tahay app-ka Discord ee kombuyuutarka oo socda.';

  @override
  String get discordBrowsing => 'Muuji dhaqdhaqaaqa baadhista';

  @override
  String get discordBrowsingDesc =>
      'Muuji sidoo kale tab-ka, bogga ama profile-ka aad eegayso, ma aha oo kaliya waxa aad daawato ama akhrido.';

  @override
  String get discordLookHeader => 'Muuqaalka presence-ka';

  @override
  String get discordActivityType => 'Nooca dhaqdhaqaaqa';

  @override
  String get discordActivityTypeDesc =>
      'Sida Discord u qorto: \"Watching …\" ama \"Playing …\". Toos waxay u isticmaashaa Watching anime iyo Playing wax kasta oo kale.';

  @override
  String get discordWatching => 'Watching';

  @override
  String get discordPlaying => 'Playing';

  @override
  String get discordCovers => 'Muuji dabooleyaasha';

  @override
  String get discordCoversDesc =>
      'Sawirka daboolka iyo astaanta Dartotsu kaarka.';

  @override
  String get discordTimer => 'Muuji saacadda';

  @override
  String get discordTimerDesc =>
      'Waqtiga ka dhacay ama harsan ciwaanka hoostiisa.';

  @override
  String get discordButtons => 'Muuji badhamada';

  @override
  String get discordButtonsDesc =>
      'Badhamada \"View anime / manga\" iyo \"Open Dartotsu\".';

  @override
  String get discordHideTitles => 'Qari ciwaannada';

  @override
  String get discordHideTitlesDesc =>
      'Ku beddel magacyada anime iyo manga (iyo daboolkooda iyo xiriirkooda) \"Something private\".';

  @override
  String get discordConnectionHeader => 'Xiriir';

  @override
  String get listSearchHint => 'Raadi liiskan';

  @override
  String get listSort => 'Kala sooc';

  @override
  String get listFilter => 'Shaandhee';

  @override
  String get listRandom => 'Ciwaan random ah';

  @override
  String get listReverse => 'Rog hab-ka';

  @override
  String get listSortDefault => 'Habka liiska';

  @override
  String get listSortScore => 'Dhibcahaaga';

  @override
  String get listSortTitle => 'Ciwaan';

  @override
  String get listSortUpdated => 'La cusboonaysiiyay ugu danbayn';

  @override
  String get listSortProgress => 'Horumar';

  @override
  String get listSortReleased => 'Taariikhda sii-deynta';

  @override
  String get listSortAverage => 'Dhibcaha celceliska';

  @override
  String get listFilterFormat => 'Qaab';

  @override
  String get listFilterStatus => 'Xaalad';

  @override
  String get listFilterGenres => 'Noocyada';

  @override
  String get listFilterClear => 'Nadiifi shaandhooyinka';

  @override
  String get listNoMatches => 'Liiskan waxba ma ku habboona';

  @override
  String get discordLogin => 'Ku gal Discord';

  @override
  String get discordToken => 'Token-ka Discord';

  @override
  String get discordTokenSaved =>
      'La kaydiyay. Taabo si aad u bedesho, dheer taabo si aad u saarto.';

  @override
  String get discordTokenNotSet => 'Lama dejin. Taabo si aad ugu darto.';

  @override
  String get discordTokenSavedSnack => 'Token-ka Discord waa la keydiyay';

  @override
  String get discordTokenRemovedSnack => 'Token-ka Discord waa la saaray';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn =>
      'Shidan · taabo si aad u bedesho muuqaalkiisa';

  @override
  String get discordRichPresenceRowOff =>
      'Muuji waxa aad sameyneyso profile-kaaga Discord';

  @override
  String get loginCancelled => 'Galitaanka waa la joojiyay';

  @override
  String get invalidToken => 'Token aan sax ahayn';

  @override
  String loginFailed(String error) {
    return 'Galitaanku wuu fashilmay: $error';
  }

  @override
  String get malLoginFailed => 'Galitaanka MyAnimeList wuu fashilmay';

  @override
  String get kitsuLoginFailed =>
      'Galitaanka Kitsu wuu fashilmay. Hubi email-kaaga iyo erayga sirta.';

  @override
  String get kitsuLoginTitle => 'Ku gal Kitsu';

  @override
  String get emailOrUsername => 'Email ama magaca isticmaalaha';

  @override
  String get password => 'Erayga sirta';

  @override
  String get kitsuProfile => 'Profile-ka Kitsu';

  @override
  String get mangaBakaLoginFailed => 'Galitaanka MangaBaka wuu fashilmay';

  @override
  String get mangaBakaProfile => 'Profile-ka MangaBaka';

  @override
  String get refreshFromMangaBaka => 'Ka cusboonaysii MangaBaka';

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
  String get artistsLabel => 'Farshaxanno';

  @override
  String get authorsLabel => 'Qoraayaal';

  @override
  String get publishersLabel => 'Daabacayaal';

  @override
  String get licensedLabel => 'Shatiyaysan';

  @override
  String get contentRatingLabel => 'Qiimaynta nuxurka';

  @override
  String get yesLabel => 'Haa';

  @override
  String get noLabel => 'Maya';

  @override
  String get ratingSteps => 'Tillaabooyinka qiimaynta';

  @override
  String get hideNsfw => 'Qari NSFW';

  @override
  String get hideNsfwDesc =>
      'Ka ilaali ciwaannada qaangaarka ah feed-ka iyo raadinta, oo liisgareey gelitaannadaada qaangaarka ah hoos Warbaahinta La Qariyay.';

  @override
  String get kitsuAccountOptions => 'Ikhtiyaarrada akoonka Kitsu';

  @override
  String get mangaBakaAccountOptions => 'Doorashooyinka akoonka MangaBaka';

  @override
  String get couldNotUpdateKitsuSettings =>
      'Dejimaha Kitsu lama cusboonaysiin karin';

  @override
  String get titleCanonical => 'Rasmi ah';

  @override
  String get titleRomanized => 'Romanized';

  @override
  String get titleLocalized => 'Gudaha';

  @override
  String get ratingSystem => 'Nidaamka qiimaynta';

  @override
  String get ratingSimple => 'Fudud (3 wejiyo)';

  @override
  String get ratingRegular => 'Caadi (5 xiddigood)';

  @override
  String get ratingAdvanced => 'Horumarsan (10 dhibcood)';

  @override
  String get contentFilter => 'Shaandhada nuxurka';

  @override
  String get contentSfw => 'Kaliya ammaan shaqada';

  @override
  String get contentSometimes => 'Nuxur qaangaar ah raadinta';

  @override
  String get contentEverywhere => 'Nuxur qaangaar ah meel kasta';

  @override
  String get shareToGlobal => 'La wadaag feed-ka caalamiga';

  @override
  String get shareToGlobalDesc =>
      'U ogolow dhaqdhaqaaqaaga inuu ka muuqdo feed-ka caalamiga ah ee Kitsu.';

  @override
  String get memberSince => 'Xubin ahaan ilaa';

  @override
  String get location => 'Goobta';

  @override
  String get accountType => 'Nooca akoonka';

  @override
  String get accountSupporter => 'Taageere';

  @override
  String get accountFree => 'Bilaash';

  @override
  String get accountDetails => 'Faahfaahinta akoonka';

  @override
  String get refreshFromKitsu => 'Ka cusboonaysii Kitsu';

  @override
  String get simklReadOnly => 'Simkl waxaa la siiyay gelitaan akhris-kaliya ah';

  @override
  String get incognitoEditsBlocked =>
      'Qarsoodi: wax-ka-bedelka liiska waa la xannibay';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => 'Qarsoodi: horumarka lama keydin';

  @override
  String progressSet(int progress) {
    return 'Horumarka waxaa loo dejiyay $progress';
  }

  @override
  String removedFromList(String title) {
    return '$title waa laga saaray liiskaaga';
  }

  @override
  String get following => 'La raacayo';

  @override
  String get homeSections => 'Qaybaha Guriga';

  @override
  String get homeSectionsHint =>
      'Jiid si aad dib ugu habayso. Qaybaha la qariyay marna lama soo rarto.';

  @override
  String get customListDeleteFailed => 'Liiska gaarka ah lama tirin karo';

  @override
  String get customListsSaveFailed => 'Liisaska gaarka ah lama keydin karo';

  @override
  String get customListsSaved => 'Liisaska gaarka ah waa la keydiyay';

  @override
  String get listName => 'Magaca liiska';

  @override
  String get addList => 'Ku dar liis';

  @override
  String voiceActorsIn(String name) {
    return 'Codka jilayaasha · $name';
  }

  @override
  String get animeAppearances => 'Muuqaallada anime';

  @override
  String get mangaAppearances => 'Muuqaallada manga';

  @override
  String get voicedCharacters => 'Jilayaasha codkooda la bixiyay';

  @override
  String get animeCredits => 'Shaqooyinka anime';

  @override
  String get mangaCredits => 'Shaqooyinka manga';

  @override
  String get mainProductions => 'Wax-soo-saarka ugu muhiimsan';

  @override
  String get otherWorks => 'Shaqooyin kale';

  @override
  String get prequelSequel => 'Hore & Xiga';

  @override
  String get previousSeason => 'Xilli hore';

  @override
  String get thisSeason => 'Xilligan';

  @override
  String get nextSeason => 'Xilliga xiga';

  @override
  String get voiceRoles => 'Doorarka codka';

  @override
  String get staffPositions => 'Jagooyinka shaqaalaha';

  @override
  String get mangaWorks => 'Shaqooyinka manga';

  @override
  String get malProfile => 'Profile-ka MyAnimeList';

  @override
  String get refreshFromMal => 'Ka cusboonaysii MyAnimeList';

  @override
  String get repullProfileCounts =>
      'Dib u soo qaad profile-kaaga iyo tirooyinka';

  @override
  String get refreshed => 'La cusboonaysiiyay';

  @override
  String get simklProfile => 'Profile-ka Simkl';

  @override
  String get refreshFromSimkl => 'Ka cusboonaysii Simkl';

  @override
  String get repullProfileLibrary =>
      'Dib u soo qaad profile-kaaga iyo maktabadda';

  @override
  String get simklSignInToSearch => 'Ku gal Simkl si aad u raadiso';

  @override
  String get dropRate => 'Heerka joojinta';

  @override
  String get simklAttribution =>
      'Xogta iyo sawirada waxaa bixiyay Simkl. Ka eeg Simkl';

  @override
  String get onHold => 'La hakiyay';

  @override
  String get scoredBy => 'Dhibcaha ay bixiyeen';

  @override
  String get planToWatch => 'Hindisay inaan daawado';

  @override
  String get planToRead => 'Hindisay inaan akhriyo';

  @override
  String get timesRewatched => 'Marka dib loo daawaday';

  @override
  String get timesReread => 'Marka dib loo akhriyay';

  @override
  String get comments => 'Faallooyin';

  @override
  String get moviesAndSeries => 'Aflaamta & Taxanayaasha';

  @override
  String get trackingOnly => 'La socod oo keliya';

  @override
  String get signedIn => 'Waa la galay';

  @override
  String get searchLanguage => 'Luqadda raadinta';

  @override
  String get savedToList => 'Liiskaaga ayaa lagu keydiyay';

  @override
  String get removedFromYourList => 'Liiskaaga waa laga saaray';

  @override
  String get retry => 'Mar kale isku day';

  @override
  String get synopsis => 'Soo koobid';

  @override
  String get details => 'Faahfaahin';

  @override
  String get addToList => 'Ku dar liiska';

  @override
  String get trailer => 'Trailer';

  @override
  String get titleCopied => 'Ciwaanka waa la koobiyay';

  @override
  String get linkCopied => 'Xiriirka waa la koobiyay';

  @override
  String get watchTrailer => 'Daawo trailer-ka';

  @override
  String get copyTitle => 'Koobi ciwaanka';

  @override
  String get copyLink => 'Koobi xiriirka';

  @override
  String get openInBrowser => 'Ku fur browser-ka';

  @override
  String viewOnSource(String source) {
    return 'Ka eeg $source';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'Dhacdada $ep waxay baaha ka noqonaysaa $time';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'Dhacdada xigta $time kadib';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'Cutubka $chapter waxaa la filayaa ilaa $time';
  }

  @override
  String get logPathCopied => 'Waddada faylka log-ka waa la koobiyay';

  @override
  String get animeSource => 'Isha anime';

  @override
  String get mangaSource => 'Isha manga';

  @override
  String get popular => 'Caan ah';

  @override
  String get latest => 'Ugu dambeeyay';

  @override
  String get saved => 'La keydiyay';

  @override
  String get nothingMatched => 'Waxba lama helin';

  @override
  String get nothingSavedFromSource => 'Isha kan weli waxba kama keydsana';

  @override
  String get sourceReturnedNothing => 'Ishani waxba ma soo celin';

  @override
  String get checkConnectionOrSource =>
      'Hubi isku-xirkaaga ama isku day isha kale.';

  @override
  String get tryDifferentSearch => 'Isku day eray raadin oo kale.';

  @override
  String get savedTitlesAppearHere =>
      'Ciwaannada aad liiskaaga ku darto halkan ayay ka muuqdaan.';

  @override
  String get tryOtherFeed => 'Isku day feed-ka kale ama raadi.';

  @override
  String searchSource(String source) {
    return 'Raadi $source';
  }

  @override
  String get animeExtensions => 'Kordhinta Anime';

  @override
  String get mangaExtensions => 'Kordhinta Manga';

  @override
  String get nothingHereYet => 'Weli halkan waxba ma jiraan';

  @override
  String get savedOnDeviceUntilLogin =>
      'Wax kasta oo hoose waxay ku jiraan qalabkan ilaa aad sameyso.';

  @override
  String get yourProfile => 'Profile-kaaga';

  @override
  String get activity => 'Dhaqdhaqaaq';

  @override
  String get extensions => 'Kordhin';

  @override
  String get logOut => 'Ka bax';

  @override
  String get logIn => 'Gal';

  @override
  String get logOutConfirm => 'Ma hubtaa inaad ka baxayso?';

  @override
  String get incognitoMode => 'Qaabka qarsoodiga ah';

  @override
  String get alsoBlockListEdits => 'Xannib sidoo kale wax-ka-bedelka liiska';

  @override
  String get offlineMode => 'Qaabka offline';

  @override
  String get switchService => 'Beddel adeegga';

  @override
  String logOutOf(String name) {
    return 'Ka bax $name';
  }

  @override
  String get loggedIn => 'Waa la galay';

  @override
  String get notifications => 'Ogeysiisyo';

  @override
  String get nothingNew => 'Wax cusub ma jiraan';

  @override
  String get thisWeek => 'Usbuucan';

  @override
  String get listOnly => 'Liis kaliya';

  @override
  String get filter => 'Shaandhee';

  @override
  String get searchResults => 'Natiijooyinka raadinta';

  @override
  String get recentSearches => 'Raadinadii u dambeeyay';

  @override
  String get searchOrSetFilter => 'Raadi ama dhig shaandho';

  @override
  String get filters => 'Shaandhooyin';

  @override
  String get showLess => 'Muuji wax yar';

  @override
  String get showAll => 'Muuji dhammaan';

  @override
  String get apply => 'Codso';

  @override
  String get preview => 'Hordhac';

  @override
  String get preset => 'Hore-u-dejin';

  @override
  String get cardNormal => 'Caadi';

  @override
  String get cardOnCard => 'Kaarka dusha';

  @override
  String get cardInCard => 'Kaarka gudaha';

  @override
  String get size => 'Cabbir';

  @override
  String get cardWidth => 'Ballaarka kaarka';

  @override
  String get compact => 'Yar';

  @override
  String get coverAndTitleOnly => 'Daboolka iyo ciwaanka oo keliya';

  @override
  String get titleLines => 'Safafka ciwaanka';

  @override
  String get shape => 'Qaab';

  @override
  String get posterShape => 'Qaabka bosterka';

  @override
  String get cornerRadius => 'Wareegga geesaha';

  @override
  String get off => 'Dami';

  @override
  String get topLeft => 'Kore bidix';

  @override
  String get topRight => 'Kore midig';

  @override
  String get bottomLeft => 'Hoose bidix';

  @override
  String get bottomRight => 'Hoose midig';

  @override
  String get overlays => 'Dabooleyaal';

  @override
  String get progressCount => 'Horumar / tiro';

  @override
  String get pill => 'Kaabsal';

  @override
  String get bar => 'Xarig';

  @override
  String get outside => 'Dibadda';

  @override
  String get scoreBadge => 'Calaamadda dhibcaha';

  @override
  String get airingDot => 'Dhibicda baahinta';

  @override
  String get updateAvailable => 'Cusboonaysiin diyaar ah';

  @override
  String get notInstalled => 'Lama rakibin';

  @override
  String get done => 'Dhammaaday';

  @override
  String get searchOrEnterUrl => 'Raadi ama geli URL';

  @override
  String get refresh => 'Cusboonaysii';

  @override
  String get share => 'La wadaag';

  @override
  String get characters => 'Jilayaasha';

  @override
  String get staff => 'Shaqaalaha';

  @override
  String get readMore => 'Wax badan akhri';

  @override
  String get couldNotLoadList => 'Liiska lama soo rari karo';

  @override
  String get logInToFavourite => 'Gal si aad ugu darto kuwa aad jeceshahay';

  @override
  String get alsoKnownAs => 'Sidoo kale loo yaqaan';

  @override
  String get hideSpoilerNames => 'Qari magacyada waxyeelaynaya';

  @override
  String get showSpoilerNames => 'Muuji magacyada waxyeelaynaya';

  @override
  String get favourited => 'La jecel yahay';

  @override
  String get favourite => 'Jecel';

  @override
  String get couldNotOpenTitle => 'Ciwaankan lama furi karo';

  @override
  String get nobodyHereYet => 'Weli qofna ma jiro';

  @override
  String get noMatches => 'Wax ku habboon ma jiraan';

  @override
  String get gridView => 'Muuqaalka shabakadda';

  @override
  String get fullWidth => 'Ballac buuxa';

  @override
  String get userNotFound => 'Isticmaalaha lama helin';

  @override
  String get couldNotUpdateFollow => 'Raacidda lama cusboonaysiin karin';

  @override
  String followedUser(String name) {
    return 'Waad raacday $name';
  }

  @override
  String unfollowedUser(String name) {
    return 'Waad ka joojisay raacidda $name';
  }

  @override
  String get messages => 'Fariimaha';

  @override
  String get logInToSeeMessages => 'Gal si aad u aragto fariimahaaga';

  @override
  String get editActivity => 'Wax ka beddel dhaqdhaqaaqa';

  @override
  String get newActivity => 'Dhaqdhaqaaq cusub';

  @override
  String get editMessage => 'Wax ka beddel fariinta';

  @override
  String get writeMessage => 'Qor fariin';

  @override
  String get editReply => 'Wax ka beddel jawaabta';

  @override
  String get posted => 'La dhigay';

  @override
  String get couldNotPost => 'Lama dhigi karin';

  @override
  String get nothingToPreview => 'Hordhac ma jiro';

  @override
  String get writeSomethingHint =>
      'Wax qor… AniList markdown halkan ayay ka shaqeysaa';

  @override
  String get privateMessage => 'Fariin gaar ah';

  @override
  String get post => 'Dhig';

  @override
  String get nothingHere => 'Halkan waxba ma jiraan';

  @override
  String get noAnimeProgress => 'Horumar anime ma jiro';

  @override
  String get noMangaProgress => 'Horumar manga ma jiro';

  @override
  String get noMessages => 'Fariin ma jirto';

  @override
  String get writeMessageHint => 'Qor fariin…';

  @override
  String get shareSomethingHint => 'La wadaag wax…';

  @override
  String get all => 'Dhammaan';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Manga';

  @override
  String get count => 'Tiro';

  @override
  String get hoursWatched => 'Saacadaha la daawaday';

  @override
  String get chaptersRead => 'Cutubyada la akhriyay';

  @override
  String get meanScore => 'Dhibcaha celceliska';

  @override
  String get noStatsYet => 'Weli tirakoob ma jiro';

  @override
  String get totalEntries => 'Wadarta gelitaannada';

  @override
  String get episodesWatched => 'Dhacdooyinka la daawaday';

  @override
  String get daysWatched => 'Maalmaha la daawaday';

  @override
  String get volumesRead => 'Mugga la akhriyay';

  @override
  String get standardDeviation => 'Leexashada caadiga ah';

  @override
  String get showMore => 'Muuji wax badan';

  @override
  String get followsYou => 'Wuu ku raacayaa';

  @override
  String get nobodyYet => 'Weli qofna';

  @override
  String get logInToLike => 'Gal si aad u jeceshahay';

  @override
  String get failedToLikeActivity => 'Dhaqdhaqaaqa lama jeclaan karin';

  @override
  String get deleteActivityConfirm => 'Tir dhaqdhaqaaqa?';

  @override
  String get deletedActivity => 'Dhaqdhaqaaqa waa la tiray';

  @override
  String get failedToDeleteActivity => 'Dhaqdhaqaaqa lama tirin karin';

  @override
  String get subscribed => 'Waad iska diiwaangelisay';

  @override
  String get unsubscribed => 'Waad iska saartay';

  @override
  String get failedToUpdateSubscription =>
      'Diiwaangelinta lama cusboonaysiin karin';

  @override
  String get edit => 'Wax ka beddel';

  @override
  String get delete => 'Tir';

  @override
  String get likedBy => 'Jeclaaday';

  @override
  String get follow => 'Raac';

  @override
  String get nameCopied => 'Magaca waa la koobiyay';

  @override
  String get followsEachOther => 'Isku raacsan';

  @override
  String get unfollow => 'Ka jooji raacidda';

  @override
  String get userIdCopied => 'ID-ga isticmaalaha waa la koobiyay';

  @override
  String get shareProfile => 'La wadaag profile-ka';

  @override
  String get copyUserId => 'Koobi ID-ga isticmaalaha';

  @override
  String get failedToDelete => 'Lama tirin karin';

  @override
  String get failedToLike => 'Lama jeclaan karin';

  @override
  String get replies => 'Jawaabo';

  @override
  String get reply => 'Jawaab';

  @override
  String get noRepliesYet => 'Weli jawaab ma jirto';

  @override
  String get favouriteAnime => 'Anime aad jeceshahay';

  @override
  String get favouriteManga => 'Manga aad jeceshahay';

  @override
  String get favouriteCharacters => 'Jilayaasha aad jeceshahay';

  @override
  String get favouriteStaff => 'Shaqaalaha aad jeceshahay';

  @override
  String get favouriteStudios => 'Istuudiyooyinka aad jeceshahay';

  @override
  String get noFavouritesYet => 'Weli wax la jecel yahay ma jiraan';

  @override
  String get yourStory => 'Sheekadaada';

  @override
  String get copiedToClipboard => 'Waxaa lagu koobiyay clipboard-ka';

  @override
  String get justNow => 'Hadda';

  @override
  String get openImage => 'Fur sawirka';

  @override
  String get hideSpoiler => 'Qari waxyeelaynta';

  @override
  String get showSpoiler => 'Muuji waxyeelaynta';

  @override
  String get status => 'Xaalad';

  @override
  String get score => 'Dhibco';

  @override
  String get started => 'La bilaabay';

  @override
  String get completed => 'La dhammeeyay';

  @override
  String get private => 'Gaar ah';

  @override
  String get hideFromStatusLists => 'Ka qari liisaska xaaladda';

  @override
  String get totalRepeats => 'Wadarta dib-u-celinta';

  @override
  String get other => 'Kale';

  @override
  String get customLists => 'Liisaska gaarka ah';

  @override
  String get activeDays => 'Maalmaha firfircoon';

  @override
  String get longestStreak => 'Silsilada ugu dheer';

  @override
  String get currentStreak => 'Silsilada hadda';

  @override
  String get tapOrHoverDay => 'Taabo ama dul taag maalin';

  @override
  String get less => 'Yar';

  @override
  String get more => 'Badan';

  @override
  String epIn(int ep, String time) {
    return 'Dhacdada $ep $time kadib';
  }

  @override
  String get sectionLoading => 'Waa la soo rarayaa';

  @override
  String get querySize => 'Cabbirka su\'aasha';

  @override
  String get querySizeDesc =>
      'Hal su\'aal weyn ayaa soo rara safaf kasta (iyo profile dhan) hal codsi. Su\'aalaha kala qaybsan waxay u diraan codsi yar safka ama qayb profile kasta: mid kasta waa degdeg qaybuhuna way soo baxaan marka ay yimaadaan.';

  @override
  String get oneBig => 'Mid weyn';

  @override
  String get split => 'La kala qaybiyay';

  @override
  String get sectionSocial => 'Bulsho';

  @override
  String get systemNotifications => 'Ogeysiisyada nidaamka';

  @override
  String get feedLayout => 'Qaabka feed-ka';

  @override
  String sectionsShown(int shown, int total) {
    return '$shown ka mid ah $total ayaa la muujiyay — taabo si aad u doorato oo dib u habayso';
  }

  @override
  String labelSections(String label) {
    return 'Qaybaha $label';
  }

  @override
  String get accountOptions => 'Ikhtiyaarrada akoonka';

  @override
  String get anilistAccountOptions => 'Ikhtiyaarrada akoonka AniList';

  @override
  String get sectionPrivacy => 'Asturnaanta';

  @override
  String get hidePrivateEntries => 'Qari gelitaannada gaarka ah';

  @override
  String get hidePrivateEntriesDesc =>
      'Ka ilaali feed-ka gelitaannada AniList lagu calaamadiyay gaar ah';

  @override
  String get anilistExcludeList => 'Ka saar liiskaaga';

  @override
  String get anilistExcludeListDesc =>
      'Ka ilaali cinwaannada hore ugu jira AniList-kaaga bogagga anime iyo manga';

  @override
  String get anilistProfile => 'Profile-ka AniList';

  @override
  String get refreshFromAnilist => 'Ka cusboonaysii AniList';

  @override
  String get couldNotUpdateAnilistSettings =>
      'Dejimaha AniList lama cusboonaysiin karin';

  @override
  String get sectionNames => 'Magacyada';

  @override
  String get titleLanguage => 'Luqadda ciwaannada';

  @override
  String get titleLanguageDesc =>
      'Sida ciwaannada loo qoro meel kasta, tusaale Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'Magacyada shaqaalaha iyo jilayaasha';

  @override
  String get sectionLists => 'Liisaska';

  @override
  String get scoreFormat => 'Qaabka dhibcaha';

  @override
  String get sortListsBy => 'Liisaska ku kala sooc';

  @override
  String labelCustomLists(String label) {
    return 'Liisaska gaarka ah ee $label';
  }

  @override
  String customListsCount(int count) {
    return '$count liis — taabo si aad ugu darto ama u saarto';
  }

  @override
  String get mergeActivities => 'Isku dar dhaqdhaqaaqyada';

  @override
  String minutesCount(int count) {
    return '$count daqiiqo';
  }

  @override
  String get timezone => 'Aagga waqtiga';

  @override
  String get notSet => 'Lama dejin';

  @override
  String get airingNotifications => 'Ogeysiisyada baahinta';

  @override
  String get airingNotificationsDesc =>
      'Hel ogeysiis marka dhacdo ka mid ah bandhig aad raacayso la baahiyo';

  @override
  String get displayAdultContent => 'Muuji nuxur qaangaar ah';

  @override
  String get displayAdultContentDesc =>
      'Ku dar ciwaannada 18+ baadhista, raadinta iyo feed-yada';

  @override
  String get restrictMessages => 'U xaddid fariimaha dadka aad raacayso';

  @override
  String get restrictMessagesDesc =>
      'Kaliya dadka aad raacayso ayaa ku fariin kara';

  @override
  String get sectionServices => 'Adeegyada';

  @override
  String get novel => 'Novel';

  @override
  String labelService(String label) {
    return 'Adeegga $label';
  }

  @override
  String nameSettings(String name) {
    return 'Dejimaha $name';
  }

  @override
  String extensionBridgeOptions(String name) {
    return 'Ikhtiyaarro ka yimid buundada kordhinta $name';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name ma bilaabmi karin: $error';
  }

  @override
  String get importLists => 'Soo geli liisaska';

  @override
  String get importListsDesc => 'Kayd Aniyomi, Mihon / Tachiyomi ama Kotatsu';

  @override
  String get exportLists => 'Dhoofi liisaska';

  @override
  String get exportListsDesc => 'Kayd Aniyomi, Mihon ama Kotatsu';

  @override
  String get sectionBrowse => 'Baadh';

  @override
  String get readingTab => 'Tab-ka akhriska';

  @override
  String get readingTabDesc => 'Kordhinta tab-ka saddexaad muujiyo';

  @override
  String get firstTab => 'First tab';

  @override
  String get firstTabDesc =>
      'Which extensions the first tab shows. Pick manga here and novel on the reading tab to drop anime from the bar';

  @override
  String get novelExtensions => 'Novel Extensions';

  @override
  String get defaultFeed => 'Feed caadi ah';

  @override
  String get defaultFeedDesc => 'Liiska isha la furo';

  @override
  String noServiceSupports(String type) {
    return 'Adeeg ma taageero $type';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · $loaded ka mid ah $installed isha ayaa soo rarmaya';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'Adeeg kordhin ah ma taageero $type halkan.';
  }

  @override
  String get loadDataFrom => 'Ka soo rar xogta';

  @override
  String noInstalledSourcesYet(String type) {
    return 'Weli isha $type la rakibay ma jirto.';
  }

  @override
  String extensionNotInstalled(String name) {
    return 'Kordhinta $name lama rakibin';
  }

  @override
  String get thisSource => 'isha kan';

  @override
  String failedToAddRepository(String error) {
    return 'Kaydka lama darin karin: $error';
  }

  @override
  String installedType(String type) {
    return '$type la rakibay';
  }

  @override
  String availableType(String type) {
    return '$type diyaar ah';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'Kordhin $type la rakibay ma jirto';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'Kordhin $type diyaar ah ma jirto';
  }

  @override
  String get nothingToShowYet => 'Weli waxba looma muujin karo';

  @override
  String get addTitlesHint =>
      'Ku dar ciwaanno liiskaaga halkan ayay ka muuqan doonaan.';

  @override
  String get couldntLoad => 'Lama soo rari karo';

  @override
  String get progressStyleHint =>
      'Kaabsalka iyo xarigga waxay dul fadhiyaan bosterka; dibadda waxay muujisaa isla tirada qoraal caadi ah — dooro mid.';

  @override
  String get nixManagedUpdate =>
      'Dhismahan waxaa maamula Nix — ku orod \"nix flake update\" flake-gaaga oo dib u dhis halkii aad ka cusboonaysiin lahayd halkan';

  @override
  String autoUpdateFailed(String error) {
    return 'Cusboonaysiinta toos ahi way fashilantay ($error) — bogga soo dejinta ayaa la furayaa';
  }

  @override
  String get unknownPreference => 'Doorbid aan la aqoon';

  @override
  String unsupportedPreferenceType(String type) {
    return 'Nooca doorbidka lama taageero $type';
  }

  @override
  String get notYetReleased => 'Weli lama sii dayn';

  @override
  String get notStarted => 'Lama bilaabin';

  @override
  String get country => 'Dal';

  @override
  String get sort => 'Kala sooc';

  @override
  String get chooseBackupDialog => 'Dooro kayd Aniyomi, Mihon ama Kotatsu';

  @override
  String get importListsHint =>
      'Ka keen maktabad Aniyomi, Mihon / Tachiyomi ama Kotatsu. Ciwaannada, dabooleyaasha, horumarka iyo qaybaha waa la ilaaliyaa.';

  @override
  String get chooseBackupFile => 'Dooro faylka kaydka';

  @override
  String importAnimeCount(int count) {
    return 'Soo geli $count anime';
  }

  @override
  String importMangaCount(int count) {
    return 'Soo geli $count manga';
  }

  @override
  String get mergeWithExisting => 'Ku dar liisaska jira';

  @override
  String get mergeWithExistingDesc =>
      'Waxa aad hore u haysay waa la ilaaliyaa; haddii la damiyo waxay beddelaysaa ciwaannada u dhigma';

  @override
  String get chooseAnother => 'Dooro mid kale';

  @override
  String get import => 'Soo geli';

  @override
  String animeCount(int count) {
    return '$count anime';
  }

  @override
  String mangaCount(int count) {
    return '$count manga';
  }

  @override
  String get chooseSaveLocation => 'Dooro halka kaydka lagu keydinayo';

  @override
  String savedPath(String path) {
    return 'Waxaa la keydiyay $path';
  }

  @override
  String exportFailed(String error) {
    return 'Dhoofintu way fashilantay: $error';
  }

  @override
  String get nothingInLocalLists => 'Liisaskaaga gudaha waxba ma jiraan.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'Waxay dhoofisaa $anime anime iyo $manga manga liisaskaaga gudaha. Kotatsu waxay taageertaa manga oo keliya.';
  }

  @override
  String get saveToFolder => 'Ku kaydi gal';

  @override
  String get formatAnimeManga => 'Anime iyo manga · .tachibk';

  @override
  String get formatMangaTachibk => 'Manga oo keliya · .tachibk';

  @override
  String get formatMangaZip => 'Manga oo keliya · .zip';

  @override
  String get genres => 'Noocyada';

  @override
  String get relations => 'Xiriirrada';

  @override
  String get recommendations => 'Talooyinka';

  @override
  String get openings => 'Furitaannada';

  @override
  String get endings => 'Dhammaystirka';

  @override
  String get background => 'Asalka';

  @override
  String get links => 'Xiriiriyeyaasha';

  @override
  String get rank => 'Darajo';

  @override
  String get members => 'Xubnaha';

  @override
  String get favorites => 'La jecel yahay';

  @override
  String get episodes => 'Dhacdooyin';

  @override
  String get chapters => 'Cutubyo';

  @override
  String get volumes => 'Mugga';

  @override
  String get format => 'Qaab';

  @override
  String get source => 'Isha';

  @override
  String get duration => 'Muddada';

  @override
  String minutesPerEpisode(int minutes) {
    return '$minutes daqiiqo dhacdo kasta';
  }

  @override
  String get rating => 'Qiimaynta';

  @override
  String get studio => 'Istuudiyo';

  @override
  String get serialization => 'Taxane';

  @override
  String get season => 'Xilli';

  @override
  String get broadcast => 'Baahinta';

  @override
  String get aired => 'La baahiyay';

  @override
  String get published => 'La daabacay';

  @override
  String get popularity => 'Caannimada';

  @override
  String get community => 'Bulshada';

  @override
  String get watching => 'La daawanayo';

  @override
  String get reading => 'La akhrinayo';

  @override
  String get dropped => 'La joojiyay';

  @override
  String get planned => 'La qorsheeyay';

  @override
  String get trailers => 'Trailer-yo';

  @override
  String get ratings => 'Qiimayn';

  @override
  String get originalTitle => 'Asalka';

  @override
  String get titleLabel => 'Ciwaan';

  @override
  String get votes => 'Codad';

  @override
  String get watchedStat => 'La daawaday';

  @override
  String get runtime => 'Muddada socodka';

  @override
  String get director => 'Agaasime';

  @override
  String get network => 'Shabakad';

  @override
  String get certification => 'Shahaado';

  @override
  String get airs => 'Baaha';

  @override
  String get budget => 'Miisaaniyad';

  @override
  String get revenue => 'Dakhli';

  @override
  String get released => 'La sii daayay';

  @override
  String get tags => 'Tag-yo';

  @override
  String get author => 'Qoraa';

  @override
  String get born => 'Dhashay';

  @override
  String get website => 'Website';

  @override
  String get established => 'La aasaasay';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novels => 'Novel-ada';

  @override
  String get thisMonth => 'Bishan';

  @override
  String get movies => 'Aflaamta';

  @override
  String get shows => 'Bandhigyada';

  @override
  String get rewatching => 'Dib u daawanaya';

  @override
  String get rereading => 'Dib u akhriyaya';

  @override
  String get watchedStatus => 'La daawaday';

  @override
  String get planning => 'La qorsheeyay';

  @override
  String get paused => 'La hakiyay';

  @override
  String get watch => 'Daawo';

  @override
  String get read => 'Akhri';

  @override
  String get finished => 'La dhammeeyay';

  @override
  String get releasing => 'Wali la sii daynayo';

  @override
  String get cancelled => 'La joojiyay';

  @override
  String get hiatus => 'Hakad';

  @override
  String get remove => 'Ka saar';

  @override
  String syncToService(String service) {
    return 'U waafaji $service';
  }

  @override
  String syncedToService(String service) {
    return 'Loo waafajiyay $service';
  }

  @override
  String get latestReleases => 'Sii-deynta ugu danbeysa';

  @override
  String get topRated => 'Ugu qiimaha sarreeya';

  @override
  String localSection(String title) {
    return '$title · Gudaha';
  }

  @override
  String get localEntryNote =>
      'Ciwaankan wuxuu ku jiraa liiskaaga gudaha ee qalabkan oo keliya. Wax-ka-beddelka halkan waa la damiyay sababtoo ah wuxuu ku dhicin karaa liiska akoonkaaga; weli waad ka saari kartaa.';

  @override
  String get cardPresetPoster => 'Boostar';

  @override
  String get cardPresetCard => 'Kaar';

  @override
  String get cardPresetCozy => 'Raaxo';

  @override
  String get sortTopRated => 'Ugu qiimaha sarreeya';

  @override
  String get sortMostPopular => 'Ugu caansan';

  @override
  String get sortTrending => 'Hadda caan ah';

  @override
  String get sortNewest => 'Ugu cusub';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'Ugu la jecel yahay';

  @override
  String get anyCountry => 'Dal kasta';

  @override
  String get orderScore => 'Dhibco';

  @override
  String get orderTitle => 'Ciwaan';

  @override
  String get orderLastUpdated => 'La cusboonaysiiyay ugu danbayn';

  @override
  String get orderLastAdded => 'La daray ugu danbayn';

  @override
  String get never => 'Marnaba';

  @override
  String get always => 'Mar walba';

  @override
  String get scorePoint100 => '100 dhibcood';

  @override
  String get scorePoint10Decimal => '10 dhibcood leh jajab';

  @override
  String get scorePoint10 => '10 dhibcood';

  @override
  String get scorePoint5 => '5 xiddigood';

  @override
  String get scorePoint3 => '3 wejiyo';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saacadood',
      one: '1 saac',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count maalmood',
      one: '1 maalin',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count usbuuc',
      one: '1 usbuuc',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'Sii wad';

  @override
  String get resumeSourceMissing => 'Rakib isha ciwaankan si aad u sii wadato';

  @override
  String get resumeRemove => 'Ka saar sii wadashada';

  @override
  String resumeAt(String time) {
    return '$time ayaa harsan';
  }

  @override
  String resumePage(int page, int total) {
    return 'Bogga $page ee $total';
  }

  @override
  String get continueWatching => 'Sii wad daawashada';

  @override
  String get continueReading => 'Sii wad akhriska';

  @override
  String get favouriteAnimeSection => 'Anime la jecel yahay';

  @override
  String get favouriteMangaSection => 'Manga la jecel yahay';

  @override
  String get plannedAnime => 'Anime la qorsheeyay';

  @override
  String get plannedManga => 'Manga la qorsheeyay';

  @override
  String get completedAnime => 'Anime la dhammeeyay';

  @override
  String get completedManga => 'Manga la dhammeeyay';

  @override
  String get hiddenMedia => 'Warbaahin la qariyay';

  @override
  String get recentUpdates => 'Cusboonaysiinnadii u dambeeyay';

  @override
  String get trendingNow => 'Hadda caan ah';

  @override
  String get popularThisSeason => 'Caan ah xilligan';

  @override
  String get trendingMovies => 'Aflaamta caanka ah';

  @override
  String get topRatedSeries => 'Taxanayaasha ugu qiimaha sarreeya';

  @override
  String get mostFavouriteSeries => 'Taxanayaasha ugu la jecel yahay';

  @override
  String get popularAnime => 'Anime caan ah';

  @override
  String get trendingManhwa => 'Manhwa caan ah';

  @override
  String get trendingNovels => 'Novel-ada caanka ah';

  @override
  String get topRatedManga => 'Manga ugu qiimaha sarreeya';

  @override
  String get mostFavouriteManga => 'Manga ugu la jecel yahay';

  @override
  String get popularManga => 'Manga caan ah';

  @override
  String get topMovies => 'Aflaamta ugu fiican';

  @override
  String get topOna => 'ONA ugu fiican';

  @override
  String get topOva => 'OVA ugu fiican';

  @override
  String get mostPopular => 'Ugu caansan';

  @override
  String get mostFavourite => 'Ugu la jecel yahay';

  @override
  String get upcoming => 'Imanaya';

  @override
  String get topManga => 'Manga ugu fiican';

  @override
  String get topManhwa => 'Manhwa ugu fiican';

  @override
  String get topManhua => 'Manhua ugu fiican';

  @override
  String get topNovels => 'Novel-ada ugu fiican';

  @override
  String get topOneShots => 'One-shot-yada ugu fiican';

  @override
  String get trendingMoviesToday => 'Aflaamta caanka ah maanta';

  @override
  String get trendingShowsToday => 'Bandhigyada caanka ah maanta';

  @override
  String get trendingMoviesWeek => 'Aflaamta caanka ah usbuucan';

  @override
  String get trendingShowsWeek => 'Bandhigyada caanka ah usbuucan';

  @override
  String get mostWatchedMoviesMonth => 'Aflaamta ugu badan la daawaday bishan';

  @override
  String get mostWatchedShowsMonth =>
      'Bandhigyada ugu badan la daawaday bishan';

  @override
  String get trendingThisWeek => 'Caan ah usbuucan';

  @override
  String get mostWatchedThisMonth => 'Ugu badan la daawaday bishan';

  @override
  String get repoLinksAdded =>
      'Xiriiriyeyaasha kaydka si guul leh ayaa loo daray!';

  @override
  String repoLinkConfirm(String url) {
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust.';
  }

  @override
  String get errorGettingAnilistData => 'Cilad ka timid helista xogta AniList.';

  @override
  String get navInfo => 'XOG';

  @override
  String get navComments => 'FAALLOOYIN';

  @override
  String get playerNotAvailable => 'Ciyaaraha weli lama heli karo';

  @override
  String deepLinkInitialError(String error) {
    return 'Cilad helitaanka xiriirka hore: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'Cilad furista xiriirka: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'Xiriirkan lama furi karo: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'Cilad furista xiriirka: $error';
  }

  @override
  String get forReleasingTitles => 'ciwaannada hadda la sii daynayo';

  @override
  String get progress => 'Horumar';

  @override
  String get notes => 'Qoraallo';

  @override
  String serviceNotFound(String id) {
    return 'Adeegga \"$id\" lama helin';
  }

  @override
  String get glassEffectEnabled => 'Saameynta muraayadda waa la shiday';

  @override
  String get glassEffectDisabled => 'Saameynta muraayadda waa la damiyay';

  @override
  String get materialYouEnabled => 'Material You waa la shiday';

  @override
  String get materialYouDisabled => 'Material You waa la damiyay';

  @override
  String get darkModeEnabled => 'Qaabka mugdiga waa la shiday';

  @override
  String get darkModeDisabled => 'Qaabka mugdiga waa la damiyay';

  @override
  String get animeList => 'Liiska anime';

  @override
  String get mangaList => 'Liiska manga';

  @override
  String ownerAnimeList(String owner) {
    return 'Liiska anime ee $owner';
  }

  @override
  String ownerMangaList(String owner) {
    return 'Liiska manga ee $owner';
  }

  @override
  String get loadingList => 'Liiska waa la soo rarayaa';

  @override
  String get earlier => 'Hore';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count maalmood ka hor',
      one: '1 maalin ka hor',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saacadood ka hor',
      one: '1 saac ka hor',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count daqiiqo ka hor',
      one: '1 daqiiqo ka hor',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '${count}d ka hor';
  }

  @override
  String hoursAgoShort(int count) {
    return '${count}s ka hor';
  }

  @override
  String daysAgoShort(int count) {
    return '${count}m ka hor';
  }

  @override
  String weeksAgoShort(int count) {
    return '${count}u ka hor';
  }

  @override
  String get couldntLoadSource => 'Isha lama soo rari karo';

  @override
  String get followers => 'Raacayaasha';

  @override
  String couldntLoadTitle(String title) {
    return '$title lama soo rari karo';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'Profile-kan lama soo rari karo';

  @override
  String get profile => 'Profile';

  @override
  String get feed => 'Feed';

  @override
  String get stats => 'Tirakoob';

  @override
  String get received => 'La helay';

  @override
  String get sent => 'La diray';

  @override
  String get global => 'Caalami';

  @override
  String get couldntLoadPage => 'Bogga lama soo rari karo';

  @override
  String get couldntLoadAllDetails => 'Faahfaahinta oo dhan lama soo rari karo';

  @override
  String get series => 'Taxane';

  @override
  String get studios => 'Istuudiyooyin';

  @override
  String get users => 'Isticmaalayaal';

  @override
  String repositoriesTitle(String type) {
    return 'Kaydka $type';
  }

  @override
  String get repositoryUrl => 'URL-ka kaydka';

  @override
  String get downloadingRepository => 'Kaydka waa la soo dejinayaa…';

  @override
  String get noRepositories => 'Kayd lama darin';

  @override
  String repoExtensionsCount(String count) {
    return '$count kordhin';
  }

  @override
  String get searchExtensions => 'Raadi kordhin...';

  @override
  String deletePluginTitle(String name) {
    return 'Tir $name?';
  }

  @override
  String get deletePluginMessage => 'Ma hubtaa inaad tirayso plugin-kan?';

  @override
  String pluginDeleted(String name) {
    return '$name waa la tiray';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name kaydka la habeeyay kuma jiro';
  }

  @override
  String get pluginFetchFailed => 'Macluumaadka plugin-ka lama keeni karin';

  @override
  String installPluginTitle(String name) {
    return 'Rakib $name';
  }

  @override
  String sizeLabel(String size) {
    return 'Cabbirka: $size';
  }

  @override
  String get installedState => 'La rakibay';

  @override
  String get errorLabel => 'Cilad:';

  @override
  String get stackTraceDetails => 'Faahfaahin (Stack Trace)';

  @override
  String get shareLogFile => 'La wadaag faylka log-ka';

  @override
  String get copyLogs => 'Koobi log-yada';

  @override
  String noListToEdit(String service) {
    return '$service liis wax laga beddelo ma leh';
  }

  @override
  String get couldNotReadFile => 'Faylkaas lama akhrin karo';

  @override
  String importedSummary(int anime, int manga) {
    return 'La soo geliyay $anime anime iyo $manga manga';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count horey u jiray';
  }

  @override
  String get airingNow => 'Hadda la baahinayo';

  @override
  String get topRatedMovies => 'Aflaamta ugu qiimaha sarreeya';

  @override
  String get koreanDramas => 'Riwaayadaha Kuuriyada';

  @override
  String get chineseDramas => 'Riwaayadaha Shiinaha';

  @override
  String get japaneseDramas => 'Riwaayadaha Jabaan';

  @override
  String get thaiDramas => 'Riwaayadaha Thailand';

  @override
  String get turkishDramas => 'Riwaayadaha Turkiga';

  @override
  String get miniSeries => 'Taxane gaaban';

  @override
  String get topRatedShows => 'Bandhigyada ugu qiimaha sarreeya';

  @override
  String get recommendedSection => 'La soo jeediyay';

  @override
  String get syncRow => 'Isku waafaji liisaska';

  @override
  String get syncRowDesc => 'U koobi liiska hal adeeg akoonnadaada kale';

  @override
  String get syncTitle => 'Isku waafaji';

  @override
  String get syncMainService => 'Adeegga ugu muhiimsan';

  @override
  String get syncMainServiceDesc =>
      'Liiskiisa waa halka runta; adeeg kasta oo kale oo aad gashay waa la cusboonaysiiyaa si uu ugu habboonaado';

  @override
  String get syncAuto => 'Is-waafajin toos ah';

  @override
  String get syncAutoDesc =>
      'Soo qaad oo isku waafaji gadaasha marka app-ku furmo iyo 30 daqiiqo kasta';

  @override
  String get syncAddMissing => 'Ku dar gelitaannada maqan';

  @override
  String get syncAddMissingDesc =>
      'Ku dar sidoo kale gelitaannada adeegga kale aanu weli lahayn';

  @override
  String get syncOnlyForward => 'Ilaali horumarka sii fog';

  @override
  String get syncOnlyForwardDesc =>
      'Ha yareynin horumarka adeeg hore u sii socda';

  @override
  String get syncFetch => 'Soo qaad';

  @override
  String get syncFetchAgain => 'Mar kale soo qaad';

  @override
  String get syncAll => 'Isku waafaji dhammaan';

  @override
  String get syncStop => 'Jooji';

  @override
  String get syncResume => 'Sii wad';

  @override
  String get syncNothingToSync => 'Adeeggan lama isku waafajin karo nooca kan';

  @override
  String get syncNoTargets => 'Ku gal adeeg kale si aad ula waafajiso';

  @override
  String get syncLoadingMap => 'ID mapping waa la soo rarayaa';

  @override
  String get syncComparing => 'Liisaska waa la barbar dhigayaa';

  @override
  String get syncIntro =>
      'Dooro adeeg ugu muhiimsan oo taabo Soo qaad. Adeeg kasta mar ayaa liiskaaga looga weydiiyaa, ka dibna waxaa lagu barbar dhigaa kan ugu muhiimsan.';

  @override
  String get syncStateSynced => 'La isku waafajiyay';

  @override
  String get syncStateOutdated => 'Aan is-waafaqsanayn';

  @override
  String get syncStateMissing => 'Liiska kuma jiro';

  @override
  String get syncStateUnmapped => 'Wax ku habboon ma jiro';

  @override
  String syncPaused(String time) {
    return 'Waxaa la sugayaa xadka codsiyada, wuxuu sii socon doonaa $time kadib';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count oo keliya $name, lama taaban';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$done ka mid ah $total';
  }

  @override
  String get syncNothingHere => 'Waxba looma muujin karo';

  @override
  String syncLimits(int used, int max, String window) {
    return '$used ka mid ah $max codsi ayaa la isticmaalay $window kan';
  }

  @override
  String get syncMinute => 'daqiiqad';

  @override
  String get syncDay => 'maalin';

  @override
  String get syncNotInList => 'Weli liiska kuma jiro';

  @override
  String get syncCleared => 'Qorshaha waa la nadiifiyay';

  @override
  String get syncClear => 'Nadiifi';

  @override
  String get syncOptions => 'Ikhtiyaarro';

  @override
  String get syncShared => 'Gelitaankiisa wuxuu la wadaagaa shay kale';

  @override
  String syncNotFound(String service) {
    return 'Lagama helin $service';
  }

  @override
  String syncService(String service, int count) {
    return 'Isku waafaji $service ($count)';
  }

  @override
  String get syncOnEdit => 'Isku waafaji isla markiiba isbeddelada';

  @override
  String get syncOnEditDesc =>
      'U dir cusboonaysiin kasta oo horumar ah iyo wax-ka-bedel liis kasta adeegyadaada kale isla markiiba';

  @override
  String syncPushed(String services) {
    return 'Loo waafajiyay $services';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited =>
      'Xad ayaa laga gaadhay, mar kale isku day wax yar kadib';

  @override
  String get syncAhead => 'Kan hore u sii socda';

  @override
  String get syncAheadDesc =>
      'Laba dhinac: ciwaan kasta gelitaanka ugu fog ayaa guuleysta oo loo koobiyaa dhammaan adeegyadaada kale';

  @override
  String syncAheadFrom(String service) {
    return 'Ka $service';
  }

  @override
  String get syncConfirm => 'Dib u eeg ka hor intaadan waafajin';

  @override
  String get syncConfirmDesc =>
      'Muuji waxa Isku waafaji dhammaan beddeli doono iyo imisa codsi ay u baahan tahay';

  @override
  String get syncPreviewTitle => 'Diyaar u ah is-waafajin';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates cusboonaysiin, $adds la darayo';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'Ku dhawaad $count codsi';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count ID ayaa u baahan raadin hore';
  }

  @override
  String get syncPreviewNothing => 'Waxba lama beddelayo';

  @override
  String get syncStart => 'Bilow';

  @override
  String get syncRetry => 'Mar kale isku day';

  @override
  String get syncSkip => 'Ka bood shaygan';

  @override
  String get syncInclude => 'Mar kale ku dar shaygan';

  @override
  String get syncSkippedLabel => 'La booday';

  @override
  String get syncChanges => 'Kala duwanaansho';

  @override
  String get syncChangeStatus => 'Xaalad';

  @override
  String get syncChangeProgress => 'Horumar';

  @override
  String get syncChangeScore => 'Dhibco';

  @override
  String get syncChangeDates => 'Taariikho';

  @override
  String get syncChangeRepeat => 'Tirada dib-u-daawashada';

  @override
  String get syncFailedReason => 'Sababta ay u fashilantay';

  @override
  String get syncSkippedHint =>
      'Alaabta la booday waa la ilaaliyaa, xitaa mar kale soo qaadis kadib';

  @override
  String get commentsRules => 'Xeerarka faallooyinka';

  @override
  String get commentsRulesBody =>
      'XEER KASTA HADDII AAD jebiso WAAD GADHAYSAA\n\n1. Cunsuriyad, takoor ama hadal nacayb ah ma jiro\n2. Spam ama is-xayaysiin ma jiro\n3. Nuxur NSFW ah gabi ahaanba ma jiro\n4. Ingiriis oo keliya, ka reeban ma jirto\n5. Is-dhigid, cadaadis ama xumaan ma jirto\n6. Nuxur sharci-darro ah ama sharaf-dhac xad-dhaaf ah fandom kasta ma jiro\n7. Ha codsan ha la wadaagin kayd ama kordhin\n8. Waxyeelayn kaliya iyadoo la isticmaalayo tag waxyeelayn iyo digniin\n9. Faallooyin galmo ama aan habboonayn oo ku saabsan jilayaasha yaryar ma jiraan\n10. Haddii ay qalad tahay, ha dhigin!';

  @override
  String get commentsRulesAccept => 'Waan fahmay';

  @override
  String get commentsSortNewest => 'Ugu cusub';

  @override
  String get commentsSortOldest => 'Ugu hore';

  @override
  String get commentsSortHighest => 'Ugu qiimaha sarreeya';

  @override
  String get commentsSortLowest => 'Ugu qiimaha hooseeya';

  @override
  String commentsEpisodeShort(int number) {
    return 'Dh. $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'C. $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'Ku shaandhee dhacdo';

  @override
  String get commentsFilterChapterTitle => 'Ku shaandhee cutub';

  @override
  String get commentsFilterTagTitle => 'Geli lambarka dhacdada ama cutubka';

  @override
  String get commentsFilterHint => 'Lambar';

  @override
  String get commentsFilterApply => 'Shaandhee';

  @override
  String get commentsFilterClear => 'Muuji dhammaan';

  @override
  String get commentsPlaceholder => 'Ku dar faallo…';

  @override
  String commentsReplyingTo(String name) {
    return 'Jawaabta $name';
  }

  @override
  String get commentsSend => 'Dir';

  @override
  String get commentsTagButton => 'Tag';

  @override
  String commentsTagTitle(String label) {
    return 'Tag $label (ikhtiyaari)';
  }

  @override
  String get commentsTagEpisode => 'dhacdo';

  @override
  String get commentsTagChapter => 'cutub';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return 'Lambarka $label';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'Tag-gu ma dhaafi karo wadarta ($total)';
  }

  @override
  String get commentsNoTag => 'Tag ma jiro';

  @override
  String get commentsSpoiler => 'Waxyeelayn';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'Raadi GIF';

  @override
  String get commentsGifEmpty => 'GIF lama helin';

  @override
  String get commentsEmptyText => 'Faalladu ma madhnaan karto';

  @override
  String get commentsBannedYou => 'Waa laguu mamnuucay inaad faallo bixiso';

  @override
  String get commentsEdited => 'Faalladii waa la beddelay';

  @override
  String get commentsDeleted => 'Faalladii waa la tiray';

  @override
  String get commentsDeletedPlaceholder => '[la tiray]';

  @override
  String get commentsReported => 'Faalladii waa la soo sheegay';

  @override
  String get commentsUserBanned => 'Isticmaalaha waa la mamnuucay';

  @override
  String get commentsReport => 'Soo sheeg';

  @override
  String get commentsReportAsk => 'U soo sheeg faalladan kormeeraha?';

  @override
  String get commentsDelete => 'Tir';

  @override
  String get commentsDeleteAsk => 'Faalladan waa laga saarayaa qof walba.';

  @override
  String get commentsBan => 'Mamnuuc';

  @override
  String get commentsBanAsk => 'Mamnuuc isticmaalahan faallooyinka?';

  @override
  String get commentsCopy => 'Koobi';

  @override
  String get commentsViewReply => 'Eeg 1 jawaab';

  @override
  String commentsViewReplies(int count) {
    return 'Eeg $count jawaab';
  }

  @override
  String get commentsHideReplies => 'Qari jawaabaha';

  @override
  String get commentsLoadMore => 'Soo rar faallooyin kale';

  @override
  String get commentsEmpty => 'Weli faallo ma jirto. Noqo kan ugu horreeya!';

  @override
  String get commentsEmptyFiltered => 'Faallo shaandhadan ma jirto';

  @override
  String get commentsSignIn =>
      'Ku gal AniList si aad u akhrido oo aad u qorto faallooyin';

  @override
  String get commentsSignInMessage =>
      'Faallooyinka waa la wadaagaa adeeg kasta waxayna isticmaalaan akoonkaaga AniList.';

  @override
  String get commentsUnavailable => 'Faallooyinka ciwaankan lama heli karo';

  @override
  String get commentsUnavailableMessage =>
      'Lama waafajin karin gelitaan AniList ah.';

  @override
  String get commentsDisabled => 'Faallooyinka waa la damiyay';

  @override
  String get commentsDisabledMessage =>
      'Waad mar kale shidi kartaa Dejimaha › Guud.';

  @override
  String get commentsOffline => 'Faallooyinka lama soo rari karo';

  @override
  String get commentsSingleTitle => 'Waxaa la muujinayaa hal faallo';

  @override
  String get commentsShowAll => 'Muuji dhammaan faallooyinka';

  @override
  String get commentsSettingsHeader => 'Faallooyin';

  @override
  String get commentsSettingEnabled => 'Faallooyin';

  @override
  String get commentsSettingEnabledDesc =>
      'Muuji tab-ka Faallooyinka ciwaannada oo ku gal server-ka faallooyinka akoonkaaga AniList';

  @override
  String get commentsSettingAlerts => 'Ogeysiisyada jawaabaha';

  @override
  String get commentsSettingAlertsDesc =>
      'I ogeysii marka qof ka jawaabo faallooyinkayga';

  @override
  String get commentsNoticeReplyTitle => 'Jawaab cusub oo faallo ah';

  @override
  String commentsNoticeReply(String name) {
    return '$name ayaa ka jawaabay faalladaada';
  }

  @override
  String get commentsNoticeWarningTitle => 'Waxaad heshay digniin';

  @override
  String get commentsNoticeWarning => 'Ka taxaddar faallooyinkaaga';

  @override
  String get commentsNoticeUpdateTitle => 'Cusboonaysiin ka timid Dantotsu';

  @override
  String get barcodeTitle => 'Iskaan barcode';

  @override
  String get barcodeTooltip => 'Ka hel manga ama novel barcode-kiisa';

  @override
  String get barcodeIntro =>
      'U jiheey kamarada barcode-ka dhabarka mugga, ama ku qor ISBN-kiisa.';

  @override
  String get barcodeIntroManual =>
      'Ku qor ISBN-ka ka sarreeya barcode-ka dhabarka mugga.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'Taasi ISBN sax ah maaha';

  @override
  String barcodeNotFound(String isbn) {
    return 'Buug lama helin $isbn';
  }

  @override
  String get barcodeCameraDenied =>
      'Kamarada lama heli karo. Ogolow gelitaanka kamarada ama ku qor ISBN.';

  @override
  String get themesTitle => 'Furitaannada & dhammaystirka';

  @override
  String get themesPlayVideo => 'Ciyaar muuqaalka';

  @override
  String get themesPlayAudio => 'Ciyaar codka oo keliya';

  @override
  String get themesOpenSite => 'Ku fur AnimeThemes';

  @override
  String get themesCredit => 'Heesaha AnimeThemes';

  @override
  String get themesVersions => 'Noocyada';

  @override
  String get sauceTitle => 'Hel isha';

  @override
  String get sauceIntro =>
      'Soo rar bog manga ah ama shaqo farshaxan, ama ku dheji xiriirkeeda, si aad u hesho halka ay ka timid.';

  @override
  String get sauceKeyTitle => 'Furaha API ee SauceNAO';

  @override
  String get sauceKeyHint =>
      'Ikhtiyaari, wuxuu kordhiyaa xadka raadinta maalinlaha ah';

  @override
  String get sauceKeyDesc => 'Hel fure bilaash ah saucenao.com/user.php';

  @override
  String get sauceOpen => 'Fur isha';

  @override
  String get sauceCredit => 'Raadinta sawirka SauceNAO';

  @override
  String get sauceEmpty => 'Wax ku habboon lama helin';

  @override
  String get sauceTooltip => 'Hel isha bog manga ah ama shaqo farshaxan';

  @override
  String get trendzTitle => 'Jaantusyada anime';

  @override
  String get trendzAnime => 'Anime';

  @override
  String get trendzFemale => 'Jilayaasha dumarka';

  @override
  String get trendzMale => 'Jilayaasha ragga';

  @override
  String get trendzCouple => 'Lammaanayaal';

  @override
  String get trendzCredit => 'Jaantusyo usbuucle ah oo AniTrendz';

  @override
  String get trendzNew => 'CUSUB';

  @override
  String get trendzEmpty => 'Jaantusku waa madhan yahay';

  @override
  String get shareCard => 'Kaarka la wadaagida';

  @override
  String get shareCardList => 'La wadaag kaarka liiska';

  @override
  String get shareCardSaved => 'Kaarka waa la keydiyay';

  @override
  String get shareCardFailed => 'Kaarka lama samayn karin';

  @override
  String get shareCardListEmpty => 'Liiskaaga wax la wadaago weli ma laha';

  @override
  String get shareCardTop => 'Doorashooyinkayga ugu sarreeya';

  @override
  String themesEpisodes(String eps) {
    return 'Dhacdooyin $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent% ayaa ku habboon';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'Usbuuca $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count cod';
  }

  @override
  String trendzPeak(String rank) {
    return 'Ugu sarreeyay #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return '$count usbuuc tobanka sare';
  }

  @override
  String get imageSearchTitle => 'Ku raadi sawir';

  @override
  String get imageSearchTooltip => 'Ka hel anime sawirka shaashadda';

  @override
  String get imageSearchIntro =>
      'Dooro sawir shaashad ama ku dheji xiriir sawir trace.moe-na waxay heli doontaa dhacdada iyo daqiiqadda ay ka timid.';

  @override
  String get imageSearchPick => 'Dooro sawir';

  @override
  String get imageSearchLinkHint => 'Ku dheji xiriirka sawirka';

  @override
  String get imageSearchGo => 'Raadi';

  @override
  String get imageSearchEmpty => 'Wax ku habboon lama helin';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'Dhacdada $number';
  }

  @override
  String imageSearchAt(String time) {
    return '$time';
  }

  @override
  String get imageSearchPreview => 'Hordhac muuqaal';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent% ayaa ku habboon';
  }

  @override
  String get imageSearchCredit => 'Waxaa wada trace.moe';

  @override
  String get imageSearchOpenFailed => 'Ciwaankan lama furi karo';

  @override
  String get groups => 'Kooxaha';

  @override
  String get groupsYours => 'Kooxahaaga';

  @override
  String get groupsPopular => 'Caan ah';

  @override
  String get groupsNew => 'Cusub';

  @override
  String get groupsFeatured => 'La soo bandhigay';

  @override
  String get groupsSearch => 'Raadi kooxo';

  @override
  String get groupsAll => 'Dhammaan';

  @override
  String get groupsEmpty => 'Koox lama helin';

  @override
  String get groupsEmptyYours => 'Weli kooxo kuma biirin';

  @override
  String get groupsSignIn => 'Gal si aad u aragto kooxaha aad ku biirtay';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count xubnood',
      one: '1 xubin',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'Ku biir';

  @override
  String get groupsJoined => 'Waad ku biirtay';

  @override
  String get groupsLeave => 'Ka bax kooxda';

  @override
  String get groupsLeaveAsk =>
      'Mar dambe ma arki doonto boostooyinka kooxdan feed-kaaga.';

  @override
  String get groupsJoinFailed =>
      'Kooxdan lagu biiri waayay, waxaa laga yaabaa inay ku bixi tahay casuumaad oo keliya';

  @override
  String get groupsLeaveFailed => 'Kooxdan laga bixi waayay';

  @override
  String get groupsPosts => 'Boostooyin';

  @override
  String get groupsMembersTab => 'Xubnaha';

  @override
  String get groupsAbout => 'Ku saabsan';

  @override
  String get groupsRules => 'Xeerarka';

  @override
  String get groupsPrivacyOpen => 'Furan';

  @override
  String get groupsPrivacyRestricted => 'La xaddiday';

  @override
  String get groupsPrivacyClosed => 'Xiran';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'Admin';

  @override
  String get groupsRoleMod => 'Mod';

  @override
  String get groupsCouldntLoad => 'Kooxdan lama soo rari karo';

  @override
  String get groupsNewPost => 'Ku dhig kooxda';

  @override
  String get groupsPostHint => 'La wadaag wax kooxda';

  @override
  String get groupsOpenInBrowser => 'Ku fur browser-ka';

  @override
  String get groupsCategory => 'Qayb';

  @override
  String get groupsLanguage => 'Luqad';

  @override
  String get groupsCreated => 'La sameeyay';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hogaamiye',
      one: '1 hogaamiye',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'Asturnaanta';

  @override
  String get notificationsAll => 'Dhammaan';

  @override
  String get notificationsAiring => 'Baahin';

  @override
  String get notificationsMedia => 'Ciwaanno cusub';

  @override
  String get notificationsReplies => 'Jawaabo';

  @override
  String get notificationsMentions => 'Magacaabid';

  @override
  String get notificationsMessages => 'Fariimaha';

  @override
  String get notificationsLikes => 'Jeclaanshaha';

  @override
  String get notificationsFollows => 'Raacitaanno';

  @override
  String get notificationsNoServices =>
      'Adeeg la galay oo ogeysiis leh ma jiro';

  @override
  String get notificationsNoServicesMessage =>
      'Ku gal adeeg ogeysiis diraya ogeysiisyadana halkan ayay ka soo muuqan doonaan.';

  @override
  String get notificationsEmptyKind => 'Qaybtan weli waxba kuma jiraan';

  @override
  String get notificationsCommentsEmpty => 'Ogeysiis faallo ma jiro';

  @override
  String get notificationsCommentsEmptyMessage =>
      'Jawaabaha faallooyinkaaga iyo ku-dhawaaqyada Dantotsu halkan ayay ka muuqdaan.';

  @override
  String get notificationsSettings => 'Dejimaha ogeysiisyada';

  @override
  String get notificationsPollTitle => 'Hubi ogeysiisyo cusub';

  @override
  String notificationsPollDesc(int minutes) {
    return '$minutes daqiiqo kasta marka app-ku furan yahay';
  }

  @override
  String get notificationsNotifyAbout => 'Igu ogeysii';

  @override
  String get notificationsCommentsHeader => 'Ogeysiisyada faallooyinka';

  @override
  String systemNotificationsDescFor(String service) {
    return 'Muuji ogeysiis nidaam ah mid kasta oo $service ah oo aan la akhrin marka app-ku socdo.';
  }

  @override
  String get notificationsTestSent => 'Ogeysiiska tijaabada waa la diray';

  @override
  String get notificationsTestDenied =>
      'Ogeysiisyada loogu ogolaan maayo Dartotsu. Ka shid dejimaha nidaamka.';

  @override
  String get notificationsTestHint =>
      'Dheer taabo si aad u dirto ogeysiis tijaabo ah';

  @override
  String get notificationsTestSample => 'Kani waa ogeysiis tijaabo ah';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name ayaa ka jawaabay faalladaada $media';
  }

  @override
  String get imageSearchNotLink => 'Taasi ma eka xiriir';

  @override
  String get imageSearchQuota => 'Xadka raadinta waa dhaafay';

  @override
  String get imageSearchBusy =>
      'Codsiyo aad u badan, mar kale isku day wax yar kadib';

  @override
  String imageSearchFailed(int code) {
    return 'Raadintu way fashilantay ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count ogeysiis cusub';
  }

  @override
  String get reactionsTitle => 'Falcelinno';

  @override
  String get reactionsNeedEntry =>
      'Ku dar ciwaankan liiskaaga ka hor intaadan falcelin';

  @override
  String get reactionsAdd => 'Ku dar falcelin';

  @override
  String get reactionsHint =>
      'Maxaad ka qabtaa? (gaaban oo waxyeelayn la\'aan)';

  @override
  String get reactionsPost => 'Dhig';

  @override
  String get reactionsFailed => 'Falcelinta lama cusboonaysiin karin';

  @override
  String get settingsWatch => 'Daawo & akhri';

  @override
  String get settingsWatchDesc =>
      'Liisaska dhacdooyinka, isha la waafajinta iyo faahfaahinta dhacdooyinka';

  @override
  String get watchSettingsLayout => 'Liiska dhacdooyinka';

  @override
  String get watchSettingsSources => 'Ishaha';

  @override
  String get watchSettingsMetadata => 'Faahfaahinta dhacdada';

  @override
  String get watchLayout => 'Habaynta';

  @override
  String get watchListView => 'Liis';

  @override
  String get watchGridView => 'Shabakad';

  @override
  String get watchCompactView => 'Yar';

  @override
  String get watchDefaultLayoutDesc =>
      'Sida dhacdooyinka iyo cutubyada loo habeeyo ilaa aad u beddesho ciwaan gaar ah';

  @override
  String get watchChunkSize => 'Cabbirka kooxda';

  @override
  String get watchChunkSizeDesc =>
      'Immisa dhacdo ama cutub ayuu tab-ka kooxda kasta hayaa';

  @override
  String get watchShowDescription => 'Muuji sharraxaadaha';

  @override
  String get watchShowDescriptionDesc =>
      'Muuji soo koobidda dhacdada ciwaan kasta hoostiisa habaynta liiska';

  @override
  String get watchShowFiller => 'Muuji dhacdooyinka filler';

  @override
  String get watchShowFillerDesc =>
      'Dami si aad u qarisid dhacdooyinka filler-ka lagu calaamadiyay';

  @override
  String get watchBlurUnwatched => 'Qari muuqaalada waxyeelaynta';

  @override
  String get watchBlurUnwatchedDesc =>
      'Ka dhig mid aan cadayn muuqaalka dhacdooyinka aadan weli daawan';

  @override
  String get watchResumeShelf => 'Safka sii wadashada';

  @override
  String get watchResumeShelfDesc => 'Muuji safka Sii wad ee Guriga';

  @override
  String get watchMarkOnLongPress => 'Dheer taabo si aad horumar u calaamadiso';

  @override
  String get watchMarkOnLongPressDesc =>
      'Dheer taabo dhacdo ama cutub si aad ugu calaamadiso la daawaday ama aan la daawan';

  @override
  String get watchMatching => 'La waafajinta isha';

  @override
  String get watchMatchingDesc =>
      'Ugu dhow wuxuu qaataa natiijada raadinta ugu fiican. Saxda oo keliya wuxuu aqbalaa ciwaan aad isugu eg iyo inta kale adiga ayaa dooranaya.';

  @override
  String get watchMatchClosest => 'Isku-dhigma ugu dhow';

  @override
  String get watchMatchExact => 'Isku-dhigma sax ah oo keliya';

  @override
  String get watchMetadataDesc =>
      'Halka ciwaannada dhacdooyinka, soo koobidda, muuqaalada, taariikhaha baahinta iyo calaamadaha filler ay ka yimaadaan. Jiid si aad mudnaanta u dejiso; isha ugu horreysa ee leh qiimo ayaa guuleysata.';

  @override
  String get watchMetaAniZipDesc =>
      'Ciwaannada dhacdooyinka, soo koobidda, sawirada iyo taariikhaha baahinta';

  @override
  String get watchMetaKitsuDesc =>
      'Ciwaannada dhacdooyinka, sharraxaadaha iyo muuqaalada';

  @override
  String get watchMetaSimklDesc =>
      'Ciwaannada dhacdooyinka, sharraxaadaha, sawirada iyo taariikhaha baahinta';

  @override
  String get watchMetaAniListDesc =>
      'Ciwaannada dhacdooyinka streaming-ka, muuqaalada iyo jadwalka baahinta';

  @override
  String get watchMetaTenraiDesc =>
      'Ciwaannada dhacdooyinka MyAnimeList, taariikhaha baahinta, filler iyo calaamadaha recap ee Tenrai';

  @override
  String get watchClearMetadata => 'Cusboonaysii faahfaahinta dhacdada';

  @override
  String get watchClearMetadataDesc =>
      'Illow faahfaahinta dhacdada la kaydiyay si mar kale loo soo qaado';

  @override
  String get watchMetadataCleared =>
      'Faahfaahinta dhacdada mar kale ayaa la soo qaadi doonaa';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dhacdo',
      one: '1 dhacdo',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cutubyo',
      one: '1 cutub',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'Dhacdada $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'Cutubka $number';
  }

  @override
  String get watchSearching => 'Waa la raadinayaa…';

  @override
  String watchSearchingFor(String term) {
    return 'Waa la raadinayaa: $term';
  }

  @override
  String watchSelected(String title) {
    return 'La doortay: $title';
  }

  @override
  String watchFound(String title) {
    return 'La helay: $title';
  }

  @override
  String get watchNothingFound => 'Isha kan waxba kuma jiraan';

  @override
  String get watchSearchFailed => 'Raadinta ishu way fashilantay';

  @override
  String get watchLoadFailed => 'Liiska lama soo rari karo';

  @override
  String get watchSignInToTrack => 'Gal si aad u la socoto horumarkaaga';

  @override
  String watchInstallSource(String action) {
    return 'Rakib kordhin si aad u bilowdo $action';
  }

  @override
  String get watchSourceMissing => 'Ishani lama rakibin';

  @override
  String get watchWrongTitle => 'Ciwaan qalad ah?';

  @override
  String get watchSearchAgain => 'Mar kale raadi';

  @override
  String watchSearchSource(String source) {
    return 'Raadi $source';
  }

  @override
  String get watchSource => 'Isha';

  @override
  String get watchOptions => 'Ikhtiyaarro';

  @override
  String get watchReverse => 'Rog hab-ka';

  @override
  String get watchScanlators => 'Kooxaha';

  @override
  String get watchResetOptions => 'Dib u deji ikhtiyaarradan';

  @override
  String get watchContinue => 'Sii wad';

  @override
  String get watchStart => 'Bilow';

  @override
  String get watchPlay => 'Ciyaar';

  @override
  String get watchRead => 'Akhri';

  @override
  String get watchMarkWatched => 'Ku calaamadee la daawaday';

  @override
  String get watchMarkUnwatched => 'Ku calaamadee aan la daawan';

  @override
  String get watchMarkRead => 'Ku calaamadee la akhriyay';

  @override
  String get watchMarkUnread => 'Ku calaamadee aan la akhrin';

  @override
  String get watchFiller => 'Filler';

  @override
  String get watchRecap => 'Recap';

  @override
  String get watchNoEpisodes => 'Dhacdo lama helin';

  @override
  String get watchNoChapters => 'Cutub lama helin';

  @override
  String get watchSourceTools => 'Qalabka isha';

  @override
  String get watchSourceSettings => 'Dejimaha isha';

  @override
  String get watchOpenWebView => 'Ku fur web view';

  @override
  String get watchOpenWebViewDesc =>
      'Xalli hubinta Cloudflare ama gal; cookies-ka waa la wadaagaa codsiyada isha';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cookies ayaa loo kaydiyay $host',
      one: '1 cookie ayaa loo kaydiyay $host',
      zero: 'Cookies lagu kaydiyay $host ma jiraan',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Ogolaanshaha Cloudflare waa firfircoon yahay, $time';
  }

  @override
  String get watchClearanceMissing => 'Cookie ogolaansho Cloudflare ma jiro';

  @override
  String get watchClearanceSession => 'wuxuu sii jiraa ilaa app-ka la xidho';

  @override
  String get watchAgentShared =>
      'Codsiyadu waxay isticmaalaan user agent-ka web view, kaas oo Cloudflare hubiyo';

  @override
  String get watchAgentCustom =>
      'User agent gaar ah ayaa la dejiyay, sidaas darteed ogolaanshaha Cloudflare ee web view waa la diidi karaa';

  @override
  String get watchTestConnection => 'Tijaabi isku-xirka';

  @override
  String get watchSolveChallenge => 'Xalli';

  @override
  String watchProbeOk(int code) {
    return 'La gaari karaa (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare wali waxay codsanaysaa hubin';

  @override
  String watchProbeBlocked(int code) {
    return 'Goobta ayaa xannibtay (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'Goobta lama gaari karin';

  @override
  String get watchClearCookies => 'Nadiifi cookies-ka goobtan';

  @override
  String get watchCookiesCleared => 'Cookies-ka waa la nadiifiyay';

  @override
  String get watchMetaSource => 'Faahfaahinta dhacdada ka timid';

  @override
  String get watchMetaAuto => 'Toos';

  @override
  String get watchMetaOff => 'Dami';

  @override
  String get playerSettingsTitle => 'Dejimaha ciyaaraha';

  @override
  String get playerSectionPlayback => 'Ciyaarista';

  @override
  String get playerSectionSkip => 'Booditaanka';

  @override
  String get playerSectionGestures => 'Xakamaynta';

  @override
  String get playerSectionSubtitles => 'Tarjumaado hoose';

  @override
  String get playerSectionShaders => 'Shaders';

  @override
  String get playerSectionEngine => 'Matoor';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'Xawaaraha ciyaarista';

  @override
  String get playerCursedSpeed => 'Xawaaraha dheeraadka ah';

  @override
  String get playerCursedSpeedDesc => 'Ku dar xawaare ilaa 10x liiska';

  @override
  String get playerResize => 'Habka cabbirka';

  @override
  String get playerFitFit => 'Ku habboon';

  @override
  String get playerFitCover => 'Dabool';

  @override
  String get playerFitStretch => 'Fidi';

  @override
  String get playerSkipDuration => 'Dhererka badhanka booditaanka';

  @override
  String get playerSkipDurationDesc =>
      'Ilbiriqsiyada badhanka booditaanku boodo furitaannada iyo dhammaystirka dibaddooda';

  @override
  String get playerSeekDuration => 'Raadinta laba-taabasho';

  @override
  String get playerSeekDurationDesc =>
      'Ilbiriqsiyada la boodayo laba-taabasho ama fure fallaar ah';

  @override
  String get playerAutoPlay => 'Ciyaar kan xiga toos ah';

  @override
  String get playerAutoPlayDesc => 'Bilow dhacdada xigta marka tan dhammaato';

  @override
  String get playerResume => 'Ka sii wad halkii aad ku joojisay';

  @override
  String get playerResumeDesc => 'Ka sii wad dhacdo meeshii ugu danbaysay';

  @override
  String get playerOrientation => 'Jihaynta';

  @override
  String get playerOrientationAuto => 'La raac qalabka';

  @override
  String get playerOrientationLandscape => 'Dhinac-fidsan';

  @override
  String get playerOrientationPortrait => 'Dhinac-taagan';

  @override
  String get playerAutoSkipOpening => 'Ka bood furitaannada';

  @override
  String get playerAutoSkipEnding => 'Ka bood dhammaystirka';

  @override
  String get playerAutoSkipRecap => 'Ka bood recap';

  @override
  String get playerAutoSkipDesc =>
      'Ka bood isla marka uu bilaabmo, adigoo isticmaalaya AniSkip iyo waqtiyada stream-ka';

  @override
  String get playerSkipOnce => 'Mar keliya ka bood';

  @override
  String get playerSkipOnceDesc =>
      'Ha ka boodin qaybta isla marka aad dib ugu noqoto';

  @override
  String get playerAdjustBrightness => 'Dhaqdhaqaaqa iftiinka';

  @override
  String get playerAdjustBrightnessDesc =>
      'Kor iyo hoos ka sii dhaq midigta shaashadda';

  @override
  String get playerAdjustVolume => 'Dhaqdhaqaaqa codka';

  @override
  String get playerAdjustVolumeDesc =>
      'Kor iyo hoos ka sii dhaq bidixda shaashadda';

  @override
  String get playerHoldToSpeed => 'Hay si aad u dedejiso';

  @override
  String get playerHoldToSpeedDesc =>
      'Taabo oo hay muuqaalka si uu u ciyaaro degdeg, jiid dhinaca si aad xawaaraha u beddesho';

  @override
  String get playerThumbless => 'Barta raadinta ballaaran';

  @override
  String get playerThumblessDesc => 'Xarig dhumuc weyn oo aan fure lahayn';

  @override
  String get playerShowSubtitles => 'Muuji tarjumaadaha hoose';

  @override
  String get playerShowSubtitlesDesc => 'Dami si aad u qarisid tarjumaad kasta';

  @override
  String get playerSubtitleLanguage => 'Luqadda tarjumaadaha ee la door biday';

  @override
  String get playerSubtitleSize => 'Cabbirka tarjumaadaha';

  @override
  String get playerSubtitleWeight => 'Culeyska tarjumaadaha';

  @override
  String get playerSubtitleBottom => 'Meel hoose ee tarjumaadaha';

  @override
  String get playerSubtitleFont => 'Far-qoraalka tarjumaadaha';

  @override
  String get playerSubtitleColor => 'Midabka tarjumaadaha';

  @override
  String get playerSubtitleBackground => 'Gadaasha tarjumaadaha';

  @override
  String get playerSubtitleOutline => 'Xariiqda tarjumaadaha';

  @override
  String get playerLibass => 'Isticmaal libass';

  @override
  String get playerLibassDesc =>
      'Samee tarjumaadaha .ass ee qaabaysan. Cabbirka, midabka iyo far-qoraalka kor ku xusan markaas ma dhaqmaan';

  @override
  String get playerShaders => 'Shaders';

  @override
  String get playerShadersEnable => 'Daar shaders';

  @override
  String get playerShadersEnableDesc =>
      'Kor u qaad oo nadiifi sawirka adoo isticmaalaya GLSL shaders sida Anime4K';

  @override
  String get playerShadersOff => 'Shaders waa damsan yihiin';

  @override
  String get playerShadersMissing => 'Anime4K lama rakibin';

  @override
  String get playerShadersMissingDesc =>
      'Soo deji xirmada shader-ka Anime4K (ku dhawaad 0.8 MB) si aad u isticmaasho qaababka dhismay.';

  @override
  String get playerShadersDownload => 'Soo deji Anime4K';

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
  String get playerShadersPreview => 'Ku hordhac frame-kan';

  @override
  String get playerShadersUse => 'Isticmaal kan';

  @override
  String get playerPicture => 'Sawir';

  @override
  String get playerColors => 'Midabada';

  @override
  String get playerColorDefault => 'Caadi';

  @override
  String get playerColorVivid => 'Firfircoon';

  @override
  String get playerColorPop => 'Anime pop';

  @override
  String get playerColorSoft => 'Jilicsan';

  @override
  String get playerColorCinematic => 'Filim-nuuc';

  @override
  String get playerColorBright => 'Dhalaalaya';

  @override
  String get playerColorNight => 'Habeen';

  @override
  String get playerColorMono => 'Mono';

  @override
  String get playerColorCustom => 'Gaar ah';

  @override
  String get playerColorBrightness => 'Iftiinka';

  @override
  String get playerColorContrast => 'Kala duwanaanshaha';

  @override
  String get playerColorSaturation => 'Buuxinta midabka';

  @override
  String get playerColorGamma => 'Gamma';

  @override
  String get playerColorHue => 'Hue';

  @override
  String get playerColorReset => 'Dib u deji';

  @override
  String get playerColorAdjust => 'Hagaaji';

  @override
  String get playerShadersOriginal => 'Asalka';

  @override
  String get playerShadersPreviewFailed =>
      'Fiilooyin lagu hordhaco lama qabsan karin';

  @override
  String get playerShadersSoftware =>
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Only for a black video. Shaders don\'t work with it. Applies the next time the player opens';

  @override
  String get playerShadersCustomFiles => 'Shaders-kaaga';

  @override
  String get playerShadersCustom => 'Shaders gaar ah';

  @override
  String get playerShadersImport => 'Soo geli .glsl';

  @override
  String get playerShadersNone =>
      'Soo geli faylasha .glsl ama .hook ee adiga ku saabsan oo calaamadee si aad u silsilaysid';

  @override
  String get playerShadersBadFile => 'Dooro fayl shader ah .glsl ama .hook';

  @override
  String get playerDecoder => 'Decoder';

  @override
  String get playerDecoderAuto => 'Toos';

  @override
  String get playerDecoderAutoSafe => 'Toos (ammaan)';

  @override
  String get playerDecoderSoftware => 'Software';

  @override
  String get playerDecoderHardware => 'Hardware';

  @override
  String get playerDecoderHardwarePlus => 'Hardware+';

  @override
  String get playerVideoOutput => 'Soo-saarka muuqaalka';

  @override
  String get playerAudioChannels => 'Kanaalada codka';

  @override
  String get playerBuffer => 'Cabbirka buffer-ka (MB)';

  @override
  String get playerBufferDesc =>
      'Xusuusta ciyaartoygu isticmaali karo si uu stream u kaydiyo';

  @override
  String get playerUseMpvConf => 'Isticmaal mpv.conf';

  @override
  String get playerUseMpvConfDesc =>
      'Codso ikhtiyaarrada mpv.conf marka ciyaarista bilaabato';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'Wax ka beddel habaynta mpv';

  @override
  String get playerMpvConfDesc =>
      'Hal ikhtiyaar xariiq kasta, sida --hwdec=auto mpv.conf caadi ah. Profile-yada [qaansoleyda] ku jira waa la iska indhatiraa.';

  @override
  String get playerMpvConfSaved => 'mpv.conf waa la keydiyay';

  @override
  String get playerUseScripts => 'Isticmaal scripts-ka mpv';

  @override
  String get playerUseScriptsDesc =>
      'Soo rar plugin-nada galka scripts-ka. Waxay u baahan yihiin dhismaha libmpv oo taageera Lua ama JavaScript';

  @override
  String get playerScripts => 'Scripts-ka mpv';

  @override
  String get playerScriptsManage => 'Ku dar, ka saar oo beddel plugin-nada';

  @override
  String get playerScriptsAdd => 'Ku dar script';

  @override
  String get playerScriptsDesc =>
      'Plugin-nada Lua, JavaScript iyo native ee halkan la dhigo waa la soo rarayaa marka ciyaarista bilaabato.';

  @override
  String get playerScriptsNone => 'Weli scripts ma jiraan';

  @override
  String get playerScriptsBadFile =>
      'Dooro fayl .lua, .js ama plugin native ah';

  @override
  String get playerTuning => 'Hagaajinta muuqaalka horumarsan';

  @override
  String get playerTuningDesc =>
      'Beddel sync, caching, scaling iyo tone mapping. Qiimayaasha khaldan waxay waxyeelayn karaan ciyaarista';

  @override
  String get playerVideoSync => 'Sync-ga muuqaalka';

  @override
  String get playerInterpolation => 'Interpolation-ka fiilooyinka';

  @override
  String get playerInterpolationDesc =>
      'Dhaqdhaqaaq jilicsan, wuxuu u baahan yahay sync display-resample';

  @override
  String get playerPitch => 'Hagaajinta pitch-ka';

  @override
  String get playerPitchDesc => 'Ka dhig codadka kuwo dabiici ah xawaare kale';

  @override
  String get playerCacheSeconds => 'Cache (ilbiriqsi)';

  @override
  String get playerReadahead => 'Akhri horay (ilbiriqsi)';

  @override
  String get playerThreads => 'Dhuumaha decoder-ka';

  @override
  String get playerDeband => 'Deband';

  @override
  String get playerDebandDesc => 'Yaree xargaha midabka ee gradients-ka';

  @override
  String get playerDebandIterations => 'Soo noqnoqoshada deband';

  @override
  String get playerDebandThreshold => 'Xadka deband';

  @override
  String get playerCorrectDownscaling => 'Yaraynta saxda ah';

  @override
  String get playerSigmoid => 'Kor-u-qaadista sigmoid';

  @override
  String get playerScale => 'Kor-u-qaade';

  @override
  String get playerCscale => 'Chroma kor-u-qaade';

  @override
  String get playerDscale => 'Hoos-u-dhige';

  @override
  String get playerToneMapping => 'Tone mapping';

  @override
  String get playerTargetPeak => 'Ugu sarreeya bartilmaameedka';

  @override
  String get playerOpenFiles => 'Fur faylasha muuqaalka';

  @override
  String get playerOpenFilesDesc => 'Ciyaar faylasha qalabkan';

  @override
  String get playerOpenFolder => 'Fur galka';

  @override
  String get playerOpenFolderDesc =>
      'Ciyaar muuqaal kasta oo galka ku jira sida playlist';

  @override
  String get playerNetworkStream => 'Stream shabakad';

  @override
  String get playerNetworkStreamDesc => 'Fur xiriir muuqaal toos ah ama HLS';

  @override
  String get playerStreamUrl => 'URL-ka stream-ka';

  @override
  String get playerStreamReferer => 'Referer (ikhtiyaari)';

  @override
  String get playerTorrent => 'Torrent';

  @override
  String get playerTorrentDesc => 'Stream xiriir magnet ama fayl .torrent';

  @override
  String get playerMagnetLink => 'Xiriirka magnet ama URL torrent';

  @override
  String get playerPickTorrent => 'Dooro fayl .torrent';

  @override
  String get playerTorrentMissing =>
      'Marka hore ka rakib kordhinta torrent Dejimaha > Kordhin dheeraad ah';

  @override
  String get playerNoVideos => 'Muuqaal la ciyaari karo lama helin';

  @override
  String get playerReset => 'Dib u deji dejimaha ciyaaraha';

  @override
  String get playerResetDesc =>
      'U celi ikhtiyaar kasta oo ciyaaraha caadigiisa';

  @override
  String get playerResetConfirm => 'Dib u deji dhammaan dejimaha ciyaaraha?';

  @override
  String get playerResetDone => 'Dejimaha ciyaaraha dib ayaa loo dejiyay';

  @override
  String get playerQuality => 'Tayada';

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
  String get playerStreams => 'Stream-yada';

  @override
  String get playerAutoSelect => 'Dooro stream si toos ah';

  @override
  String get playerAutoSelectDesc =>
      'Dooro stream ugu eg doorashadaadii ugu danbaysay ee ciwaankan';

  @override
  String get playerLoadingStreams => 'Stream-yo ayaa la raadinayaa…';

  @override
  String get playerNoStreams => 'Dhacdadani stream ma leh';

  @override
  String get playerNoStreamsTitle => 'Stream lama helin';

  @override
  String get playerFailed => 'Ciyaaristu way fashilantay';

  @override
  String get playerTorrentNeeded => 'Stream-kani waa torrent';

  @override
  String get playerTorrentNeededDesc =>
      'Rakib kordhinta torrent si aad u ciyaarto xiriiriyeyaasha magnet iyo faylasha .torrent';

  @override
  String get playerOpenAddons => 'Fur kordhinta dheeraadka ah';

  @override
  String get playerTryAnotherStream => 'Isku day stream kale';

  @override
  String get playerEpisodes => 'Dhacdooyin';

  @override
  String get playerLock => 'Qufulo xakamaynta';

  @override
  String get playerFullscreen => 'Shaashad buuxda';

  @override
  String get readerChapters => 'Cutubyo';

  @override
  String get readerSettingsTitle => 'Dejimaha akhriska';

  @override
  String get readerPreviousChapter => 'Cutubka hore';

  @override
  String get readerNextChapter => 'Cutubka xiga';

  @override
  String get readerFirstChapter => 'Kani waa cutubka ugu horreeya';

  @override
  String get readerLastChapter => 'Wax walba waad dhammaysay';

  @override
  String get readerFailed => 'Cutubkan lama furi karo';

  @override
  String get readerOpenBook => 'Open a book';

  @override
  String get readerOpenBookDesc =>
      'Read an epub (novel reader) or a PDF (manga reader) from your files';

  @override
  String get readerNoText => 'Cutubkan qoraal ma leh';

  @override
  String get readerPerTitle => 'Ciwaankan oo keliya';

  @override
  String get readerPerTitleDesc =>
      'Ilaali dejimahan akhriska ciwaankan oo keliya';

  @override
  String get readerSectionReading => 'Akhrinta';

  @override
  String get readerSectionControls => 'Xakamaynta';

  @override
  String get readerSectionDisplay => 'Bandhigga';

  @override
  String get readerSectionNovel => 'Novel';

  @override
  String get readerMode => 'Habka akhriska';

  @override
  String get readerModeAuto => 'Auto (by series type)';

  @override
  String get readerModeRtl => 'Midig ilaa bidix';

  @override
  String get readerModeLtr => 'Bidix ilaa midig';

  @override
  String get readerModeVertical => 'Bogag toosan';

  @override
  String get readerModeWebtoon => 'Webtoon';

  @override
  String get readerModeContinuous => 'Hoos u dhaqaaq joogto ah';

  @override
  String get readerScale => 'Cabbirka sawirka';

  @override
  String get readerScaleFit => 'Ku habboonee shaashadda';

  @override
  String get readerScaleWidth => 'Ku habboonee ballaca';

  @override
  String get readerScaleHeight => 'Ku habboonee dhererka';

  @override
  String get readerScaleOriginal => 'Cabbirka asalka';

  @override
  String get readerScaleSmart => 'Ku habboonaysiin caqli leh';

  @override
  String get readerDoublePage => 'Laba bog';

  @override
  String get readerDoublePageDesc =>
      'Muuji laba bog is garab socda marka dhinac-fidsan';

  @override
  String get readerDoubleTapZoom => 'Laba-taabasho si aad u weyneyso';

  @override
  String get readerDoubleTapZoomDesc =>
      'Weyneyso ama yaree bog adigoo laba jeer taabanaya';

  @override
  String get readerAnimate => 'Animation-ka bogga';

  @override
  String get readerAnimateDesc => 'Animation u samee rogista boggaga';

  @override
  String get readerSidePadding => 'Meel dhinaca ah';

  @override
  String get readerSidePaddingDesc => 'Meesha ku xigta boggaga boqolkiiba';

  @override
  String get readerPageGap => 'Daloolka boggaga';

  @override
  String get readerPageGapDesc => 'Meesha u dhaxaysa boggaga';

  @override
  String get readerAutoNext => 'Ku sii wad cutubka xiga';

  @override
  String get readerAutoNextDesc =>
      'Soo rar cutubka xiga markaad akhrineyso dhammaadka kan';

  @override
  String get readerPreload => 'Hore u soo rar boggaga';

  @override
  String get readerPreloadDesc => 'Immisa bog ayaa hore loo soo dejiyaa';

  @override
  String get readerTapZones => 'Aagagga taabashada';

  @override
  String get readerTapDefault => 'Caadi';

  @override
  String get readerTapLShaped => 'Qaabka L';

  @override
  String get readerTapKindle => 'Sida Kindle';

  @override
  String get readerTapEdge => 'Cidhifyada oo keliya';

  @override
  String get readerTapOff => 'La damiyay';

  @override
  String get readerInvertTaps => 'Rog aagagga taabashada';

  @override
  String get readerInvertTapsDesc => 'Is beddel aagagga hore iyo xiga';

  @override
  String get readerBackground => 'Gadaal';

  @override
  String get readerBackgroundBlack => 'Madow';

  @override
  String get readerBackgroundGray => 'Cawl';

  @override
  String get readerBackgroundWhite => 'Cad';

  @override
  String get readerBackgroundTheme => 'Qaabka app-ka';

  @override
  String get readerFilter => 'Shaandhada midabka';

  @override
  String get readerFilterNone => 'Midna';

  @override
  String get readerFilterGrayscale => 'Madow-cawl';

  @override
  String get readerFilterInvert => 'Rog';

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
  String get readerDim => 'Madoobee';

  @override
  String get readerDimDesc => 'Ka dhig boggaga mid mugdi ah';

  @override
  String get readerPageNumber => 'Lambarka bogga';

  @override
  String get readerPageNumberDesc =>
      'Muuji lambarka bogga marka aad akhrinayso';

  @override
  String get readerFullscreen => 'Shaashad buuxda';

  @override
  String get readerFullscreenDesc => 'Qari barafyada nidaamka';

  @override
  String get readerCropBorders => 'Gooy cidhifyada';

  @override
  String get readerCropBordersDesc =>
      'Ka jar baaxadaha madhan ee cad ama madow boggaga';

  @override
  String get readerLongPressSave => 'Hold a page to save it';

  @override
  String get readerLongPressSaveDesc =>
      'Long press a page to open save, share and copy options';

  @override
  String get readerVolumeKeys => 'Furayaasha codku wuxuu rogaa boggaga';

  @override
  String get readerVolumeKeysDesc =>
      'Codka hoos wuxuu horay u socdaa, codka kor wuxuu dib u noqdaa';

  @override
  String get readerBookmarks => 'Calaamadaha';

  @override
  String get readerBookmarkAdd => 'Ku dar calaamad';

  @override
  String get readerBookmarkRemove => 'Ka saar calaamad';

  @override
  String get readerBookmarksEmpty => 'Weli calaamad ma jirto';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'Bogga $page ee $total';
  }

  @override
  String get readerAutoScroll => 'Hoos u dhaqaaq toos ah';

  @override
  String get readerAutoScrollStop => 'Jooji hoos u dhaqaaqa toos ah';

  @override
  String get readerAutoScrollSpeed => 'Xawaaraha hoos u dhaqaaqa toos ah';

  @override
  String get readerAutoScrollSpeedDesc =>
      'Sida degdeg boggaggu u dhaqaaqaan ama u rogmaan iyaga laftooda';

  @override
  String get readerKeepOn => 'Shaashadda ha daaran';

  @override
  String get readerKeepOnDesc =>
      'Ka hortag shaashadda inay dansato markaad akhrinayso';

  @override
  String get readerOrientation => 'Jihaynta';

  @override
  String get readerOrientationFree => 'Xor';

  @override
  String get readerOrientationPortrait => 'Dhinac-taagan';

  @override
  String get readerOrientationLandscape => 'Dhinac-fidsan';

  @override
  String get readerSaveProgress => 'Kaydi horumarka';

  @override
  String get readerSaveProgressDesc =>
      'Xasuuso bogga oo cutubyada ku calaamadee la akhriyay';

  @override
  String get readerReset => 'Dib u deji dejimaha akhriska';

  @override
  String get readerResetDesc => 'Ku noqo kuwa caadiga ah';

  @override
  String get novelSize => 'Cabbirka qoraalka';

  @override
  String get novelFont => 'Far-qoraal';

  @override
  String get novelLineHeight => 'Dhererka xariiqda';

  @override
  String get novelParagraph => 'Meesha u dhaxaysa tuducyada';

  @override
  String get novelMargin => 'Baaxadaha';

  @override
  String get novelTheme => 'Qaabka akhriska';

  @override
  String get novelThemeApp => 'Qaabka app-ka';

  @override
  String get novelThemeLight => 'Iftiin';

  @override
  String get novelThemeSepia => 'Sepia';

  @override
  String get novelThemeDark => 'Mugdi';

  @override
  String get novelThemeBlack => 'Madow';

  @override
  String get novelJustify => 'Isu simo qoraalka';

  @override
  String get novelJustifyDesc => 'Qoraalka ku isku xaadh labada cidhifba';

  @override
  String get trackProgressTitle => 'Kaydi horumarka?';

  @override
  String trackProgressAnime(String name) {
    return 'La soco $name liiskaaga markaad daawato? Dooro \"Qalabkan oo keliya\" si aad ugu hayso gudaha, ama Maya si aadan waxba u kaydin.';
  }

  @override
  String trackProgressManga(String name) {
    return 'La soco $name liiskaaga marka aad dhammaysato cutub? Dooro \"Qalabkan oo keliya\" si aad ugu hayso gudaha, ama Maya si aadan waxba u kaydin.';
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
  String get trackProgressYes => 'Kaydi';

  @override
  String get trackProgressReset =>
      'Su\'aasha kaydinta horumarka waa la dib u dejiyay nooca kan, mar kale ayay weydiin doontaa';

  @override
  String get trackProgressNo => 'Maya';

  @override
  String get trackProgressOff => 'Dami';

  @override
  String get trackProgressLocal => 'Qalabkan oo keliya';

  @override
  String get trackProgressSettingAnime => 'La soco horumarka anime';

  @override
  String get trackProgressSettingManga => 'La soco horumarka manga iyo novel';

  @override
  String get trackProgressSettingDesc =>
      'Maxaa la sameeyaa marka aad furto dhacdo ama aad dhammaysato cutub';

  @override
  String get trackProgressAsk => 'Weydii';

  @override
  String get trackProgressAlways => 'Mar walba';

  @override
  String get dantotsuImport => 'Ka soo geli Dantotsu';

  @override
  String get dantotsuImportDesc =>
      'Akhri kayd dejimaha Dantotsu (.ani, ama .sani oo sir ah)';

  @override
  String get dantotsuPick => 'Dooro kayd Dantotsu';

  @override
  String get dantotsuNothing => 'Faylkan waxba lagama soo gelin karo';

  @override
  String get dantotsuApply => 'Soo geli kuwa la doortay';

  @override
  String dantotsuDone(int done, int total) {
    return 'La soo geliyay $done ka mid ah $total';
  }

  @override
  String get dantotsuGroupAccounts => 'Akoonno';

  @override
  String get dantotsuGroupAppearance => 'Muuqaal';

  @override
  String get dantotsuGroupExtensions => 'Kordhin';

  @override
  String get dantotsuGroupApp => 'App';

  @override
  String get dantotsuGroupPlayer => 'Ciyaaraha';

  @override
  String get dantotsuAnilist => 'Galitaanka AniList';

  @override
  String get dantotsuMal => 'Galitaanka MyAnimeList';

  @override
  String get dantotsuDiscord => 'Token-ka Discord Rich Presence';

  @override
  String get dantotsuTheme => 'Qaab';

  @override
  String get dantotsuReposAnime => 'Kaydka kordhinta anime';

  @override
  String get dantotsuReposManga => 'Kaydka kordhinta manga';

  @override
  String get dantotsuReposNovel => 'Kaydka kordhinta novel';

  @override
  String get dantotsuUpdates => 'Hubinta cusboonaysiinta';

  @override
  String get dantotsuComments => 'Faallooyin';

  @override
  String get dantotsuActivity => 'Hubinta ogeysiisyada AniList';

  @override
  String get dantotsuDns => 'Bixiyaha DNS';

  @override
  String get dantotsuPlayer => 'Xawaaraha ciyaaraha iyo midabada tarjumaadaha';

  @override
  String get dantotsuWarning =>
      'Faylkan wuxuu hayaa token-yada gelitaanka. Qari.';

  @override
  String get novelIndent => 'Gudaha ka bilow tuducyada';

  @override
  String get novelIndentDesc => 'Ku bilow tuduc kasta gudaha xariiqda hore';

  @override
  String get novelLetterSpacing => 'Meesha u dhaxaysa xarfaha';

  @override
  String get novelSectionTranslate => 'Tarjumaad';

  @override
  String get sectionExperimental => 'Tijaabo';

  @override
  String get kitsuGraphqlDetail =>
      'Boggaga faahfaahinta oo degdeg ah (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'Soo rar ciwaan jilayaashiisa, shaqaalihiisa iyo gelitaankaaga hal codsi';

  @override
  String get togetherTitle => 'Wada daawo';

  @override
  String get togetherIntro =>
      'Ku dheji xiriirka qolka saaxiibkaa kuu soo diray. Isla markiiba ayaad ku biirtaa ciyaartoygana wuu furmaa marka ay bilaabaan daawashada.';

  @override
  String get togetherName => 'Magacaaga';

  @override
  String get togetherConnecting => 'Waa la xidhayaa…';

  @override
  String get togetherLeave => 'Ka bax qolka';

  @override
  String get togetherYou => 'Adiga';

  @override
  String get togetherNoChat => 'Weli fariin ma jirto';

  @override
  String get togetherChatHint => 'Fariin';

  @override
  String get togetherCopyInvite => 'Koobi casuumaadda';

  @override
  String get togetherShareInvite => 'Share invite';

  @override
  String togetherShareText(String link) {
    return 'Watch with me on Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'Server-ka iyo qolka waa la koobiyay';

  @override
  String get togetherConnectionLost => 'Isku-xirka waa go\'ay';

  @override
  String togetherConnectedTo(String room) {
    return 'Waxaa lagu xidhay $room';
  }

  @override
  String togetherFailed(String error) {
    return 'Lama xidhi karin: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name ayaa ku biiray';
  }

  @override
  String togetherLeft(String name) {
    return '$name ayaa ka baxay';
  }

  @override
  String togetherPaused(String name) {
    return '$name ayaa hakiyay';
  }

  @override
  String togetherResumed(String name) {
    return '$name ayaa sii waday';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name ayaa boodday $time';
  }

  @override
  String get togetherFollowFailed =>
      'Dhacdada martigeliyaha lama furi karin. Adigu fur.';

  @override
  String get togetherJoinRole => 'Ku biir qol';

  @override
  String get togetherOpenHost => 'Fur dhacdada martigeliyaha';

  @override
  String get togetherShowChat => 'Muuji sheekada toos ah';

  @override
  String get togetherWaitingHost =>
      'Waxaa la sugayaa martigeliyaha inuu bilaabo dhacdo';

  @override
  String get togetherRoomLink => 'Xiriirka qolka';

  @override
  String get togetherBadLink => 'Taasi ma aha xiriir qol';

  @override
  String get togetherHostClosed => 'Martigeliyuhu wuu xidhay qolka';

  @override
  String get togetherNowPlaying => 'Hadda ciyaaraya';

  @override
  String togetherWatchingCount(int count) {
    return '$count daawanaya';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user wuxuu rabaa inuu hakiyo';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user wuxuu rabaa inuu sii wado';
  }

  @override
  String get togetherChip => 'Wadajir';

  @override
  String get togetherSettingsDesc =>
      'Ku biir qolka saaxiib adigoo xiriir isticmaalaya';

  @override
  String get novelBilingual => 'Muuji asalka iyo tarjumaadda';

  @override
  String get novelBilingualDesc =>
      'Tuduc kasta wuxuu muujiyaa qoraalka asalka ah iyo tarjumaaddiisa hoostiisa';

  @override
  String get novelTranslateTo => 'U tarjun';

  @override
  String get novelTranslateOff => 'Dami';

  @override
  String get novelSectionSpeech => 'Qoraal ilaa hadal';

  @override
  String get novelSpeechRate => 'Xawaaraha hadalka';

  @override
  String get novelSpeechPitch => 'Dhawaaqa hadalka';

  @override
  String get novelSpeak => 'Ku akhri cod';

  @override
  String get novelSpeakStop => 'Jooji akhriska codka';

  @override
  String get novelTranslate => 'Tarjun cutubka';

  @override
  String get novelTranslateShowOriginal => 'Muuji asalka';

  @override
  String novelTranslateFailed(String error) {
    return 'Tarjumaaddu way fashilantay: $error';
  }

  @override
  String get novelSpeechUnavailable => 'Qoraal ilaa hadal qalabkan kuma jiro';

  @override
  String get novelSpeechVoice => 'Cod';

  @override
  String get novelSpeechVoiceDefault => 'Caadiga nidaamka';

  @override
  String get novelSpeakPrevious => 'Xariiqda hore';

  @override
  String get novelSpeakNext => 'Xariiqda xigta';

  @override
  String get novelTapPaging => 'Taabo cidhifyada si aad bogga u rogto';

  @override
  String get novelTapPagingDesc =>
      'Taabo dhinaca bidix ama midig si aad bog u dhaqaajiso, dhexdu waxay muujisaa xakamaynta';

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
    return '$count daqiiqo ayaa harsan';
  }

  @override
  String get novelBold => 'Qoraal dufan';

  @override
  String get novelBoldDesc => 'Isticmaal culeys ka culus';

  @override
  String readerFinishedChapter(String chapter) {
    return 'La dhammeeyay $chapter';
  }

  @override
  String readerNextUp(String chapter) {
    return 'Xiga: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'Hore: $chapter';
  }

  @override
  String get readerNoPages => 'Cutubkan bog ma leh';

  @override
  String get readerLoadingPages => 'Boggaga waa la soo rarayaa…';

  @override
  String get readerSlowPage => 'Bogga weli waa la soo rarayaa…';

  @override
  String get readerPageFailed => 'Bogga lama soo rari karo';

  @override
  String get playerShowComments => 'Muuji faallooyinka';

  @override
  String get playerHideComments => 'Qari faallooyinka';

  @override
  String get playerSubtitles => 'Tarjumaado hoose';

  @override
  String get playerSubtitlesOff => 'Tarjumaadaha waa damsan yihiin';

  @override
  String get playerAudio => 'Cod';

  @override
  String get playerAddSubtitle => 'Ku dar faylka tarjumaadda';

  @override
  String get playerAddAudio => 'Ku dar faylka codka';

  @override
  String get playerChapters => 'Cutubyo';

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
  String get playerNoChapters => 'Cutub ma jiro';

  @override
  String get playerTimestamp => 'Calaamadda waqtiga';

  @override
  String get playerAutoPlayDelay => 'Tirinta dhacdada xigta';

  @override
  String get playerWatchedAt => 'U tiri sida la daawaday';

  @override
  String playerNextIn(int seconds) {
    return 'Dhacdada xigta ${seconds}ilbiriqsi kadib';
  }

  @override
  String get playerPlayNow => 'Hadda ciyaar';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: toos ayuu u booday ciwaankan';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: toos uma boodi doono ciwaankan';
  }

  @override
  String get playerAudioLanguage => 'Luqadda codka ee la door biday';

  @override
  String get playerLanguageOrderHint =>
      'Luqadaha ku kala saar hakad. Tan ugu horraysa ee la helo ayaa la isticmaalaa.';

  @override
  String get playerPip => 'Sawir ku jira sawir';

  @override
  String get playerAutoPip => 'Sawir ku jira sawir marka aad ka baxdo';

  @override
  String get playerAutoPipDesc =>
      'Ku sii ciyaar daaqad yar marka aad app-ka ka baxdo';

  @override
  String playerAutoPlaying(String title) {
    return 'Hadda xigta: $title…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'Shaders lama rakibin karin: $error';
  }

  @override
  String playerChapter(int number) {
    return 'Cutubka $number';
  }

  @override
  String get playerPerTitle => 'Ciwaankan oo keliya';

  @override
  String get playerPerTitleDesc =>
      'Ilaali ikhtiyaarradan ciwaankan oo ha taaban kuwa caadiga ah';

  @override
  String get playerSwapGestures => 'Beddel dhinacyada swipe-ka';

  @override
  String get playerSwapGesturesDesc => 'Iftiinka bidixda iyo codka midigta';

  @override
  String get playerOpenBig => 'Ku fur muuqaal weyn';

  @override
  String get playerOpenBigDesc =>
      'Ku bilow player-ka shaashadda buuxda halkii liiska qaybaha';

  @override
  String get playerPauseOnBlur => 'Jooji marka aan fooggnayn';

  @override
  String get playerPauseOnBlurDesc =>
      'Jooji marka app-ka la dahaadho, sida guddiga ogeysiisyada, kuna sii wad marka aad soo noqoto';

  @override
  String get playerAudioOutput => 'Soo-saarka codka';

  @override
  String get fontAppDefault => 'Far-qoraalka app-ka';

  @override
  String get fontImport => 'Soo geli far-qoraal';

  @override
  String get fontSample => 'The quick brown fox jumps over the lazy dog';

  @override
  String get playerSubtitleDelay => 'Daahista tarjumaadaha';

  @override
  String get playerAudioDelay => 'Daahista codka';

  @override
  String get playerDelayReset => 'Dib u deji';

  @override
  String get playerOnlineSubtitles => 'Tarjumaado khadka';

  @override
  String get playerOnlineSearchHint => 'Ciwaanka iyo dhacdada';

  @override
  String get playerOnlineNone => 'Tarjumaado lama helin';

  @override
  String playerOnlineFailed(String error) {
    return 'Raadinta tarjumaadaha way fashilantay: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'Tarjumaadan lama soo dejin karo: $error';
  }

  @override
  String get playerOnlineMatch => 'Wuxuu ku habboon yahay faylkan';

  @override
  String get playerOnlineEpisode => 'Isku-dhigma dhacdo';

  @override
  String playerOnlineDownloads(int count) {
    return '$count soo dejin';
  }

  @override
  String get playerSeekPreview => 'Hordhac raadinta';

  @override
  String get playerSeekPreviewDesc =>
      'Muuji hordhac yar oo frame ah barta raadinta dusheeda marka la jiido. Wuxuu furaa decoder labaad oo xalin hoose ah, sidaas darteed wuxuu isticmaalaa xog dheeraad ah stream-yada.';

  @override
  String get playerSettingsChip => 'Dejimaha';

  @override
  String get playerAudioDevice => 'Qalabka codka';

  @override
  String get settingsDownloads => 'Soo dejinta';

  @override
  String get settingsDownloadsDesc =>
      'Dhacdooyinka offline, safka iyo qaabka offline';

  @override
  String get downloadsTitle => 'Soo dejinta';

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
      'Eeg safka iyo wax kasta oo qalabkan ku kaydsan';

  @override
  String get downloadTitle => 'Soo deji';

  @override
  String get downloadAlready =>
      'Hore ayaa loo soo dejiyay ama safka ayuu ku jiraa';

  @override
  String get downloadPickStream => 'Stream kee la soo dejiyaa?';

  @override
  String get downloadPickSubtitle => 'Tarjumaad kee la soo dejiyaa?';

  @override
  String get downloadPickAudio => 'Cod kee la soo dejiyaa?';

  @override
  String get downloadNoAudio => 'Cod dheeraad ah ma jiro';

  @override
  String get downloadAudio => 'Cod';

  @override
  String get downloadNoSubtitle => 'Tarjumaad ma jirto';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'Stream-kani waa playlist HLS ah. Soo dejintiisu waxay u baahan tahay kordhinta FFmpeg.';

  @override
  String get downloadSourceMissing => 'Isha dhacdadan lama rakibin';

  @override
  String get downloadWaitingConnection => 'Isku-xirka waa la sugayaa';

  @override
  String get downloadSubtitles => 'Tarjumaado hoose';

  @override
  String get downloadDownloaded => 'La soo dejiyay';

  @override
  String get downloadOffline => 'Offline';

  @override
  String get downloadDelete => 'Tir soo dejinta';

  @override
  String get downloadCancel => 'Jooji';

  @override
  String get downloadPause => 'Hakad';

  @override
  String get downloadPaused => 'La hakiyay';

  @override
  String get downloadResume => 'Sii wad';

  @override
  String get downloadPauseAll => 'Hakadi dhammaan';

  @override
  String get downloadResumeAll => 'Sii wad dhammaan';

  @override
  String get downloadQueuedState => 'Safka ayaa lagu sugayaa';

  @override
  String get downloadResolving => 'Stream-ka waa la helayaa…';

  @override
  String get downloadUsedFallback =>
      'Stream u dhigma ma jiro, kii ugu horreeyay ayaa la isticmaalay';

  @override
  String get downloadTabQueue => 'Safka';

  @override
  String get downloadTabDone => 'Dhammaaday';

  @override
  String get downloadTabFailed => 'Fashilmay';

  @override
  String get downloadEmptyQueue => 'Waxba lama soo dejinayo';

  @override
  String get downloadEmptyDone => 'Weli waxba lama soo dejin';

  @override
  String get downloadEmptyFailed => 'Soo dejin fashilantay ma jirto';

  @override
  String get downloadNext => 'Dhacdada xigta';

  @override
  String downloadNextN(int count) {
    return '$count dhacdo ee xigta';
  }

  @override
  String downloadUnwatched(int count) {
    return 'Dhammaan aan la daawan ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'Kooxdan ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'Dhammaan dhacdooyinka ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dhacdo ayaa safka ku jira',
      one: '1 dhacdo ayaa safka ku jirta',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name waa la soo dejiyay';
  }

  @override
  String downloadFailedBody(String name) {
    return '$name soo dejintiisu way fashilantay';
  }

  @override
  String downloadStorage(String size) {
    return '$size ayaa isticmaalay soo dejinta';
  }

  @override
  String get downloadQueueHeader => 'Safka';

  @override
  String get downloadParallel => 'Soo dejin isku mar ah';

  @override
  String get downloadParallelDesc => 'Hal mar hal soo deji ama dhowr isku mar';

  @override
  String get downloadOneByOne => 'Midba midka kale';

  @override
  String get downloadNotifications => 'Ogeysiisyada soo dejinta';

  @override
  String get downloadNotificationsDesc =>
      'Horumar toos ah halka nidaamku taageero, haddii kale qoraal marka soo dejintu dhammaato';

  @override
  String get downloadNotifyLive => 'Toos ah';

  @override
  String get downloadNotifyDone => 'Marka la dhammeeyo';

  @override
  String get downloadNotifyOff => 'Dami';

  @override
  String get downloadInfoFile =>
      'Qor fayl macluumaad ah soo dejin kasta agteeda';

  @override
  String get downloadInfoFileDesc =>
      'Wuxuu u keydiyaa stream-ka, tayada, tarjumaadda iyo waqtiyada booditaanka sida fayl .json ah oo yar';

  @override
  String get offlineHeader => 'Offline';

  @override
  String get offlineModeDesc =>
      'Toos wuxuu u aadaa offline kaliya marka app-ku bilaabmo isku-xir la\'aan. Mar walba wuxuu ku sii jiraa offline ilaa aad beddesho.';

  @override
  String get offlineModeOff => 'Dami';

  @override
  String get offlineModeAlways => 'Mar walba';

  @override
  String get offlineModeOn =>
      'Qaabka offline waa shidan yahay. Isbeddelada halkan ayaa lagu keydiyaa waxaana la diraa marka aad online ku noqoto.';

  @override
  String get offlineSaved =>
      'Waxay ku kaydsan tahay qalabkan, waxay waafaqi doontaa marka aad online noqoto';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count isbeddel ayaa la waafajiyay',
      one: '1 isbeddel ayaa la waafajiyay',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count isbeddel ayaa sugaya waafajin',
      one: '1 isbeddel ayaa sugaya waafajin',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'Isbeddelada sugaya waafajin';

  @override
  String get offlinePendingNone => 'Waxba ma suganayaan';

  @override
  String get offlineSyncNow => 'Hadda waafaji';

  @override
  String get offlineDiscard => 'Tuur';

  @override
  String get downloadNotOffline =>
      'Dhacdadan lama soo dejin, sidaas darteed offline lama heli karo';

  @override
  String get offlineModeChip => 'Offline';

  @override
  String get downloadNextChapter => 'Cutubka xiga';

  @override
  String downloadNextChapters(int count) {
    return '$count cutub ee xiga';
  }

  @override
  String downloadUnread(int count) {
    return 'Dhammaan aan la akhrin ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'Dhammaan cutubyada ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total bog';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count bog';
  }

  @override
  String get downloadFfmpegTitle => 'Kordhinta FFmpeg ayaa loo baahan yahay';

  @override
  String get downloadFfmpegBody =>
      'Stream-kani waa playlist HLS ah. Kordhinta FFmpeg waxay isku xidhaa qaybihiisa hal fayl mp4 ah. La\'aanteed qaybaha waxaa lagu hayaa galka dhacdada waxaana laga ciyaaraa halkaas.';

  @override
  String get downloadFfmpegInstall => 'Rakib';

  @override
  String get downloadFfmpegInstalling =>
      'FFmpeg waa la rakibayaa, waxay qaadan kartaa waqti…';

  @override
  String get downloadFinishing => 'Qaybaha waxaa lagu soo biirinayaa hal fayl…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total qaybood';
  }

  @override
  String get downloadTorrentNoFile =>
      'Torrent-ku fayl muuqaal ah oo la soo dejiyo ma laha';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Waxaa la soo dejinayaa $count shay',
      one: 'Waxaa la soo dejinayaa 1 shay',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'Tir soo dejinta la daawaday';

  @override
  String get downloadAutoDeleteDesc =>
      'Waxay ka saartaa soo dejinta marka horumarkaagu gaadho dhacdadaas ama cutubkaas';

  @override
  String get downloadConnections => 'Isku-xirrada soo dejin kasta';

  @override
  String get downloadConnectionsDesc =>
      'Fayl weyn wuxuu u kala qaybiyaa qaybo isku mar la soo qaado. Server-yada qaar xad ayay saaraan.';

  @override
  String get downloadPlayChoice => 'Ka ciyaar';

  @override
  String get downloadPlayLocalDesc => 'Faylka ku kaydsan qalabkan';

  @override
  String get downloadPlayStream => 'Stream online';

  @override
  String get downloadPlayStreamDesc => 'Ka soo rar dhacdada isha';

  @override
  String get offlineFeedTitle => 'Lagu soo dejiyay qalabkan';

  @override
  String get offlineFeedEmpty =>
      'Wax soo deji marka aad online tahay halkan ayay ka muuqan doonaan';

  @override
  String get offlineEnabled => 'Qaabka offline waa shidan yahay';

  @override
  String get offlineDisabled => 'Qaabka offline waa damsan yahay';

  @override
  String get downloadReadChoice => 'Ka akhri';

  @override
  String get downloadReadLocalDesc => 'Boggaga ku kaydsan qalabkan';

  @override
  String get downloadReadOnline => 'Online akhri';

  @override
  String get downloadReadOnlineDesc => 'Ka soo rar cutubka isha';

  @override
  String downloadDeleteConfirm(String name) {
    return 'Ka tir $name qalabkan?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return 'Jooji soo dejinta $name? Waxa hore loo soo dejiyay waa la tirayaa.';
  }

  @override
  String get downloadFfmpegFolder => 'U hay sida gal';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Tuur $count isbeddel oo aan waligood la dirin? Tan dib looma celin karo.',
      one: 'Tuur isbeddelka aan waligii la dirin? Tan dib looma celin karo.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Wi-Fi ayaa la sugayaa';

  @override
  String get downloadWaitingMetered => 'Waa la hakiyay isku-xir cabbirsan';

  @override
  String get downloadWifiOnly => 'Wi-Fi oo keliya';

  @override
  String get downloadWifiOnlyDesc =>
      'Soo dejintu way sugaysaa marka aad ku jirto xogta moobilka';

  @override
  String get downloadMetered => 'Hakad isku-xirrada cabbirsan';

  @override
  String get downloadMeteredDesc =>
      'Sidoo kale waxay sugtaa Wi-Fi-ga qalabkaagu ku calaamadeeyo cabbirsan';

  @override
  String get downloadSpeedLimit => 'Xadka xawaaraha';

  @override
  String get downloadSpeedLimitDesc =>
      'Waxay xaddidaa xawaaraha soo dejinta guud';

  @override
  String get downloadUnlimited => 'Aan xaddidnayn';

  @override
  String get downloadMoveToTop => 'U guuri kor';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds seeds · $peers peers';
  }

  @override
  String get downloadTorrentFile => 'Fayl kee?';

  @override
  String get downloadTorrentAuto => 'Si toos ah ugu habboonee dhacdada';

  @override
  String get downloadTorrentLoading => 'Torrent-ka waa la akhrinayaa…';

  @override
  String get watchAutoSource => 'Si toos ah ugu beddel isha xigta';

  @override
  String get watchAutoSourceDesc =>
      'Haddii isha ciwaanka aysan heli karin ama soo rari weydo, isku day isha xigta ee la rakibay';

  @override
  String get extensionTest => 'Tijaabi kordhinta';

  @override
  String get extensionTestCopy => 'Koobi fashilaadyada iyo log-yadooda';

  @override
  String get extensionTestQuery => 'Eray raadin';

  @override
  String get extensionTestRun => 'Orod';

  @override
  String get extensionTestStop => 'Jooji';

  @override
  String get extensionTestNone => 'Kordhin la rakibay oo nooca kan ah ma jirto';

  @override
  String get extensionTestNotRun => 'Weli lama tijaabin';

  @override
  String get extensionTestSearch => 'Raadi';

  @override
  String get extensionTestDetail => 'Faahfaahin';

  @override
  String get extensionTestUnits => 'Dhacdooyin / cutubyo';

  @override
  String get extensionTestLinks => 'Stream-yo / bogag';

  @override
  String extensionTestFailedAt(String step) {
    return 'Wuxuu ku fashilmay $step';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$done ka mid ah $total ayaa la tijaabiyay · $passed gudbay · $failed fashilmay';
  }

  @override
  String get extensionTestCopyLogs => 'Koobi wax walba oo log-yo buuxa leh';

  @override
  String get onboardingFeaturesTitle => 'Dhammaan hal meel';

  @override
  String get onboardingFeaturesBody =>
      'Wax kasta oo aad la socoto, daawato iyo akhrido, adigoon app badan is-dhex marin.';

  @override
  String get onboardingFeatureTrack => 'La soco wax walba';

  @override
  String get onboardingFeatureTrackDesc =>
      'Liisaska, horumarka iyo dhibcaha AniList, MyAnimeList, Simkl, Kitsu iyo MangaBaka.';

  @override
  String get onboardingFeatureWatch => 'Daawo & akhri';

  @override
  String get onboardingFeatureWatchDesc =>
      'Rakib kordhin oo daawo anime ama akhri manga iyo novel gudaha app-ka.';

  @override
  String get onboardingFeatureOffline => 'U qaado offline';

  @override
  String get onboardingFeatureOfflineDesc =>
      'Soo deji dhacdooyin iyo cutubyo, oo ku sii wad isku-xir la\'aan.';

  @override
  String get onboardingFeatureSync => 'Ka dhig liisaska kuwo is-waafaqsan';

  @override
  String get onboardingFeatureSyncDesc =>
      'Ku koobi liiskaaga adeegyada oo dhan, ama ha guuleysto kan hore u sii socda.';

  @override
  String get onboardingServices => 'Wuxuu la shaqeeyaa';

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
