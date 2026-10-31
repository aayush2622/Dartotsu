// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'La NOUVELLE meilleure app pour\nsuivre tes animes & mangas';

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
  String get loadMore => 'Charger plus';

  @override
  String get login => 'Connexion';

  @override
  String get continueAsGuest => 'Continuer en invité';

  @override
  String get getStarted => 'C\'est parti';

  @override
  String get loginWithToken => 'Se connecter avec un token';

  @override
  String get pasteTokenHint => 'Colle ton token d\'accès';

  @override
  String loginTo(String service) {
    return 'Connexion à $service';
  }

  @override
  String get settings => 'Réglages';

  @override
  String get account => 'Compte';

  @override
  String get about => 'À propos';

  @override
  String get language => 'Langue';

  @override
  String get animationSpeed => 'Animations';

  @override
  String get animationSpeedDesc =>
      'Vitesse des transitions et des effets d\'entrée dans l\'app';

  @override
  String get animationSpeedOff => 'Désactivé';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Extensions',
      one: 'Extension',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'Source inconnue';

  @override
  String get install => 'Installer';

  @override
  String get update => 'Mettre à jour';

  @override
  String get uninstall => 'Désinstaller';

  @override
  String get updateInstallCancelled =>
      'Installation annulée. Si Android dit que l\'appli est en conflit avec celle déjà installée, la signature est différente : désinstalle d\'abord la version actuelle, puis installe la mise à jour';

  @override
  String updateInstallFailed(String error) {
    return 'La mise à jour a échoué : $error';
  }

  @override
  String get appLock => 'Verrouillage de l\'appli';

  @override
  String get appLockDesc =>
      'Demande un code à l\'ouverture de l\'appli ou quand tu y reviens après un moment';

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
  String get appLockUnlock => 'Entre ton code';

  @override
  String get appLockWrong => 'Mauvais code';

  @override
  String appLockWait(String seconds) {
    return 'Trop d\'essais, attends $seconds s';
  }

  @override
  String get appLockNew => 'Choisis un code';

  @override
  String get appLockNewHint => 'De 4 à 8 chiffres';

  @override
  String get appLockConfirm => 'Saisis-le encore une fois';

  @override
  String get appLockMismatch => 'Les codes ne correspondent pas';

  @override
  String get appLockOn => 'Code défini';

  @override
  String get appLockRemoveTitle =>
      'Entre ton code pour désactiver le verrouillage';

  @override
  String get installFailed => 'Échec de l\'installation';

  @override
  String get updateFailed => 'Échec de la mise à jour';

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
  String get noSourceSettings => 'Cette source n\'a aucun réglage';

  @override
  String get addPluginRepository => 'Ajouter un dépôt de plugins';

  @override
  String get pluginIndexUrlHint => 'URL de l\'index des plugins';

  @override
  String get addRepository => 'Ajouter le dépôt';

  @override
  String get pluginRepoUpdated => 'Dépôt de plugins mis à jour';

  @override
  String get pluginRepoUpdateFailed =>
      'Impossible d\'actualiser le dépôt de plugins';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Annuler';

  @override
  String get yes => 'Oui';

  @override
  String get no => 'Non';

  @override
  String get save => 'Enregistrer';

  @override
  String get reset => 'Réinitialiser';

  @override
  String get clear => 'Effacer';

  @override
  String get test => 'Tester';

  @override
  String get testing => 'Test en cours…';

  @override
  String get resolving => 'Résolution…';

  @override
  String get none => 'Aucun';

  @override
  String get selectMediaService => 'Choisir un service';

  @override
  String get pickColor => 'Choisis une couleur';

  @override
  String get colorPickerCustom => 'Personnalisé';

  @override
  String get colorPickerTransparent => 'Transparent';

  @override
  String get ltr => 'De gauche à droite';

  @override
  String get searchSettings => 'Rechercher dans les réglages';

  @override
  String nothingMatches(String query) {
    return 'Aucun résultat pour « $query »';
  }

  @override
  String searchCategory(String category) {
    return 'Rechercher dans $category';
  }

  @override
  String get settingsAppearance => 'Apparence';

  @override
  String get settingsAppearanceDesc => 'Thème, couleurs, mode verre';

  @override
  String get settingsGeneral => 'Général';

  @override
  String get settingsGeneralDesc => 'Langue et comportement';

  @override
  String get settingsNetwork => 'Réseau';

  @override
  String get settingsNetworkDesc => 'User agent, certificats, DNS et proxy';

  @override
  String get settingsAccountDesc => 'Service de suivi et connexion';

  @override
  String get settingsUpdates => 'Mises à jour';

  @override
  String get amoledBlack => 'Noir AMOLED';

  @override
  String get amoledBlackDesc => 'Surfaces en noir pur en mode sombre';

  @override
  String get glassMode => 'Mode verre';

  @override
  String get glassModeDesc =>
      'Surfaces givrées par-dessus les visuels de ta bibliothèque';

  @override
  String get shelfFrame => 'Cadre autour des sections';

  @override
  String get shelfFrameDesc =>
      'Affiche une carte derrière chaque rangée, ou laisse les lignes directement sur la page';

  @override
  String get settingsExtensionsDesc =>
      'Gestionnaires de sources, dépôts et options des extensions';

  @override
  String get settingsAddons => 'Addons';

  @override
  String get customPath => 'Chemin de stockage perso';

  @override
  String get customPathDesc =>
      'Où sont gardées les données de l\'app. Appui long pour réinitialiser';

  @override
  String get selectDirectory => 'Choisir un dossier';

  @override
  String get differentCacheManager => 'Cache d\'images alternatif';

  @override
  String get differentCacheManagerDesc =>
      'Utiliser un autre gestionnaire de cache pour les images';

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
  String get backupAndRestore => 'Sauvegarde et restauration';

  @override
  String get backupAndRestoreDesc => 'Enregistre ou recharge tes préférences';

  @override
  String get backup => 'Sauvegarde';

  @override
  String get restore => 'Restaurer';

  @override
  String get loadExtensionsIcon => 'Charger les icônes des extensions';

  @override
  String get autoUpdateRuntimes => 'Update extension runtimes automatically';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead.';

  @override
  String get loadExtensionsIconDesc =>
      'Afficher les icônes des sources dans la liste des extensions';

  @override
  String get sectionStorage => 'Stockage';

  @override
  String get sectionManagers => 'Gestionnaires';

  @override
  String get sectionOptions => 'Options';

  @override
  String get backupTabBackup => 'Sauvegarder';

  @override
  String get backupTabRestore => 'Restaurer';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$keys réglages dans $categories catégories';
  }

  @override
  String backupLastBackup(Object time) {
    return 'Dernière sauvegarde $time';
  }

  @override
  String get backupNever => 'Aucune sauvegarde pour l\'instant';

  @override
  String get backupSelectAll => 'Tout sélectionner';

  @override
  String get backupClearAll => 'Effacer';

  @override
  String backupKeys(Object count) {
    return '$count réglages';
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
  String get backupPassword => 'Mot de passe (facultatif)';

  @override
  String get backupPasswordHint => 'Laisse vide pour utiliser celui par défaut';

  @override
  String get backupSensitive =>
      'Inclut les tokens de connexion. Garde ce fichier privé';

  @override
  String get backupCreate => 'Créer la sauvegarde';

  @override
  String backupSaved(Object name) {
    return 'Sauvegarde enregistrée dans $name';
  }

  @override
  String backupFailed(Object error) {
    return 'Échec de la sauvegarde : $error';
  }

  @override
  String get backupPickFile => 'Choisir un fichier de sauvegarde';

  @override
  String get backupPickFileDesc => 'Choisis un fichier .json créé par Dartotsu';

  @override
  String get backupChooseAnother => 'Choisir un autre fichier';

  @override
  String get backupCreatedAt => 'Créée le';

  @override
  String get backupAppVersion => 'Version de l\'app';

  @override
  String get backupDevice => 'Appareil';

  @override
  String get backupAccounts => 'Comptes';

  @override
  String get backupSize => 'Taille';

  @override
  String get backupEncrypted => 'Protégé par mot de passe';

  @override
  String get backupUnlock => 'Déverrouiller';

  @override
  String get backupWrongPassword =>
      'Impossible de lire ce fichier. Vérifie le mot de passe';

  @override
  String get backupRestoreSelected => 'Restaurer la sélection';

  @override
  String backupRestoreConfirm(Object count) {
    return 'Restaurer $count réglages ? Les valeurs existantes de ces catégories seront écrasées.';
  }

  @override
  String get backupRestored => 'Restauré. Redémarre l\'app pour tout appliquer';

  @override
  String backupRestoreFailed(Object error) {
    return 'Échec de la restauration : $error';
  }

  @override
  String get backupSelectOne => 'Sélectionne au moins une catégorie';

  @override
  String get backupCatTheme => 'Apparence';

  @override
  String get backupCatThemeDesc =>
      'Thème, couleurs, verre, polices et style des cartes';

  @override
  String get backupCatCommon => 'Général';

  @override
  String get backupCatCommonDesc =>
      'Langue, stockage, réseau et options des extensions';

  @override
  String get backupCatPlayer => 'Lecteur vidéo';

  @override
  String get backupCatPlayerDesc => 'Préférences du lecteur vidéo';

  @override
  String get backupCatReader => 'Lecture';

  @override
  String get backupCatReaderDesc => 'Préférences de lecture';

  @override
  String get backupCatProtected => 'Comptes';

  @override
  String get backupCatProtectedDesc =>
      'Tokens de connexion et données de session';

  @override
  String get backupCatOther => 'Services et flux';

  @override
  String get backupCatOtherDesc =>
      'Disposition des flux, listes et options des services';

  @override
  String get logFile => 'Fichier de logs';

  @override
  String get logFileDesc =>
      'Partage les logs de l\'app, ou copie leur chemin sur Linux';

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
  String get logFileCopied => 'Chemin des logs copié';

  @override
  String get donateSheetTitle => 'Tu aimes Dartotsu ?';

  @override
  String get donateSheetMessage =>
      'Dartotsu est créé et maintenu par une seule personne. Si l\'app t\'est utile, pense à soutenir son développement.';

  @override
  String get donateLater => 'Plus tard';

  @override
  String get glassBackground => 'Arrière-plan verre';

  @override
  String get glassBackgroundDesc =>
      'Ta bannière de profil, sauf si tu mets un lien d\'image';

  @override
  String get glassBackgroundHint =>
      'Lien d\'image (laisse vide pour ta bannière)';

  @override
  String get followCover => 'Suivre la jaquette';

  @override
  String get followCoverDesc =>
      'Les couleurs suivent l\'arrière-plan, et la jaquette sur les pages de détails';

  @override
  String get followCoverMediaOnly => 'Only for media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Only follow the cover on media pages, everywhere else keeps the normal colors';

  @override
  String get cardStyle => 'Style des cartes';

  @override
  String get cardStyleDesc =>
      'Emplacement du titre, taille, progression et badges';

  @override
  String get customFont => 'Police';

  @override
  String get customFontDesc =>
      'Par défaut, un fichier de ton appareil, ou Google Fonts';

  @override
  String get customFontError => 'Impossible de charger ce fichier de police';

  @override
  String get googleFontError => 'Impossible de télécharger cette police';

  @override
  String get yourFonts => 'Tes polices';

  @override
  String get addFontFile => 'Ajouter un fichier de police…';

  @override
  String get browseGoogleFonts => 'Parcourir Google Fonts…';

  @override
  String get searchGoogleFonts => 'Rechercher dans Google Fonts';

  @override
  String get defaultFont => 'Par défaut';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'Couleurs dynamiques du système';

  @override
  String get jsonTheme => 'Fichier de thème perso';

  @override
  String get jsonThemeDesc =>
      'Couleurs en direct depuis ~/.config/dartotsu/theme.json (un script perso, ou tes propres modifs)';

  @override
  String get themeMode => 'Mode du thème';

  @override
  String get mode => 'Mode';

  @override
  String get trackingService => 'Service de suivi';

  @override
  String get signOut => 'Se déconnecter';

  @override
  String get signIn => 'Se connecter';

  @override
  String get notSignedIn => 'Non connecté';

  @override
  String signOutOf(String service) {
    return 'Se déconnecter de $service ?';
  }

  @override
  String get checkForUpdates => 'Rechercher des mises à jour';

  @override
  String get checkForUpdatesDesc =>
      'Te prévenir d\'une nouvelle release GitHub';

  @override
  String get updateChannel => 'Canal de mise à jour';

  @override
  String get channel => 'Canal';

  @override
  String get stable => 'Stable';

  @override
  String get preRelease => 'Pré-version';

  @override
  String get alpha => 'Alpha';

  @override
  String get checkNow => 'Vérifier maintenant';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'Par défaut';

  @override
  String currentlyUsing(String value) {
    return 'Actuellement : $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'Par défaut (Cloudflare)';

  @override
  String get proxy => 'Proxy';

  @override
  String get proxyProtocol => 'Type';

  @override
  String get proxyHost => 'Hôte';

  @override
  String get proxyPort => 'Port';

  @override
  String get proxyUsername => 'Nom d\'utilisateur';

  @override
  String get proxyPassword => 'Mot de passe';

  @override
  String get optional => 'Facultatif';

  @override
  String get clearCookies => 'Effacer les cookies';

  @override
  String get clearCookiesDesc => 'Supprime tous les cookies enregistrés';

  @override
  String notImplementedArea(String area) {
    return '$area — bientôt disponible';
  }

  @override
  String notImplementedService(String service) {
    return '$service ne gère pas encore ça.';
  }

  @override
  String get couldNotLoadResults => 'Impossible de charger les résultats';

  @override
  String get updateCheckFailed => 'Impossible de vérifier les mises à jour';

  @override
  String get highRefreshRate => 'Fréquence d\'écran élevée';

  @override
  String get highRefreshRateDesc =>
      'Utilise la fréquence de rafraîchissement maximale de ton écran';

  @override
  String get imageSave => 'Enregistrer l\'image';

  @override
  String imageSavedTo(String path) {
    return 'Enregistré dans $path';
  }

  @override
  String get imageActionFailed => 'Impossible de télécharger l\'image';

  @override
  String get imageTitleCover => 'Jaquette';

  @override
  String get imageTitlePage => 'Page';

  @override
  String get imageTitleBanner => 'Bannière';

  @override
  String get imageTitleAvatar => 'Photo de profil';

  @override
  String get verifyTls => 'Vérifier les certificats';

  @override
  String get verifyTlsDesc =>
      'Rejette les serveurs avec un certificat HTTPS invalide. Désactive seulement pour une source qui utilise un certificat auto-signé';

  @override
  String get clearCookiesConfirm =>
      'Supprimer tous les cookies enregistrés ? Tu risques d\'être déconnecté de certaines sources.';

  @override
  String get version => 'Version';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'Code source, issues et releases';

  @override
  String get discordDesc => 'Communauté et support';

  @override
  String get supportDeveloper => 'Support the developer';

  @override
  String get buyMeCoffee => 'Buy me a coffee';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID copied';

  @override
  String get donateDesc => 'Soutenir le développement';

  @override
  String get contributors => 'Contributeurs';

  @override
  String get contributorsDesc => 'Les personnes qui ont créé Dartotsu';

  @override
  String get contributorsLoadFailed =>
      'Impossible de charger les contributeurs';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Projets basés sur Dartotsu';

  @override
  String get forksEmpty => 'Aucun fork trouvé';

  @override
  String get sectionColors => 'Couleurs';

  @override
  String get sectionDisplay => 'Affichage';

  @override
  String get sectionStyle => 'Style';

  @override
  String get sectionCommunity => 'Communauté';

  @override
  String get sectionAppInfo => 'Infos de l\'app';

  @override
  String get sectionRequests => 'Requêtes';

  @override
  String get sectionDnsProxy => 'DNS & proxy';

  @override
  String get onboardingBack => 'Retour';

  @override
  String get onboardingNext => 'Suivant';

  @override
  String get onboardingSkip => 'Passer';

  @override
  String get onboardingPaletteTitle => 'Personnalise ton app';

  @override
  String get onboardingPaletteBody =>
      'Choisis une palette. Tous les accents, des cartes au lecteur, la suivent.';

  @override
  String get themeModeAuto => 'Auto';

  @override
  String get themeModeLight => 'Clair';

  @override
  String get themeModeDark => 'Sombre';

  @override
  String get onboardingSyncTitle => 'Synchronise ta bibliothèque';

  @override
  String get onboardingSyncBody =>
      'Connecte-toi avec AniList pour retrouver tes listes, ta progression et tes notes. Ou passe et explore en invité.';

  @override
  String get onboardingOpenLinks =>
      'Ouvrir les liens AniList et de dépôts dans Dartotsu';

  @override
  String get onboardingPermsTitle => 'Autorisations';

  @override
  String get onboardingPermsBody =>
      'Autorise-les maintenant pour que les téléchargements, mises à jour et alertes fonctionnent sans interruption. Tu pourras les changer plus tard dans les réglages système.';

  @override
  String get permNotifications => 'Notifications';

  @override
  String get permNotificationsDesc =>
      'Progression des téléchargements, nouveaux épisodes et réponses';

  @override
  String get permStorage => 'Accès à tous les fichiers';

  @override
  String get permStorageDesc =>
      'Enregistre les téléchargements dans le dossier public Dartotsu';

  @override
  String get permInstall => 'Installer les mises à jour';

  @override
  String get permInstallDesc =>
      'Laisse Dartotsu installer ses propres mises à jour';

  @override
  String get permBattery => 'Batterie sans restriction';

  @override
  String get permBatteryDesc =>
      'Garde les longs téléchargements actifs en arrière-plan';

  @override
  String get permGrant => 'Autoriser';

  @override
  String get linkOpenInApp => 'Ouvrir les liens dans Dartotsu';

  @override
  String get linkOpenInAppDesc =>
      'Laisse les liens AniList et de dépôts ouvrir l\'app';

  @override
  String get reviewsTitle => 'Critiques';

  @override
  String get reviewsEmpty => 'Pas encore de critiques';

  @override
  String get reviewsFailed => 'Impossible de charger les critiques';

  @override
  String get reviewHelpfulQuestion => 'Cette critique t\'a été utile ?';

  @override
  String get reviewVoteFailed => 'Impossible d\'enregistrer ton vote';

  @override
  String reviewHelpful(int n, int total) {
    return '$n personnes sur $total ont trouvé ça utile';
  }

  @override
  String get calendarTitle => 'Programme de diffusion';

  @override
  String get calendarToday => 'Aujourd\'hui';

  @override
  String get calendarEmpty => 'Rien n\'est diffusé ce jour-là';

  @override
  String get calendarFailed => 'Impossible de charger le programme';

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
    return 'Épisode $n';
  }

  @override
  String get shareAnalytics => 'Partager des données d\'usage anonymes';

  @override
  String get shareAnalyticsDesc =>
      'Nombre d\'utilisateurs et rapports de crash anonymes. Aucun compte ni donnée perso';

  @override
  String get linkOpenAnilist => 'Ouvrir les liens AniList dans Dartotsu';

  @override
  String get linkOpenAnilistDesc =>
      'Active la gestion des liens pour que les liens anilist.co ouvrent l\'app';

  @override
  String get linkSettingsFailed => 'Impossible d\'ouvrir les réglages système';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'Affiche ce que tu fais sur ton profil Discord. Nécessite ton token Discord.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'Affiche ce que tu fais sur ton profil Discord. Nécessite l\'app de bureau Discord lancée.';

  @override
  String get discordBrowsing => 'Afficher l\'activité de navigation';

  @override
  String get discordBrowsingDesc =>
      'Affiche aussi l\'onglet, la page ou le profil que tu regardes, pas seulement ce que tu regardes ou lis.';

  @override
  String get discordLookHeader => 'Apparence de la présence';

  @override
  String get discordActivityType => 'Type d\'activité';

  @override
  String get discordActivityTypeDesc =>
      'Comment Discord l\'écrit : « Regarde … » ou « Joue à … ». Auto utilise Regarde pour les animes et Joue à pour le reste.';

  @override
  String get discordWatching => 'Regarde';

  @override
  String get discordPlaying => 'Joue à';

  @override
  String get discordCovers => 'Afficher les jaquettes';

  @override
  String get discordCoversDesc => 'Jaquette et icône Dartotsu sur la carte.';

  @override
  String get discordTimer => 'Afficher le chrono';

  @override
  String get discordTimerDesc => 'Temps écoulé ou restant sous le titre.';

  @override
  String get discordButtons => 'Afficher les boutons';

  @override
  String get discordButtonsDesc =>
      'Boutons « Voir l\'anime / manga » et « Ouvrir Dartotsu ».';

  @override
  String get discordHideTitles => 'Masquer les titres';

  @override
  String get discordHideTitlesDesc =>
      'Remplace les noms d\'animes et de mangas (et leur jaquette et lien) par « Quelque chose de privé ».';

  @override
  String get discordConnectionHeader => 'Connexion';

  @override
  String get listSearchHint => 'Rechercher dans cette liste';

  @override
  String get listSort => 'Trier';

  @override
  String get listFilter => 'Filtrer';

  @override
  String get listRandom => 'Titre au hasard';

  @override
  String get listReverse => 'Inverser l\'ordre';

  @override
  String get listSortDefault => 'Ordre de la liste';

  @override
  String get listSortScore => 'Ta note';

  @override
  String get listSortTitle => 'Titre';

  @override
  String get listSortUpdated => 'Dernière mise à jour';

  @override
  String get listSortProgress => 'Progression';

  @override
  String get listSortReleased => 'Date de sortie';

  @override
  String get listSortAverage => 'Note moyenne';

  @override
  String get listFilterFormat => 'Format';

  @override
  String get listFilterStatus => 'Statut';

  @override
  String get listFilterGenres => 'Genres';

  @override
  String get listFilterClear => 'Effacer les filtres';

  @override
  String get listNoMatches => 'Rien dans cette liste ne correspond';

  @override
  String get discordLogin => 'Se connecter à Discord';

  @override
  String get discordToken => 'Token Discord';

  @override
  String get discordTokenSaved =>
      'Enregistré. Appuie pour remplacer, appui long pour supprimer.';

  @override
  String get discordTokenNotSet => 'Non défini. Appuie pour ajouter.';

  @override
  String get discordTokenSavedSnack => 'Token Discord enregistré';

  @override
  String get discordTokenRemovedSnack => 'Token Discord supprimé';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn =>
      'Activé · appuie pour changer l\'apparence';

  @override
  String get discordRichPresenceRowOff =>
      'Affiche ce que tu fais sur ton profil Discord';

  @override
  String get loginCancelled => 'Connexion annulée';

  @override
  String get invalidToken => 'Token invalide';

  @override
  String loginFailed(String error) {
    return 'Échec de la connexion : $error';
  }

  @override
  String get malLoginFailed => 'Échec de la connexion à MyAnimeList';

  @override
  String get kitsuLoginFailed =>
      'Échec de la connexion à Kitsu. Vérifie ton e-mail et ton mot de passe.';

  @override
  String get kitsuLoginTitle => 'Se connecter à Kitsu';

  @override
  String get emailOrUsername => 'E-mail ou nom d\'utilisateur';

  @override
  String get password => 'Mot de passe';

  @override
  String get kitsuProfile => 'Profil Kitsu';

  @override
  String get mangaBakaLoginFailed => 'Échec de la connexion à MangaBaka';

  @override
  String get mangaBakaProfile => 'Profil MangaBaka';

  @override
  String get refreshFromMangaBaka => 'Actualiser depuis MangaBaka';

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
  String get artistsLabel => 'Artistes';

  @override
  String get authorsLabel => 'Auteurs';

  @override
  String get publishersLabel => 'Éditeurs';

  @override
  String get licensedLabel => 'Licencié';

  @override
  String get contentRatingLabel => 'Classification';

  @override
  String get yesLabel => 'Oui';

  @override
  String get noLabel => 'Non';

  @override
  String get ratingSteps => 'Paliers de notation';

  @override
  String get hideNsfw => 'Masquer le NSFW';

  @override
  String get hideNsfwDesc =>
      'Garde les titres pour adultes hors des flux et de la recherche, et range tes propres entrées adultes dans Médias masqués.';

  @override
  String get kitsuAccountOptions => 'Options du compte Kitsu';

  @override
  String get mangaBakaAccountOptions => 'Options du compte MangaBaka';

  @override
  String get couldNotUpdateKitsuSettings =>
      'Impossible de mettre à jour tes réglages Kitsu';

  @override
  String get titleCanonical => 'Canonique';

  @override
  String get titleRomanized => 'Romanisé';

  @override
  String get titleLocalized => 'Localisé';

  @override
  String get ratingSystem => 'Système de notation';

  @override
  String get ratingSimple => 'Simple (3 visages)';

  @override
  String get ratingRegular => 'Classique (5 étoiles)';

  @override
  String get ratingAdvanced => 'Avancé (10 points)';

  @override
  String get contentFilter => 'Filtre de contenu';

  @override
  String get contentSfw => 'Tout public uniquement';

  @override
  String get contentSometimes => 'Contenu mature dans les recherches';

  @override
  String get contentEverywhere => 'Contenu mature partout';

  @override
  String get shareToGlobal => 'Partager sur le flux global';

  @override
  String get shareToGlobalDesc =>
      'Laisse ton activité apparaître dans le flux global de Kitsu.';

  @override
  String get memberSince => 'Membre depuis';

  @override
  String get location => 'Localisation';

  @override
  String get accountType => 'Type de compte';

  @override
  String get accountSupporter => 'Supporter';

  @override
  String get accountFree => 'Gratuit';

  @override
  String get accountDetails => 'Détails du compte';

  @override
  String get refreshFromKitsu => 'Actualiser depuis Kitsu';

  @override
  String get simklReadOnly => 'Simkl a un accès en lecture seule';

  @override
  String get incognitoEditsBlocked =>
      'Incognito : les modifs de liste sont bloquées';

  @override
  String serviceError(String service, String error) {
    return '$service : $error';
  }

  @override
  String get incognitoProgressNotSaved =>
      'Incognito : progression non enregistrée';

  @override
  String progressSet(int progress) {
    return 'Progression réglée sur $progress';
  }

  @override
  String removedFromList(String title) {
    return '$title retiré de ta liste';
  }

  @override
  String get following => 'Abonnements';

  @override
  String get homeSections => 'Sections de l\'accueil';

  @override
  String get homeSectionsHint =>
      'Glisse pour réorganiser. Les sections masquées ne sont jamais chargées.';

  @override
  String get customListDeleteFailed => 'Impossible de supprimer la liste perso';

  @override
  String get customListsSaveFailed =>
      'Impossible d\'enregistrer les listes perso';

  @override
  String get customListsSaved => 'Listes perso enregistrées';

  @override
  String get listName => 'Nom de la liste';

  @override
  String get addList => 'Ajouter une liste';

  @override
  String voiceActorsIn(String name) {
    return 'Doubleurs · $name';
  }

  @override
  String get animeAppearances => 'Apparitions dans des animes';

  @override
  String get mangaAppearances => 'Apparitions dans des mangas';

  @override
  String get voicedCharacters => 'Personnages doublés';

  @override
  String get animeCredits => 'Crédits anime';

  @override
  String get mangaCredits => 'Crédits manga';

  @override
  String get mainProductions => 'Productions principales';

  @override
  String get otherWorks => 'Autres travaux';

  @override
  String get prequelSequel => 'Préquelle & suite';

  @override
  String get previousSeason => 'Saison précédente';

  @override
  String get thisSeason => 'Cette saison';

  @override
  String get nextSeason => 'Saison suivante';

  @override
  String get voiceRoles => 'Rôles de doublage';

  @override
  String get staffPositions => 'Postes dans le staff';

  @override
  String get mangaWorks => 'Travaux manga';

  @override
  String get malProfile => 'Profil MyAnimeList';

  @override
  String get refreshFromMal => 'Actualiser depuis MyAnimeList';

  @override
  String get repullProfileCounts => 'Recharge ton profil et tes compteurs';

  @override
  String get refreshed => 'Actualisé';

  @override
  String get simklProfile => 'Profil Simkl';

  @override
  String get refreshFromSimkl => 'Actualiser depuis Simkl';

  @override
  String get repullProfileLibrary => 'Recharge ton profil et ta bibliothèque';

  @override
  String get simklSignInToSearch => 'Connecte-toi à Simkl pour rechercher';

  @override
  String get dropRate => 'Taux d\'abandon';

  @override
  String get simklAttribution =>
      'Données et visuels fournis par Simkl. Voir sur Simkl';

  @override
  String get onHold => 'En pause';

  @override
  String get scoredBy => 'Noté par';

  @override
  String get planToWatch => 'À regarder';

  @override
  String get planToRead => 'À lire';

  @override
  String get timesRewatched => 'Fois revu';

  @override
  String get timesReread => 'Fois relu';

  @override
  String get comments => 'Commentaires';

  @override
  String get moviesAndSeries => 'Films & séries';

  @override
  String get trackingOnly => 'Suivi uniquement';

  @override
  String get signedIn => 'Connecté';

  @override
  String get searchLanguage => 'Langue de recherche';

  @override
  String get savedToList => 'Enregistré dans ta liste';

  @override
  String get removedFromYourList => 'Retiré de ta liste';

  @override
  String get retry => 'Réessayer';

  @override
  String get synopsis => 'Synopsis';

  @override
  String get details => 'Détails';

  @override
  String get addToList => 'Ajouter à la liste';

  @override
  String get trailer => 'Bande-annonce';

  @override
  String get titleCopied => 'Titre copié';

  @override
  String get linkCopied => 'Lien copié';

  @override
  String get watchTrailer => 'Voir la bande-annonce';

  @override
  String get copyTitle => 'Copier le titre';

  @override
  String get copyLink => 'Copier le lien';

  @override
  String get openInBrowser => 'Ouvrir dans le navigateur';

  @override
  String viewOnSource(String source) {
    return 'Voir sur $source';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'L\'épisode $ep sort dans $time';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'Prochain épisode dans $time';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'Chapitre $chapter attendu dans environ $time';
  }

  @override
  String get logPathCopied =>
      'Chemin du fichier de logs copié dans le presse-papiers';

  @override
  String get animeSource => 'Source d\'anime';

  @override
  String get mangaSource => 'Source de manga';

  @override
  String get popular => 'Populaires';

  @override
  String get latest => 'Récents';

  @override
  String get saved => 'Enregistrés';

  @override
  String get nothingMatched => 'Aucun résultat';

  @override
  String get nothingSavedFromSource =>
      'Rien d\'enregistré depuis cette source pour l\'instant';

  @override
  String get sourceReturnedNothing => 'Cette source n\'a rien renvoyé';

  @override
  String get checkConnectionOrSource =>
      'Vérifie ta connexion ou essaie une autre source.';

  @override
  String get tryDifferentSearch => 'Essaie un autre terme de recherche.';

  @override
  String get savedTitlesAppearHere =>
      'Les titres que tu ajoutes à ta liste apparaissent ici.';

  @override
  String get tryOtherFeed => 'Essaie plutôt l\'autre flux ou la recherche.';

  @override
  String searchSource(String source) {
    return 'Rechercher dans $source';
  }

  @override
  String get animeExtensions => 'Extensions d\'anime';

  @override
  String get mangaExtensions => 'Extensions de manga';

  @override
  String get nothingHereYet => 'Rien ici pour l\'instant';

  @override
  String get savedOnDeviceUntilLogin =>
      'Tout ce qui est ci-dessous reste enregistré sur cet appareil jusqu\'à ce que tu le fasses.';

  @override
  String get yourProfile => 'Ton profil';

  @override
  String get activity => 'Activité';

  @override
  String get extensions => 'Extensions';

  @override
  String get logOut => 'Se déconnecter';

  @override
  String get logIn => 'Se connecter';

  @override
  String get logOutConfirm => 'Tu es sûr de vouloir te déconnecter ?';

  @override
  String get incognitoMode => 'Mode incognito';

  @override
  String get alsoBlockListEdits => 'Bloquer aussi les modifs de liste';

  @override
  String get offlineMode => 'Mode hors-ligne';

  @override
  String get switchService => 'Changer de service';

  @override
  String logOutOf(String name) {
    return 'Se déconnecter de $name';
  }

  @override
  String get loggedIn => 'Connecté';

  @override
  String get notifications => 'Notifications';

  @override
  String get nothingNew => 'Rien de neuf';

  @override
  String get thisWeek => 'Cette semaine';

  @override
  String get listOnly => 'Liste uniquement';

  @override
  String get filter => 'Filtrer';

  @override
  String get searchResults => 'Résultats de recherche';

  @override
  String get recentSearches => 'Recherches récentes';

  @override
  String get searchOrSetFilter => 'Recherche ou choisis un filtre';

  @override
  String get filters => 'Filtres';

  @override
  String get showLess => 'Voir moins';

  @override
  String get showAll => 'Tout voir';

  @override
  String get apply => 'Appliquer';

  @override
  String get preview => 'Aperçu';

  @override
  String get preset => 'Préréglage';

  @override
  String get cardNormal => 'Normal';

  @override
  String get cardOnCard => 'Sur la carte';

  @override
  String get cardInCard => 'Dans la carte';

  @override
  String get size => 'Taille';

  @override
  String get cardWidth => 'Largeur de la carte';

  @override
  String get compact => 'Compact';

  @override
  String get coverAndTitleOnly => 'Jaquette et titre uniquement';

  @override
  String get titleLines => 'Lignes de titre';

  @override
  String get shape => 'Forme';

  @override
  String get posterShape => 'Forme du poster';

  @override
  String get cornerRadius => 'Arrondi des coins';

  @override
  String get off => 'Désactivé';

  @override
  String get topLeft => 'En haut à gauche';

  @override
  String get topRight => 'En haut à droite';

  @override
  String get bottomLeft => 'En bas à gauche';

  @override
  String get bottomRight => 'En bas à droite';

  @override
  String get overlays => 'Surimpressions';

  @override
  String get progressCount => 'Progression / compteur';

  @override
  String get pill => 'Pastille';

  @override
  String get bar => 'Barre';

  @override
  String get outside => 'À l\'extérieur';

  @override
  String get scoreBadge => 'Badge de note';

  @override
  String get airingDot => 'Point de diffusion';

  @override
  String get updateAvailable => 'Mise à jour disponible';

  @override
  String get notInstalled => 'Non installé';

  @override
  String get done => 'Terminé';

  @override
  String get searchOrEnterUrl => 'Recherche ou saisis une URL';

  @override
  String get refresh => 'Actualiser';

  @override
  String get share => 'Partager';

  @override
  String get characters => 'Personnages';

  @override
  String get staff => 'Staff';

  @override
  String get readMore => 'Lire la suite';

  @override
  String get couldNotLoadList => 'Impossible de charger la liste';

  @override
  String get logInToFavourite => 'Connecte-toi pour ajouter des favoris';

  @override
  String get alsoKnownAs => 'Aussi connu sous le nom de';

  @override
  String get hideSpoilerNames => 'Masquer les noms spoilers';

  @override
  String get showSpoilerNames => 'Afficher les noms spoilers';

  @override
  String get favourited => 'Dans les favoris';

  @override
  String get favourite => 'Favori';

  @override
  String get couldNotOpenTitle => 'Impossible d\'ouvrir ce titre';

  @override
  String get nobodyHereYet => 'Personne ici pour l\'instant';

  @override
  String get noMatches => 'Aucun résultat';

  @override
  String get gridView => 'Vue en grille';

  @override
  String get fullWidth => 'Pleine largeur';

  @override
  String get userNotFound => 'Utilisateur introuvable';

  @override
  String get couldNotUpdateFollow => 'Impossible de modifier l\'abonnement';

  @override
  String followedUser(String name) {
    return 'Tu suis maintenant $name';
  }

  @override
  String unfollowedUser(String name) {
    return 'Tu ne suis plus $name';
  }

  @override
  String get messages => 'Messages';

  @override
  String get logInToSeeMessages => 'Connecte-toi pour voir tes messages';

  @override
  String get editActivity => 'Modifier l\'activité';

  @override
  String get newActivity => 'Nouvelle activité';

  @override
  String get editMessage => 'Modifier le message';

  @override
  String get writeMessage => 'Écrire un message';

  @override
  String get editReply => 'Modifier la réponse';

  @override
  String get posted => 'Publié';

  @override
  String get couldNotPost => 'Impossible de publier';

  @override
  String get nothingToPreview => 'Rien à prévisualiser';

  @override
  String get writeSomethingHint =>
      'Écris quelque chose… le markdown AniList marche ici';

  @override
  String get privateMessage => 'Message privé';

  @override
  String get post => 'Publier';

  @override
  String get nothingHere => 'Rien ici';

  @override
  String get noAnimeProgress => 'Aucune progression d\'anime';

  @override
  String get noMangaProgress => 'Aucune progression de manga';

  @override
  String get noMessages => 'Aucun message';

  @override
  String get writeMessageHint => 'Écris un message…';

  @override
  String get shareSomethingHint => 'Partage quelque chose…';

  @override
  String get all => 'Tout';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Manga';

  @override
  String get count => 'Nombre';

  @override
  String get hoursWatched => 'Heures regardées';

  @override
  String get chaptersRead => 'Chapitres lus';

  @override
  String get meanScore => 'Note moyenne';

  @override
  String get noStatsYet => 'Pas encore de stats';

  @override
  String get totalEntries => 'Total des entrées';

  @override
  String get episodesWatched => 'Épisodes regardés';

  @override
  String get daysWatched => 'Jours regardés';

  @override
  String get volumesRead => 'Volumes lus';

  @override
  String get standardDeviation => 'Écart type';

  @override
  String get showMore => 'Voir plus';

  @override
  String get followsYou => 'Te suit';

  @override
  String get nobodyYet => 'Personne pour l\'instant';

  @override
  String get logInToLike => 'Connecte-toi pour liker';

  @override
  String get failedToLikeActivity => 'Impossible de liker l\'activité';

  @override
  String get deleteActivityConfirm => 'Supprimer l\'activité ?';

  @override
  String get deletedActivity => 'Activité supprimée';

  @override
  String get failedToDeleteActivity => 'Impossible de supprimer l\'activité';

  @override
  String get subscribed => 'Abonné';

  @override
  String get unsubscribed => 'Désabonné';

  @override
  String get failedToUpdateSubscription =>
      'Impossible de modifier l\'abonnement';

  @override
  String get edit => 'Modifier';

  @override
  String get delete => 'Supprimer';

  @override
  String get likedBy => 'Liké par';

  @override
  String get follow => 'Suivre';

  @override
  String get nameCopied => 'Nom copié';

  @override
  String get followsEachOther => 'Vous vous suivez mutuellement';

  @override
  String get unfollow => 'Ne plus suivre';

  @override
  String get userIdCopied => 'ID d\'utilisateur copié';

  @override
  String get shareProfile => 'Partager le profil';

  @override
  String get copyUserId => 'Copier l\'ID d\'utilisateur';

  @override
  String get failedToDelete => 'Impossible de supprimer';

  @override
  String get failedToLike => 'Impossible de liker';

  @override
  String get replies => 'Réponses';

  @override
  String get reply => 'Répondre';

  @override
  String get noRepliesYet => 'Pas encore de réponses';

  @override
  String get favouriteAnime => 'Animes favoris';

  @override
  String get favouriteManga => 'Mangas favoris';

  @override
  String get favouriteCharacters => 'Personnages favoris';

  @override
  String get favouriteStaff => 'Staff favori';

  @override
  String get favouriteStudios => 'Studios favoris';

  @override
  String get noFavouritesYet => 'Pas encore de favoris';

  @override
  String get yourStory => 'Ton histoire';

  @override
  String get copiedToClipboard => 'Copié dans le presse-papiers';

  @override
  String get justNow => 'À l\'instant';

  @override
  String get openImage => 'Ouvrir l\'image';

  @override
  String get hideSpoiler => 'Masquer le spoiler';

  @override
  String get showSpoiler => 'Afficher le spoiler';

  @override
  String get status => 'Statut';

  @override
  String get score => 'Note';

  @override
  String get started => 'Commencé';

  @override
  String get completed => 'Terminé';

  @override
  String get private => 'Privé';

  @override
  String get hideFromStatusLists => 'Masquer des listes de statuts';

  @override
  String get totalRepeats => 'Total de revisionnages';

  @override
  String get other => 'Autre';

  @override
  String get customLists => 'Listes perso';

  @override
  String get activeDays => 'Jours actifs';

  @override
  String get longestStreak => 'Plus longue série';

  @override
  String get currentStreak => 'Série en cours';

  @override
  String get tapOrHoverDay => 'Appuie ou survole un jour';

  @override
  String get less => 'Moins';

  @override
  String get more => 'Plus';

  @override
  String epIn(int ep, String time) {
    return 'Ép. $ep dans $time';
  }

  @override
  String get sectionLoading => 'Chargement';

  @override
  String get querySize => 'Taille des requêtes';

  @override
  String get querySizeDesc =>
      'Une grosse requête charge toutes les lignes (et un profil entier) d\'un coup. Les requêtes séparées envoient une petite requête par ligne ou par partie de profil : chacune est rapide et les parties arrivent au fur et à mesure.';

  @override
  String get oneBig => 'Une grosse';

  @override
  String get split => 'Séparées';

  @override
  String get sectionSocial => 'Social';

  @override
  String get systemNotifications => 'Notifications système';

  @override
  String get feedLayout => 'Disposition du flux';

  @override
  String sectionsShown(int shown, int total) {
    return '$shown sur $total affichées — appuie pour choisir et réorganiser';
  }

  @override
  String labelSections(String label) {
    return 'Sections $label';
  }

  @override
  String get accountOptions => 'Options du compte';

  @override
  String get anilistAccountOptions => 'Options du compte AniList';

  @override
  String get sectionPrivacy => 'Confidentialité';

  @override
  String get hidePrivateEntries => 'Masquer les entrées privées';

  @override
  String get hidePrivateEntriesDesc =>
      'Garde les entrées marquées privées sur AniList hors du flux';

  @override
  String get anilistExcludeList => 'Exclure ta liste';

  @override
  String get anilistExcludeListDesc =>
      'Cache les titres déjà dans ton AniList des pages anime et manga';

  @override
  String get anilistProfile => 'Profil AniList';

  @override
  String get refreshFromAnilist => 'Actualiser depuis AniList';

  @override
  String get couldNotUpdateAnilistSettings =>
      'Impossible de mettre à jour les réglages AniList';

  @override
  String get sectionNames => 'Noms';

  @override
  String get titleLanguage => 'Langue des titres';

  @override
  String get titleLanguageDesc =>
      'Comment les titres sont écrits partout, p. ex. Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'Noms du staff et des personnages';

  @override
  String get sectionLists => 'Listes';

  @override
  String get scoreFormat => 'Format des notes';

  @override
  String get sortListsBy => 'Trier les listes par';

  @override
  String labelCustomLists(String label) {
    return 'Listes perso $label';
  }

  @override
  String customListsCount(int count) {
    return '$count listes — appuie pour ajouter ou retirer';
  }

  @override
  String get mergeActivities => 'Fusionner les activités';

  @override
  String minutesCount(int count) {
    return '$count min';
  }

  @override
  String get timezone => 'Fuseau horaire';

  @override
  String get notSet => 'Non défini';

  @override
  String get airingNotifications => 'Notifications de diffusion';

  @override
  String get airingNotificationsDesc =>
      'Sois prévenu quand un épisode d\'une série suivie sort';

  @override
  String get displayAdultContent => 'Afficher le contenu adulte';

  @override
  String get displayAdultContentDesc =>
      'Inclure les titres 18+ dans l\'exploration, la recherche et les flux';

  @override
  String get restrictMessages => 'Limiter les messages aux abonnements';

  @override
  String get restrictMessagesDesc =>
      'Seules les personnes que tu suis peuvent t\'écrire';

  @override
  String get sectionServices => 'Services';

  @override
  String get novel => 'Light novel';

  @override
  String labelService(String label) {
    return 'Service $label';
  }

  @override
  String nameSettings(String name) {
    return 'Réglages de $name';
  }

  @override
  String extensionBridgeOptions(String name) {
    return 'Options du pont d\'extensions $name';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name n\'a pas pu démarrer : $error';
  }

  @override
  String get importLists => 'Importer des listes';

  @override
  String get importListsDesc =>
      'Depuis des sauvegardes Aniyomi, Mihon / Tachiyomi ou Kotatsu';

  @override
  String get exportLists => 'Exporter des listes';

  @override
  String get exportListsDesc => 'Vers une sauvegarde Aniyomi, Mihon ou Kotatsu';

  @override
  String get sectionBrowse => 'Explorer';

  @override
  String get readingTab => 'Onglet lecture';

  @override
  String get readingTabDesc => 'Quelles extensions le troisième onglet affiche';

  @override
  String get firstTab => 'First tab';

  @override
  String get firstTabDesc =>
      'Which extensions the first tab shows. Pick manga here and novel on the reading tab to drop anime from the bar';

  @override
  String get novelExtensions => 'Novel Extensions';

  @override
  String get defaultFeed => 'Flux par défaut';

  @override
  String get defaultFeedDesc => 'Quelle liste une source ouvre au départ';

  @override
  String noServiceSupports(String type) {
    return 'Aucun service ne gère $type';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · $loaded sources sur $installed en cours de chargement';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'Aucun service d\'extensions ne gère $type ici.';
  }

  @override
  String get loadDataFrom => 'Charger les données depuis';

  @override
  String noInstalledSourcesYet(String type) {
    return 'Aucune source $type installée pour l\'instant.';
  }

  @override
  String extensionNotInstalled(String name) {
    return 'L\'extension pour $name n\'est pas installée';
  }

  @override
  String get thisSource => 'cette source';

  @override
  String failedToAddRepository(String error) {
    return 'Impossible d\'ajouter le dépôt : $error';
  }

  @override
  String installedType(String type) {
    return '$type installées';
  }

  @override
  String availableType(String type) {
    return '$type disponibles';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'Aucune extension $type installée';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'Aucune extension $type disponible';
  }

  @override
  String get nothingToShowYet => 'Rien à afficher pour l\'instant';

  @override
  String get addTitlesHint =>
      'Ajoute des titres à ta liste et ils apparaîtront ici.';

  @override
  String get couldntLoad => 'Chargement impossible';

  @override
  String get progressStyleHint =>
      'Pastille et barre se superposent au poster ; « à l\'extérieur » affiche le même compteur en simple texte — choisis-en un.';

  @override
  String get nixManagedUpdate =>
      'Cette version est gérée par Nix — lance « nix flake update » sur ta flake et recompile au lieu de mettre à jour d\'ici';

  @override
  String autoUpdateFailed(String error) {
    return 'Échec de la mise à jour automatique ($error) — ouverture de la page de téléchargement à la place';
  }

  @override
  String get unknownPreference => 'Préférence inconnue';

  @override
  String unsupportedPreferenceType(String type) {
    return 'Type de préférence $type non pris en charge';
  }

  @override
  String get notYetReleased => 'Pas encore sorti';

  @override
  String get notStarted => 'Pas commencé';

  @override
  String get country => 'Pays';

  @override
  String get sort => 'Trier';

  @override
  String get chooseBackupDialog =>
      'Choisis une sauvegarde Aniyomi, Mihon ou Kotatsu';

  @override
  String get importListsHint =>
      'Ramène une bibliothèque depuis Aniyomi, Mihon / Tachiyomi ou Kotatsu. Titres, jaquettes, progression et catégories sont conservés.';

  @override
  String get chooseBackupFile => 'Choisir le fichier de sauvegarde';

  @override
  String importAnimeCount(int count) {
    return 'Importer $count animes';
  }

  @override
  String importMangaCount(int count) {
    return 'Importer $count mangas';
  }

  @override
  String get mergeWithExisting => 'Fusionner avec les listes existantes';

  @override
  String get mergeWithExistingDesc =>
      'Garde ce que tu as déjà ; désactivé, ça remplace les titres identiques';

  @override
  String get chooseAnother => 'En choisir un autre';

  @override
  String get import => 'Importer';

  @override
  String animeCount(int count) {
    return '$count animes';
  }

  @override
  String mangaCount(int count) {
    return '$count mangas';
  }

  @override
  String get chooseSaveLocation => 'Choisis où enregistrer la sauvegarde';

  @override
  String savedPath(String path) {
    return '$path enregistré';
  }

  @override
  String exportFailed(String error) {
    return 'Échec de l\'export : $error';
  }

  @override
  String get nothingInLocalLists =>
      'Rien dans tes listes locales pour l\'instant.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'Exporte $anime animes et $manga mangas de tes listes locales. Kotatsu ne gère que les mangas.';
  }

  @override
  String get saveToFolder => 'Enregistrer dans un dossier';

  @override
  String get formatAnimeManga => 'Anime et manga · .tachibk';

  @override
  String get formatMangaTachibk => 'Manga uniquement · .tachibk';

  @override
  String get formatMangaZip => 'Manga uniquement · .zip';

  @override
  String get genres => 'Genres';

  @override
  String get relations => 'Relations';

  @override
  String get recommendations => 'Recommandations';

  @override
  String get openings => 'Openings';

  @override
  String get endings => 'Endings';

  @override
  String get background => 'Contexte';

  @override
  String get links => 'Liens';

  @override
  String get rank => 'Classement';

  @override
  String get members => 'Membres';

  @override
  String get favorites => 'Favoris';

  @override
  String get episodes => 'Épisodes';

  @override
  String get chapters => 'Chapitres';

  @override
  String get volumes => 'Volumes';

  @override
  String get format => 'Format';

  @override
  String get source => 'Source';

  @override
  String get duration => 'Durée';

  @override
  String minutesPerEpisode(int minutes) {
    return '$minutes min par ép.';
  }

  @override
  String get rating => 'Classification';

  @override
  String get studio => 'Studio';

  @override
  String get serialization => 'Prépublication';

  @override
  String get season => 'Saison';

  @override
  String get broadcast => 'Diffusion';

  @override
  String get aired => 'Diffusé';

  @override
  String get published => 'Publié';

  @override
  String get popularity => 'Popularité';

  @override
  String get community => 'Communauté';

  @override
  String get watching => 'En visionnage';

  @override
  String get reading => 'En lecture';

  @override
  String get dropped => 'Abandonné';

  @override
  String get planned => 'Prévu';

  @override
  String get trailers => 'Bandes-annonces';

  @override
  String get ratings => 'Notes';

  @override
  String get originalTitle => 'Original';

  @override
  String get titleLabel => 'Titre';

  @override
  String get votes => 'Votes';

  @override
  String get watchedStat => 'Vus';

  @override
  String get runtime => 'Durée';

  @override
  String get director => 'Réalisateur';

  @override
  String get network => 'Chaîne';

  @override
  String get certification => 'Classification';

  @override
  String get airs => 'Diffusion';

  @override
  String get budget => 'Budget';

  @override
  String get revenue => 'Recettes';

  @override
  String get released => 'Sorti le';

  @override
  String get tags => 'Tags';

  @override
  String get author => 'Auteur';

  @override
  String get born => 'Né(e) le';

  @override
  String get website => 'Site web';

  @override
  String get established => 'Fondé en';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novels => 'Light novels';

  @override
  String get thisMonth => 'Ce mois-ci';

  @override
  String get movies => 'Films';

  @override
  String get shows => 'Séries';

  @override
  String get rewatching => 'Revisionnage';

  @override
  String get rereading => 'Relecture';

  @override
  String get watchedStatus => 'Vus';

  @override
  String get planning => 'Prévus';

  @override
  String get paused => 'En pause';

  @override
  String get watch => 'Regarder';

  @override
  String get read => 'Lire';

  @override
  String get finished => 'Terminé';

  @override
  String get releasing => 'En cours de diffusion';

  @override
  String get cancelled => 'Annulé';

  @override
  String get hiatus => 'Hiatus';

  @override
  String get remove => 'Retirer';

  @override
  String syncToService(String service) {
    return 'Synchroniser vers $service';
  }

  @override
  String syncedToService(String service) {
    return 'Synchronisé vers $service';
  }

  @override
  String get latestReleases => 'Dernières sorties';

  @override
  String get topRated => 'Les mieux notés';

  @override
  String localSection(String title) {
    return '$title · Local';
  }

  @override
  String get localEntryNote =>
      'Ce titre est uniquement dans ta liste locale sur cet appareil. La modification est désactivée ici car elle pourrait entrer en conflit avec la liste de ton compte ; tu peux quand même le retirer.';

  @override
  String get cardPresetPoster => 'Poster';

  @override
  String get cardPresetCard => 'Carte';

  @override
  String get cardPresetCozy => 'Cosy';

  @override
  String get sortTopRated => 'Les mieux notés';

  @override
  String get sortMostPopular => 'Les plus populaires';

  @override
  String get sortTrending => 'Tendances';

  @override
  String get sortNewest => 'Les plus récents';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'Les plus mis en favoris';

  @override
  String get anyCountry => 'Tous les pays';

  @override
  String get orderScore => 'Note';

  @override
  String get orderTitle => 'Titre';

  @override
  String get orderLastUpdated => 'Dernière mise à jour';

  @override
  String get orderLastAdded => 'Dernier ajout';

  @override
  String get never => 'Jamais';

  @override
  String get always => 'Toujours';

  @override
  String get scorePoint100 => '100 points';

  @override
  String get scorePoint10Decimal => '10 points décimal';

  @override
  String get scorePoint10 => '10 points';

  @override
  String get scorePoint5 => '5 étoiles';

  @override
  String get scorePoint3 => '3 points smiley';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count heures',
      one: '1 heure',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jours',
      one: '1 jour',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count semaines',
      one: '1 semaine',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'Reprendre';

  @override
  String get resumeSourceMissing =>
      'Installe la source de ce titre pour reprendre';

  @override
  String get resumeRemove => 'Retirer de la reprise';

  @override
  String resumeAt(String time) {
    return '$time restant';
  }

  @override
  String resumePage(int page, int total) {
    return 'Page $page sur $total';
  }

  @override
  String get continueWatching => 'Continuer à regarder';

  @override
  String get continueReading => 'Continuer à lire';

  @override
  String get favouriteAnimeSection => 'Animes favoris';

  @override
  String get favouriteMangaSection => 'Mangas favoris';

  @override
  String get plannedAnime => 'Animes prévus';

  @override
  String get plannedManga => 'Mangas prévus';

  @override
  String get completedAnime => 'Animes terminés';

  @override
  String get completedManga => 'Mangas terminés';

  @override
  String get hiddenMedia => 'Médias masqués';

  @override
  String get recentUpdates => 'Mises à jour récentes';

  @override
  String get trendingNow => 'Tendances du moment';

  @override
  String get popularThisSeason => 'Populaires cette saison';

  @override
  String get trendingMovies => 'Films tendance';

  @override
  String get topRatedSeries => 'Séries les mieux notées';

  @override
  String get mostFavouriteSeries => 'Séries les plus mises en favoris';

  @override
  String get popularAnime => 'Animes populaires';

  @override
  String get trendingManhwa => 'Manhwas tendance';

  @override
  String get trendingNovels => 'Light novels tendance';

  @override
  String get topRatedManga => 'Mangas les mieux notés';

  @override
  String get mostFavouriteManga => 'Mangas les plus mis en favoris';

  @override
  String get popularManga => 'Mangas populaires';

  @override
  String get topMovies => 'Top films';

  @override
  String get topOna => 'Top ONA';

  @override
  String get topOva => 'Top OVA';

  @override
  String get mostPopular => 'Les plus populaires';

  @override
  String get mostFavourite => 'Les plus mis en favoris';

  @override
  String get upcoming => 'À venir';

  @override
  String get topManga => 'Top mangas';

  @override
  String get topManhwa => 'Top manhwas';

  @override
  String get topManhua => 'Top manhuas';

  @override
  String get topNovels => 'Top light novels';

  @override
  String get topOneShots => 'Top one-shots';

  @override
  String get trendingMoviesToday => 'Films tendance aujourd\'hui';

  @override
  String get trendingShowsToday => 'Séries tendance aujourd\'hui';

  @override
  String get trendingMoviesWeek => 'Films tendance cette semaine';

  @override
  String get trendingShowsWeek => 'Séries tendance cette semaine';

  @override
  String get mostWatchedMoviesMonth => 'Films les plus vus ce mois-ci';

  @override
  String get mostWatchedShowsMonth => 'Séries les plus vues ce mois-ci';

  @override
  String get trendingThisWeek => 'Tendances de la semaine';

  @override
  String get mostWatchedThisMonth => 'Les plus vus ce mois-ci';

  @override
  String get repoLinksAdded => 'Liens du dépôt ajoutés !';

  @override
  String repoLinkConfirm(String url) {
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust.';
  }

  @override
  String get errorGettingAnilistData =>
      'Erreur lors de la récupération des données d\'AniList.';

  @override
  String get navInfo => 'INFOS';

  @override
  String get navComments => 'COMMENTAIRES';

  @override
  String get playerNotAvailable => 'Le lecteur n\'est pas encore disponible';

  @override
  String deepLinkInitialError(String error) {
    return 'Erreur lors de la récupération du lien initial : $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'Erreur à l\'ouverture du lien : $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'Ce lien ne peut pas être ouvert : $link';
  }

  @override
  String linkOpenError(String error) {
    return 'Erreur à l\'ouverture du lien : $error';
  }

  @override
  String get forReleasingTitles =>
      'pour les titres actuellement en cours de diffusion';

  @override
  String get progress => 'Progression';

  @override
  String get notes => 'Notes';

  @override
  String serviceNotFound(String id) {
    return 'Service « $id » introuvable';
  }

  @override
  String get glassEffectEnabled => 'Effet verre activé';

  @override
  String get glassEffectDisabled => 'Effet verre désactivé';

  @override
  String get materialYouEnabled => 'Material You activé';

  @override
  String get materialYouDisabled => 'Material You désactivé';

  @override
  String get darkModeEnabled => 'Mode sombre activé';

  @override
  String get darkModeDisabled => 'Mode sombre désactivé';

  @override
  String get animeList => 'Liste d\'animes';

  @override
  String get mangaList => 'Liste de mangas';

  @override
  String ownerAnimeList(String owner) {
    return 'Liste d\'animes de $owner';
  }

  @override
  String ownerMangaList(String owner) {
    return 'Liste de mangas de $owner';
  }

  @override
  String get loadingList => 'Chargement de la liste';

  @override
  String get earlier => 'Plus tôt';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'il y a $count jours',
      one: 'il y a 1 jour',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'il y a $count heures',
      one: 'il y a 1 heure',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'il y a $count minutes',
      one: 'il y a 1 minute',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return 'il y a $count min';
  }

  @override
  String hoursAgoShort(int count) {
    return 'il y a $count h';
  }

  @override
  String daysAgoShort(int count) {
    return 'il y a $count j';
  }

  @override
  String weeksAgoShort(int count) {
    return 'il y a $count sem.';
  }

  @override
  String get couldntLoadSource => 'Impossible de charger cette source';

  @override
  String get followers => 'Abonnés';

  @override
  String couldntLoadTitle(String title) {
    return 'Impossible de charger $title';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'Impossible de charger ce profil';

  @override
  String get profile => 'Profil';

  @override
  String get feed => 'Flux';

  @override
  String get stats => 'Stats';

  @override
  String get received => 'Reçus';

  @override
  String get sent => 'Envoyés';

  @override
  String get global => 'Global';

  @override
  String get couldntLoadPage => 'Impossible de charger cette page';

  @override
  String get couldntLoadAllDetails => 'Impossible de charger tous les détails';

  @override
  String get series => 'Séries';

  @override
  String get studios => 'Studios';

  @override
  String get users => 'Utilisateurs';

  @override
  String repositoriesTitle(String type) {
    return 'Dépôts $type';
  }

  @override
  String get repositoryUrl => 'URL du dépôt';

  @override
  String get downloadingRepository => 'Téléchargement du dépôt…';

  @override
  String get noRepositories => 'Aucun dépôt ajouté';

  @override
  String repoExtensionsCount(String count) {
    return '$count extensions';
  }

  @override
  String get searchExtensions => 'Rechercher des extensions...';

  @override
  String deletePluginTitle(String name) {
    return 'Supprimer $name ?';
  }

  @override
  String get deletePluginMessage =>
      'Tu es sûr de vouloir supprimer ce plugin ?';

  @override
  String pluginDeleted(String name) {
    return '$name supprimé';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name n\'est pas disponible dans le dépôt configuré';
  }

  @override
  String get pluginFetchFailed => 'Impossible de récupérer les infos du plugin';

  @override
  String installPluginTitle(String name) {
    return 'Installer $name';
  }

  @override
  String sizeLabel(String size) {
    return 'Taille : $size';
  }

  @override
  String get installedState => 'Installé';

  @override
  String get errorLabel => 'Erreur :';

  @override
  String get stackTraceDetails => 'Détails (stack trace)';

  @override
  String get shareLogFile => 'Partager le fichier de logs';

  @override
  String get copyLogs => 'Copier les logs';

  @override
  String noListToEdit(String service) {
    return '$service n\'a aucune liste à modifier';
  }

  @override
  String get couldNotReadFile => 'Impossible de lire ce fichier';

  @override
  String importedSummary(int anime, int manga) {
    return '$anime animes et $manga mangas importés';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count déjà présents';
  }

  @override
  String get airingNow => 'En cours de diffusion';

  @override
  String get topRatedMovies => 'Films les mieux notés';

  @override
  String get koreanDramas => 'Dramas coréens';

  @override
  String get chineseDramas => 'Dramas chinois';

  @override
  String get japaneseDramas => 'Dramas japonais';

  @override
  String get thaiDramas => 'Dramas thaïlandais';

  @override
  String get turkishDramas => 'Séries turques';

  @override
  String get miniSeries => 'Mini-séries';

  @override
  String get topRatedShows => 'Séries les mieux notées';

  @override
  String get recommendedSection => 'Recommandés';

  @override
  String get syncRow => 'Synchroniser les listes';

  @override
  String get syncRowDesc =>
      'Copie la liste d\'un service sur tes autres comptes';

  @override
  String get syncTitle => 'Synchro';

  @override
  String get syncMainService => 'Service principal';

  @override
  String get syncMainServiceDesc =>
      'Sa liste fait foi ; tous les autres services connectés sont mis à jour pour correspondre';

  @override
  String get syncAuto => 'Synchro auto';

  @override
  String get syncAutoDesc =>
      'Récupère et synchronise en arrière-plan à l\'ouverture de l\'app et toutes les 30 minutes';

  @override
  String get syncAddMissing => 'Ajouter les entrées manquantes';

  @override
  String get syncAddMissingDesc =>
      'Ajoute aussi les entrées que l\'autre service n\'a pas encore';

  @override
  String get syncOnlyForward => 'Garder la progression avancée';

  @override
  String get syncOnlyForwardDesc =>
      'Ne baisse pas la progression d\'un service déjà en avance';

  @override
  String get syncFetch => 'Récupérer';

  @override
  String get syncFetchAgain => 'Récupérer à nouveau';

  @override
  String get syncAll => 'Tout synchroniser';

  @override
  String get syncStop => 'Arrêter';

  @override
  String get syncResume => 'Reprendre';

  @override
  String get syncNothingToSync =>
      'Ce service ne peut pas être synchronisé pour ce type';

  @override
  String get syncNoTargets =>
      'Connecte-toi à un autre service pour synchroniser';

  @override
  String get syncLoadingMap => 'Chargement de la correspondance des IDs';

  @override
  String get syncComparing => 'Comparaison des listes';

  @override
  String get syncIntro =>
      'Choisis un service principal et appuie sur Récupérer. Chaque service est interrogé une fois pour ta liste, puis comparé au principal.';

  @override
  String get syncStateSynced => 'Synchronisé';

  @override
  String get syncStateOutdated => 'Désynchronisé';

  @override
  String get syncStateMissing => 'Pas dans la liste';

  @override
  String get syncStateUnmapped => 'Aucune correspondance';

  @override
  String syncPaused(String time) {
    return 'En attente de la limite de requêtes, reprise dans $time';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count uniquement sur $name, laissés tels quels';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$done sur $total';
  }

  @override
  String get syncNothingHere => 'Rien à afficher';

  @override
  String syncLimits(int used, int max, String window) {
    return '$used requêtes sur $max utilisées par $window';
  }

  @override
  String get syncMinute => 'minute';

  @override
  String get syncDay => 'jour';

  @override
  String get syncNotInList => 'Pas encore dans la liste';

  @override
  String get syncCleared => 'Plan effacé';

  @override
  String get syncClear => 'Effacer';

  @override
  String get syncOptions => 'Options';

  @override
  String get syncShared => 'Partage son entrée avec un autre élément';

  @override
  String syncNotFound(String service) {
    return 'Introuvable sur $service';
  }

  @override
  String syncService(String service, int count) {
    return 'Synchroniser $service ($count)';
  }

  @override
  String get syncOnEdit => 'Synchroniser les changements instantanément';

  @override
  String get syncOnEditDesc =>
      'Envoie chaque mise à jour de progression et modif de liste à tes autres services connectés tout de suite';

  @override
  String syncPushed(String services) {
    return 'Synchronisé vers $services';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service : $error';
  }

  @override
  String get syncRateLimited =>
      'Limite de requêtes atteinte, réessaie dans un instant';

  @override
  String get syncAhead => 'Le plus avancé gagne';

  @override
  String get syncAheadDesc =>
      'Dans les deux sens : pour chaque titre, l\'entrée la plus avancée gagne et est copiée sur tous tes autres services';

  @override
  String syncAheadFrom(String service) {
    return 'Depuis $service';
  }

  @override
  String get syncConfirm => 'Vérifier avant de synchroniser';

  @override
  String get syncConfirmDesc =>
      'Montre ce que Tout synchroniser va changer et combien de requêtes il faut';

  @override
  String get syncPreviewTitle => 'Prêt à synchroniser';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates mises à jour, $adds à ajouter';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'Environ $count requêtes';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count IDs à rechercher d\'abord';
  }

  @override
  String get syncPreviewNothing => 'Rien à changer';

  @override
  String get syncStart => 'Démarrer';

  @override
  String get syncRetry => 'Réessayer';

  @override
  String get syncSkip => 'Ignorer cet élément';

  @override
  String get syncInclude => 'Réinclure cet élément';

  @override
  String get syncSkippedLabel => 'Ignoré';

  @override
  String get syncChanges => 'Différences';

  @override
  String get syncChangeStatus => 'Statut';

  @override
  String get syncChangeProgress => 'Progression';

  @override
  String get syncChangeScore => 'Note';

  @override
  String get syncChangeDates => 'Dates';

  @override
  String get syncChangeRepeat => 'Nombre de revisionnages';

  @override
  String get syncFailedReason => 'Pourquoi ça a échoué';

  @override
  String get syncSkippedHint =>
      'Les éléments ignorés sont laissés tranquilles, même après une nouvelle récupération';

  @override
  String get commentsRules => 'Règles des commentaires';

  @override
  String get commentsRulesBody =>
      'TOUTE INFRACTION = BANNISSEMENT\n\n1. Pas de racisme, de discrimination ni de discours haineux\n2. Pas de spam ni d\'auto-promo\n3. Absolument aucun contenu NSFW\n4. Anglais uniquement, sans exception\n5. Pas d\'usurpation d\'identité, de harcèlement ni d\'insultes\n6. Pas de contenu illégal ni de manque de respect extrême envers un fandom\n7. Ne demande ni ne partage de dépôts ou d\'extensions\n8. Spoilers uniquement avec balise spoiler et avertissement\n9. Pas de commentaires sexualisants ou déplacés sur des personnages mineurs\n10. Si c\'est mal, ne le poste pas !';

  @override
  String get commentsRulesAccept => 'J\'ai compris';

  @override
  String get commentsSortNewest => 'Plus récents';

  @override
  String get commentsSortOldest => 'Plus anciens';

  @override
  String get commentsSortHighest => 'Mieux notés';

  @override
  String get commentsSortLowest => 'Moins bien notés';

  @override
  String commentsEpisodeShort(int number) {
    return 'Ép. $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'Ch. $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'Filtrer par épisode';

  @override
  String get commentsFilterChapterTitle => 'Filtrer par chapitre';

  @override
  String get commentsFilterTagTitle =>
      'Saisis un numéro d\'épisode ou de chapitre';

  @override
  String get commentsFilterHint => 'Numéro';

  @override
  String get commentsFilterApply => 'Filtrer';

  @override
  String get commentsFilterClear => 'Tout afficher';

  @override
  String get commentsPlaceholder => 'Ajouter un commentaire…';

  @override
  String commentsReplyingTo(String name) {
    return 'Réponse à $name';
  }

  @override
  String get commentsSend => 'Envoyer';

  @override
  String get commentsTagButton => 'Tag';

  @override
  String commentsTagTitle(String label) {
    return 'Tag $label (facultatif)';
  }

  @override
  String get commentsTagEpisode => 'épisode';

  @override
  String get commentsTagChapter => 'chapitre';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return 'Numéro de $label';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'Le tag ne peut pas dépasser le total ($total)';
  }

  @override
  String get commentsNoTag => 'Aucun tag';

  @override
  String get commentsSpoiler => 'Spoiler';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'Rechercher des GIFs';

  @override
  String get commentsGifEmpty => 'Aucun GIF trouvé';

  @override
  String get commentsEmptyText => 'Le commentaire ne peut pas être vide';

  @override
  String get commentsBannedYou => 'Tu es banni des commentaires';

  @override
  String get commentsEdited => 'Commentaire modifié';

  @override
  String get commentsDeleted => 'Commentaire supprimé';

  @override
  String get commentsDeletedPlaceholder => '[supprimé]';

  @override
  String get commentsReported => 'Commentaire signalé';

  @override
  String get commentsUserBanned => 'Utilisateur banni';

  @override
  String get commentsReport => 'Signaler';

  @override
  String get commentsReportAsk => 'Signaler ce commentaire aux modérateurs ?';

  @override
  String get commentsDelete => 'Supprimer';

  @override
  String get commentsDeleteAsk =>
      'Ce commentaire sera supprimé pour tout le monde.';

  @override
  String get commentsBan => 'Bannir';

  @override
  String get commentsBanAsk => 'Bannir cet utilisateur des commentaires ?';

  @override
  String get commentsCopy => 'Copier';

  @override
  String get commentsViewReply => 'Voir 1 réponse';

  @override
  String commentsViewReplies(int count) {
    return 'Voir $count réponses';
  }

  @override
  String get commentsHideReplies => 'Masquer les réponses';

  @override
  String get commentsLoadMore => 'Charger plus de commentaires';

  @override
  String get commentsEmpty => 'Pas encore de commentaires. Sois le premier !';

  @override
  String get commentsEmptyFiltered => 'Aucun commentaire pour ce filtre';

  @override
  String get commentsSignIn =>
      'Connecte-toi à AniList pour lire et écrire des commentaires';

  @override
  String get commentsSignInMessage =>
      'Les commentaires sont partagés entre tous les services et utilisent ton compte AniList.';

  @override
  String get commentsUnavailable =>
      'Les commentaires ne sont pas disponibles pour ce titre';

  @override
  String get commentsUnavailableMessage =>
      'Il n\'a pas pu être associé à une entrée AniList.';

  @override
  String get commentsDisabled => 'Les commentaires sont désactivés';

  @override
  String get commentsDisabledMessage =>
      'Tu peux les réactiver dans Réglages › Général.';

  @override
  String get commentsOffline => 'Impossible de charger les commentaires';

  @override
  String get commentsSingleTitle => 'Un seul commentaire affiché';

  @override
  String get commentsShowAll => 'Afficher tous les commentaires';

  @override
  String get commentsSettingsHeader => 'Commentaires';

  @override
  String get commentsSettingEnabled => 'Commentaires';

  @override
  String get commentsSettingEnabledDesc =>
      'Affiche l\'onglet Commentaires sur les titres et te connecte au serveur de commentaires avec ton compte AniList';

  @override
  String get commentsSettingAlerts => 'Notifications de réponses';

  @override
  String get commentsSettingAlertsDesc =>
      'Me prévenir quand quelqu\'un répond à mes commentaires';

  @override
  String get commentsNoticeReplyTitle => 'Nouvelle réponse à un commentaire';

  @override
  String commentsNoticeReply(String name) {
    return '$name a répondu à ton commentaire';
  }

  @override
  String get commentsNoticeWarningTitle => 'Tu as reçu un avertissement';

  @override
  String get commentsNoticeWarning => 'Fais plus attention à tes commentaires';

  @override
  String get commentsNoticeUpdateTitle => 'Mise à jour de Dantotsu';

  @override
  String get barcodeTitle => 'Scanner un code-barres';

  @override
  String get barcodeTooltip =>
      'Trouve un manga ou un light novel grâce à son code-barres';

  @override
  String get barcodeIntro =>
      'Pointe la caméra vers le code-barres au dos d\'un volume, ou saisis son ISBN.';

  @override
  String get barcodeIntroManual =>
      'Saisis l\'ISBN imprimé au-dessus du code-barres au dos d\'un volume.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'Ce n\'est pas un ISBN valide';

  @override
  String barcodeNotFound(String isbn) {
    return 'Aucun livre trouvé pour $isbn';
  }

  @override
  String get barcodeCameraDenied =>
      'La caméra n\'est pas disponible. Autorise l\'accès à la caméra ou saisis l\'ISBN à la place.';

  @override
  String get themesTitle => 'Openings & endings';

  @override
  String get themesPlayVideo => 'Lire la vidéo';

  @override
  String get themesPlayAudio => 'Lire l\'audio uniquement';

  @override
  String get themesOpenSite => 'Ouvrir sur AnimeThemes';

  @override
  String get themesCredit => 'Thèmes depuis AnimeThemes';

  @override
  String get themesVersions => 'Versions';

  @override
  String get sauceTitle => 'Trouver la source';

  @override
  String get sauceIntro =>
      'Envoie une page de manga ou une illustration, ou colle son lien, pour trouver d\'où elle vient.';

  @override
  String get sauceKeyTitle => 'Clé API SauceNAO';

  @override
  String get sauceKeyHint =>
      'Facultatif, augmente la limite de recherches quotidienne';

  @override
  String get sauceKeyDesc =>
      'Obtiens une clé gratuite sur saucenao.com/user.php';

  @override
  String get sauceOpen => 'Ouvrir la source';

  @override
  String get sauceCredit => 'Recherche d\'image par SauceNAO';

  @override
  String get sauceEmpty => 'Aucun résultat';

  @override
  String get sauceTooltip =>
      'Trouve la source d\'une page de manga ou d\'une illustration';

  @override
  String get trendzTitle => 'Classements anime';

  @override
  String get trendzAnime => 'Anime';

  @override
  String get trendzFemale => 'Personnages féminins';

  @override
  String get trendzMale => 'Personnages masculins';

  @override
  String get trendzCouple => 'Couples';

  @override
  String get trendzCredit => 'Classements hebdo par AniTrendz';

  @override
  String get trendzNew => 'NOUVEAU';

  @override
  String get trendzEmpty => 'Le classement est vide';

  @override
  String get shareCard => 'Carte à partager';

  @override
  String get shareCardList => 'Partager la carte de liste';

  @override
  String get shareCardSaved => 'Carte enregistrée';

  @override
  String get shareCardFailed => 'Impossible de créer la carte';

  @override
  String get shareCardListEmpty => 'Ta liste n\'a encore rien à partager';

  @override
  String get shareCardTop => 'Mes coups de cœur';

  @override
  String themesEpisodes(String eps) {
    return 'Épisodes $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent % de correspondance';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'Semaine $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count votes';
  }

  @override
  String trendzPeak(String rank) {
    return 'Pic à #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return '$count semaines dans le top dix';
  }

  @override
  String get imageSearchTitle => 'Recherche par image';

  @override
  String get imageSearchTooltip =>
      'Trouve un anime à partir d\'une capture d\'écran';

  @override
  String get imageSearchIntro =>
      'Choisis une capture ou colle un lien d\'image et trace.moe trouvera l\'épisode et le moment d\'où elle vient.';

  @override
  String get imageSearchPick => 'Choisir une image';

  @override
  String get imageSearchLinkHint => 'Coller un lien d\'image';

  @override
  String get imageSearchGo => 'Rechercher';

  @override
  String get imageSearchEmpty => 'Aucun résultat';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'Épisode $number';
  }

  @override
  String imageSearchAt(String time) {
    return 'à $time';
  }

  @override
  String get imageSearchPreview => 'Aperçu de l\'extrait';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent % de correspondance';
  }

  @override
  String get imageSearchCredit => 'Propulsé par trace.moe';

  @override
  String get imageSearchOpenFailed => 'Impossible d\'ouvrir ce titre';

  @override
  String get groups => 'Groupes';

  @override
  String get groupsYours => 'Tes groupes';

  @override
  String get groupsPopular => 'Populaires';

  @override
  String get groupsNew => 'Nouveaux';

  @override
  String get groupsFeatured => 'À la une';

  @override
  String get groupsSearch => 'Rechercher des groupes';

  @override
  String get groupsAll => 'Tous';

  @override
  String get groupsEmpty => 'Aucun groupe trouvé';

  @override
  String get groupsEmptyYours =>
      'Tu n\'as rejoint aucun groupe pour l\'instant';

  @override
  String get groupsSignIn =>
      'Connecte-toi pour voir les groupes que tu as rejoints';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count membres',
      one: '1 membre',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'Rejoindre';

  @override
  String get groupsJoined => 'Rejoint';

  @override
  String get groupsLeave => 'Quitter le groupe';

  @override
  String get groupsLeaveAsk =>
      'Tu ne verras plus les posts de ce groupe dans ton flux.';

  @override
  String get groupsJoinFailed =>
      'Impossible de rejoindre ce groupe, il est peut-être sur invitation';

  @override
  String get groupsLeaveFailed => 'Impossible de quitter ce groupe';

  @override
  String get groupsPosts => 'Posts';

  @override
  String get groupsMembersTab => 'Membres';

  @override
  String get groupsAbout => 'À propos';

  @override
  String get groupsRules => 'Règles';

  @override
  String get groupsPrivacyOpen => 'Ouvert';

  @override
  String get groupsPrivacyRestricted => 'Restreint';

  @override
  String get groupsPrivacyClosed => 'Fermé';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'Admin';

  @override
  String get groupsRoleMod => 'Modo';

  @override
  String get groupsCouldntLoad => 'Impossible de charger ce groupe';

  @override
  String get groupsNewPost => 'Poster dans le groupe';

  @override
  String get groupsPostHint => 'Partage quelque chose avec le groupe';

  @override
  String get groupsOpenInBrowser => 'Ouvrir dans le navigateur';

  @override
  String get groupsCategory => 'Catégorie';

  @override
  String get groupsLanguage => 'Langue';

  @override
  String get groupsCreated => 'Créé le';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count responsables',
      one: '1 responsable',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'Confidentialité';

  @override
  String get notificationsAll => 'Tout';

  @override
  String get notificationsAiring => 'Diffusion';

  @override
  String get notificationsMedia => 'Nouveaux titres';

  @override
  String get notificationsReplies => 'Réponses';

  @override
  String get notificationsMentions => 'Mentions';

  @override
  String get notificationsMessages => 'Messages';

  @override
  String get notificationsLikes => 'Likes';

  @override
  String get notificationsFollows => 'Abonnés';

  @override
  String get notificationsNoServices =>
      'Aucun service connecté n\'a de notifications';

  @override
  String get notificationsNoServicesMessage =>
      'Connecte-toi à un service qui envoie des notifications et elles s\'afficheront ici.';

  @override
  String get notificationsEmptyKind =>
      'Rien dans cette catégorie pour l\'instant';

  @override
  String get notificationsCommentsEmpty => 'Aucune notification de commentaire';

  @override
  String get notificationsCommentsEmptyMessage =>
      'Les réponses à tes commentaires et les annonces de Dantotsu s\'affichent ici.';

  @override
  String get notificationsSettings => 'Réglages des notifications';

  @override
  String get notificationsPollTitle => 'Vérifier les nouvelles notifications';

  @override
  String notificationsPollDesc(int minutes) {
    return 'Toutes les $minutes minutes quand l\'app est ouverte';
  }

  @override
  String get notificationsNotifyAbout => 'Me prévenir pour';

  @override
  String get notificationsCommentsHeader => 'Notifications de commentaires';

  @override
  String systemNotificationsDescFor(String service) {
    return 'Affiche une notification système pour chaque notification $service non lue tant que l\'app tourne.';
  }

  @override
  String get notificationsTestSent => 'Notification de test envoyée';

  @override
  String get notificationsTestDenied =>
      'Les notifications ne sont pas autorisées pour Dartotsu. Active-les dans les réglages système.';

  @override
  String get notificationsTestHint =>
      'Appui long pour envoyer une notification de test';

  @override
  String get notificationsTestSample => 'Ceci est une notification de test';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name a répondu à ton commentaire sur $media';
  }

  @override
  String get imageSearchNotLink => 'Ça ne ressemble pas à un lien';

  @override
  String get imageSearchQuota => 'Quota de recherche dépassé';

  @override
  String get imageSearchBusy => 'Trop de requêtes, réessaie dans un instant';

  @override
  String imageSearchFailed(int code) {
    return 'Échec de la recherche ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count nouvelles notifications';
  }

  @override
  String get reactionsTitle => 'Réactions';

  @override
  String get reactionsNeedEntry => 'Ajoute ce titre à ta liste avant de réagir';

  @override
  String get reactionsAdd => 'Ajouter une réaction';

  @override
  String get reactionsHint => 'Tu en as pensé quoi ? (court et sans spoiler)';

  @override
  String get reactionsPost => 'Publier';

  @override
  String get reactionsFailed => 'Impossible de mettre à jour la réaction';

  @override
  String get settingsWatch => 'Regarder & lire';

  @override
  String get settingsWatchDesc =>
      'Listes d\'épisodes, association des sources et détails des épisodes';

  @override
  String get watchSettingsLayout => 'Liste des épisodes';

  @override
  String get watchSettingsSources => 'Sources';

  @override
  String get watchSettingsMetadata => 'Détails des épisodes';

  @override
  String get watchLayout => 'Disposition';

  @override
  String get watchListView => 'Liste';

  @override
  String get watchGridView => 'Grille';

  @override
  String get watchCompactView => 'Compact';

  @override
  String get watchDefaultLayoutDesc =>
      'Comment les épisodes et chapitres s\'affichent tant que tu ne changes pas ça pour un titre';

  @override
  String get watchChunkSize => 'Taille des tranches';

  @override
  String get watchChunkSizeDesc =>
      'Combien d\'épisodes ou de chapitres contient chaque onglet de tranche';

  @override
  String get watchShowDescription => 'Afficher les descriptions';

  @override
  String get watchShowDescriptionDesc =>
      'Affiche le résumé de l\'épisode sous chaque titre dans la disposition en liste';

  @override
  String get watchShowFiller => 'Afficher les épisodes fillers';

  @override
  String get watchShowFillerDesc =>
      'Désactive pour masquer les épisodes marqués comme fillers';

  @override
  String get watchBlurUnwatched => 'Masquer les miniatures spoilers';

  @override
  String get watchBlurUnwatchedDesc =>
      'Floute la miniature des épisodes que tu n\'as pas encore regardés';

  @override
  String get watchResumeShelf => 'Rangée Reprendre';

  @override
  String get watchResumeShelfDesc =>
      'Affiche la rangée Reprendre sur l\'accueil';

  @override
  String get watchMarkOnLongPress => 'Appui long pour marquer la progression';

  @override
  String get watchMarkOnLongPressDesc =>
      'Appuie longuement sur un épisode ou un chapitre pour le marquer comme vu ou non vu';

  @override
  String get watchMatching => 'Association des sources';

  @override
  String get watchMatchingDesc =>
      '« Plus proche » prend le meilleur résultat de recherche. « Exact uniquement » n\'accepte qu\'un titre quasi identique et te laisse choisir pour le reste.';

  @override
  String get watchMatchClosest => 'Correspondance la plus proche';

  @override
  String get watchMatchExact => 'Correspondance exacte uniquement';

  @override
  String get watchMetadataDesc =>
      'D\'où viennent les titres d\'épisodes, résumés, miniatures, dates de diffusion et indicateurs de filler. Glisse pour définir la priorité ; la première source qui a une valeur l\'emporte.';

  @override
  String get watchMetaAniZipDesc =>
      'Titres d\'épisodes, résumés, images et dates de diffusion';

  @override
  String get watchMetaKitsuDesc =>
      'Titres d\'épisodes, descriptions et miniatures';

  @override
  String get watchMetaSimklDesc =>
      'Titres d\'épisodes, descriptions, images et dates de diffusion';

  @override
  String get watchMetaAniListDesc =>
      'Titres d\'épisodes en streaming, miniatures et programme de diffusion';

  @override
  String get watchMetaTenraiDesc =>
      'Titres d\'épisodes MyAnimeList, dates de diffusion, indicateurs de filler et de récap via Tenrai';

  @override
  String get watchClearMetadata => 'Actualiser les détails des épisodes';

  @override
  String get watchClearMetadataDesc =>
      'Oublie les détails d\'épisodes en cache pour les récupérer à nouveau';

  @override
  String get watchMetadataCleared =>
      'Les détails des épisodes seront récupérés à nouveau';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count épisodes',
      one: '1 épisode',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count chapitres',
      one: '1 chapitre',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'Épisode $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'Chapitre $number';
  }

  @override
  String get watchSearching => 'Recherche…';

  @override
  String watchSearchingFor(String term) {
    return 'Recherche : $term';
  }

  @override
  String watchSelected(String title) {
    return 'Sélectionné : $title';
  }

  @override
  String watchFound(String title) {
    return 'Trouvé : $title';
  }

  @override
  String get watchNothingFound => 'Rien trouvé sur cette source';

  @override
  String get watchSearchFailed => 'La recherche dans la source a échoué';

  @override
  String get watchLoadFailed => 'Impossible de charger la liste';

  @override
  String get watchSignInToTrack => 'Connecte-toi pour suivre ta progression';

  @override
  String watchInstallSource(String action) {
    return 'Installe une extension pour commencer à $action';
  }

  @override
  String get watchSourceMissing => 'Cette source n\'est pas installée';

  @override
  String get watchWrongTitle => 'Mauvais titre ?';

  @override
  String get watchSearchAgain => 'Rechercher à nouveau';

  @override
  String watchSearchSource(String source) {
    return 'Rechercher dans $source';
  }

  @override
  String get watchSource => 'Source';

  @override
  String get watchOptions => 'Options';

  @override
  String get watchReverse => 'Inverser l\'ordre';

  @override
  String get watchScanlators => 'Groupes';

  @override
  String get watchResetOptions => 'Réinitialiser ces options';

  @override
  String get watchContinue => 'Continuer';

  @override
  String get watchStart => 'Démarrer';

  @override
  String get watchPlay => 'Lire';

  @override
  String get watchRead => 'Lire';

  @override
  String get watchMarkWatched => 'Marquer comme vu';

  @override
  String get watchMarkUnwatched => 'Marquer comme non vu';

  @override
  String get watchMarkRead => 'Marquer comme lu';

  @override
  String get watchMarkUnread => 'Marquer comme non lu';

  @override
  String get watchFiller => 'Filler';

  @override
  String get watchRecap => 'Récap';

  @override
  String get watchNoEpisodes => 'Aucun épisode trouvé';

  @override
  String get watchNoChapters => 'Aucun chapitre trouvé';

  @override
  String get watchSourceTools => 'Outils de la source';

  @override
  String get watchSourceSettings => 'Réglages de la source';

  @override
  String get watchOpenWebView => 'Ouvrir dans la vue web';

  @override
  String get watchOpenWebViewDesc =>
      'Résous une vérification Cloudflare ou connecte-toi ; les cookies sont partagés avec les requêtes de la source';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cookies enregistrés pour $host',
      one: '1 cookie enregistré pour $host',
      zero: 'Aucun cookie enregistré pour $host',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Autorisation Cloudflare active, $time';
  }

  @override
  String get watchClearanceMissing => 'Aucun cookie d\'autorisation Cloudflare';

  @override
  String get watchClearanceSession => 'dure jusqu\'à la fermeture de l\'app';

  @override
  String get watchAgentShared =>
      'Les requêtes utilisent le user agent de la vue web, que Cloudflare vérifie';

  @override
  String get watchAgentCustom =>
      'Un user agent perso est défini, donc une autorisation Cloudflare de la vue web peut être rejetée';

  @override
  String get watchTestConnection => 'Tester la connexion';

  @override
  String get watchSolveChallenge => 'Résoudre';

  @override
  String watchProbeOk(int code) {
    return 'Accessible (HTTP $code)';
  }

  @override
  String get watchProbeChallenge =>
      'Cloudflare demande toujours une vérification';

  @override
  String watchProbeBlocked(int code) {
    return 'Bloqué par le site (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'Impossible de joindre le site';

  @override
  String get watchClearCookies => 'Effacer les cookies de ce site';

  @override
  String get watchCookiesCleared => 'Cookies effacés';

  @override
  String get watchMetaSource => 'Détails des épisodes depuis';

  @override
  String get watchMetaAuto => 'Automatique';

  @override
  String get watchMetaOff => 'Désactivé';

  @override
  String get playerSettingsTitle => 'Réglages du lecteur vidéo';

  @override
  String get playerSectionPlayback => 'Lecture';

  @override
  String get playerSectionSkip => 'Saut';

  @override
  String get playerSectionGestures => 'Commandes';

  @override
  String get playerSectionSubtitles => 'Sous-titres';

  @override
  String get playerSectionShaders => 'Shaders';

  @override
  String get playerSectionEngine => 'Moteur';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'Vitesse de lecture';

  @override
  String get playerCursedSpeed => 'Vitesses en plus';

  @override
  String get playerCursedSpeedDesc =>
      'Ajoute des vitesses jusqu\'à 10x à la liste';

  @override
  String get playerResize => 'Mode de redimensionnement';

  @override
  String get playerFitFit => 'Ajuster';

  @override
  String get playerFitCover => 'Remplir';

  @override
  String get playerFitStretch => 'Étirer';

  @override
  String get playerSkipDuration => 'Durée du bouton de saut';

  @override
  String get playerSkipDurationDesc =>
      'Secondes que le bouton de saut avance en dehors des openings et endings';

  @override
  String get playerSeekDuration => 'Double appui pour avancer/reculer';

  @override
  String get playerSeekDurationDesc =>
      'Secondes à sauter avec un double appui ou une touche fléchée';

  @override
  String get playerAutoPlay => 'Lecture auto de la suite';

  @override
  String get playerAutoPlayDesc =>
      'Lance l\'épisode suivant quand celui-ci se termine';

  @override
  String get playerResume => 'Reprendre là où tu t\'es arrêté';

  @override
  String get playerResumeDesc => 'Reprend un épisode à sa dernière position';

  @override
  String get playerOrientation => 'Orientation';

  @override
  String get playerOrientationAuto => 'Suivre l\'appareil';

  @override
  String get playerOrientationLandscape => 'Paysage';

  @override
  String get playerOrientationPortrait => 'Portrait';

  @override
  String get playerAutoSkipOpening => 'Passer les openings';

  @override
  String get playerAutoSkipEnding => 'Passer les endings';

  @override
  String get playerAutoSkipRecap => 'Passer les récaps';

  @override
  String get playerAutoSkipDesc =>
      'Saute dès que ça commence, grâce à AniSkip et aux timestamps du flux';

  @override
  String get playerSkipOnce => 'Ne passer qu\'une fois';

  @override
  String get playerSkipOnceDesc =>
      'Ne saute pas deux fois la même partie si tu reviens en arrière dedans';

  @override
  String get playerAdjustBrightness => 'Geste de luminosité';

  @override
  String get playerAdjustBrightnessDesc =>
      'Glisse vers le haut ou le bas sur la moitié droite de l\'écran';

  @override
  String get playerAdjustVolume => 'Geste de volume';

  @override
  String get playerAdjustVolumeDesc =>
      'Glisse vers le haut ou le bas sur la moitié gauche de l\'écran';

  @override
  String get playerHoldToSpeed => 'Maintenir pour accélérer';

  @override
  String get playerHoldToSpeedDesc =>
      'Maintiens appuyé sur la vidéo pour lire plus vite, glisse sur le côté pour changer la vitesse';

  @override
  String get playerThumbless => 'Barre de progression plus épaisse';

  @override
  String get playerThumblessDesc => 'Une barre épaisse sans curseur';

  @override
  String get playerShowSubtitles => 'Afficher les sous-titres';

  @override
  String get playerShowSubtitlesDesc =>
      'Désactive pour masquer toutes les pistes de sous-titres';

  @override
  String get playerSubtitleLanguage => 'Langue de sous-titres préférée';

  @override
  String get playerSubtitleSize => 'Taille des sous-titres';

  @override
  String get playerSubtitleWeight => 'Graisse des sous-titres';

  @override
  String get playerSubtitleBottom => 'Marge basse des sous-titres';

  @override
  String get playerSubtitleFont => 'Police des sous-titres';

  @override
  String get playerSubtitleColor => 'Couleur des sous-titres';

  @override
  String get playerSubtitleBackground => 'Fond des sous-titres';

  @override
  String get playerSubtitleOutline => 'Contour des sous-titres';

  @override
  String get playerLibass => 'Utiliser libass';

  @override
  String get playerLibassDesc =>
      'Affiche les sous-titres .ass stylisés. La taille, la couleur et la police ci-dessus ne s\'appliquent alors plus';

  @override
  String get playerShaders => 'Shaders';

  @override
  String get playerShadersEnable => 'Activer les shaders';

  @override
  String get playerShadersEnableDesc =>
      'Upscale et nettoie l\'image avec des shaders GLSL comme Anime4K';

  @override
  String get playerShadersOff => 'Shaders désactivés';

  @override
  String get playerShadersMissing => 'Anime4K n\'est pas installé';

  @override
  String get playerShadersMissingDesc =>
      'Télécharge le pack de shaders Anime4K (environ 0,8 Mo) pour utiliser les modes intégrés.';

  @override
  String get playerShadersDownload => 'Télécharger Anime4K';

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
  String get playerShadersPreview => 'Aperçu sur cette image';

  @override
  String get playerShadersUse => 'Utiliser';

  @override
  String get playerPicture => 'Image';

  @override
  String get playerColors => 'Couleurs';

  @override
  String get playerColorDefault => 'Par défaut';

  @override
  String get playerColorVivid => 'Éclatant';

  @override
  String get playerColorPop => 'Anime pop';

  @override
  String get playerColorSoft => 'Doux';

  @override
  String get playerColorCinematic => 'Cinéma';

  @override
  String get playerColorBright => 'Lumineux';

  @override
  String get playerColorNight => 'Nuit';

  @override
  String get playerColorMono => 'Mono';

  @override
  String get playerColorCustom => 'Perso';

  @override
  String get playerColorBrightness => 'Luminosité';

  @override
  String get playerColorContrast => 'Contraste';

  @override
  String get playerColorSaturation => 'Saturation';

  @override
  String get playerColorGamma => 'Gamma';

  @override
  String get playerColorHue => 'Teinte';

  @override
  String get playerColorReset => 'Réinitialiser';

  @override
  String get playerColorAdjust => 'Ajuster';

  @override
  String get playerShadersOriginal => 'Original';

  @override
  String get playerShadersPreviewFailed =>
      'Impossible de capturer une image pour l\'aperçu';

  @override
  String get playerShadersSoftware =>
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Only for a black video. Shaders don\'t work with it. Applies the next time the player opens';

  @override
  String get playerShadersCustomFiles => 'Tes shaders';

  @override
  String get playerShadersCustom => 'Shaders perso';

  @override
  String get playerShadersImport => 'Importer un .glsl';

  @override
  String get playerShadersNone =>
      'Importe tes propres fichiers .glsl ou .hook et coche-les pour les enchaîner';

  @override
  String get playerShadersBadFile =>
      'Choisis un fichier de shader .glsl ou .hook';

  @override
  String get playerDecoder => 'Décodeur';

  @override
  String get playerDecoderAuto => 'Auto';

  @override
  String get playerDecoderAutoSafe => 'Auto (sûr)';

  @override
  String get playerDecoderSoftware => 'Logiciel';

  @override
  String get playerDecoderHardware => 'Matériel';

  @override
  String get playerDecoderHardwarePlus => 'Matériel+';

  @override
  String get playerVideoOutput => 'Sortie vidéo';

  @override
  String get playerAudioChannels => 'Canaux audio';

  @override
  String get playerBuffer => 'Taille du tampon (Mo)';

  @override
  String get playerBufferDesc =>
      'Mémoire que le lecteur peut utiliser pour mettre un flux en tampon';

  @override
  String get playerUseMpvConf => 'Utiliser mpv.conf';

  @override
  String get playerUseMpvConfDesc =>
      'Applique les options de ton mpv.conf au début de la lecture';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'Modifier la configuration de mpv';

  @override
  String get playerMpvConfDesc =>
      'Une option par ligne, comme --hwdec=auto dans un mpv.conf normal. Les profils entre [crochets] sont ignorés.';

  @override
  String get playerMpvConfSaved => 'mpv.conf enregistré';

  @override
  String get playerUseScripts => 'Utiliser les scripts mpv';

  @override
  String get playerUseScriptsDesc =>
      'Charge les plugins du dossier scripts. Ils nécessitent une build de libmpv avec support Lua ou JavaScript';

  @override
  String get playerScripts => 'Scripts mpv';

  @override
  String get playerScriptsManage => 'Ajoute, retire et active des plugins';

  @override
  String get playerScriptsAdd => 'Ajouter un script';

  @override
  String get playerScriptsDesc =>
      'Les plugins Lua, JavaScript et natifs placés ici sont chargés au début de la lecture.';

  @override
  String get playerScriptsNone => 'Aucun script pour l\'instant';

  @override
  String get playerScriptsBadFile =>
      'Choisis un fichier .lua, .js ou un plugin natif';

  @override
  String get playerTuning => 'Réglages vidéo avancés';

  @override
  String get playerTuningDesc =>
      'Remplace la synchro, le cache, la mise à l\'échelle et le tone mapping. De mauvaises valeurs peuvent nuire à la lecture';

  @override
  String get playerVideoSync => 'Synchro vidéo';

  @override
  String get playerInterpolation => 'Interpolation d\'images';

  @override
  String get playerInterpolationDesc =>
      'Mouvements fluides, nécessite la synchro display-resample';

  @override
  String get playerPitch => 'Correction de la hauteur';

  @override
  String get playerPitchDesc =>
      'Garde les voix naturelles à d\'autres vitesses';

  @override
  String get playerCacheSeconds => 'Cache (secondes)';

  @override
  String get playerReadahead => 'Lecture anticipée (secondes)';

  @override
  String get playerThreads => 'Threads du décodeur';

  @override
  String get playerDeband => 'Deband';

  @override
  String get playerDebandDesc => 'Réduit le banding des dégradés';

  @override
  String get playerDebandIterations => 'Itérations du deband';

  @override
  String get playerDebandThreshold => 'Seuil du deband';

  @override
  String get playerCorrectDownscaling => 'Réduction d\'échelle correcte';

  @override
  String get playerSigmoid => 'Upscale sigmoïde';

  @override
  String get playerScale => 'Upscaler';

  @override
  String get playerCscale => 'Upscaler chroma';

  @override
  String get playerDscale => 'Downscaler';

  @override
  String get playerToneMapping => 'Tone mapping';

  @override
  String get playerTargetPeak => 'Pic cible';

  @override
  String get playerOpenFiles => 'Ouvrir des fichiers vidéo';

  @override
  String get playerOpenFilesDesc => 'Lis des fichiers de cet appareil';

  @override
  String get playerOpenFolder => 'Ouvrir un dossier';

  @override
  String get playerOpenFolderDesc =>
      'Lis toutes les vidéos d\'un dossier comme une playlist';

  @override
  String get playerNetworkStream => 'Flux réseau';

  @override
  String get playerNetworkStreamDesc => 'Ouvre un lien vidéo direct ou HLS';

  @override
  String get playerStreamUrl => 'URL du flux';

  @override
  String get playerStreamReferer => 'Referer (facultatif)';

  @override
  String get playerTorrent => 'Torrent';

  @override
  String get playerTorrentDesc =>
      'Diffuse un lien magnet ou un fichier .torrent';

  @override
  String get playerMagnetLink => 'Lien magnet ou URL de torrent';

  @override
  String get playerPickTorrent => 'Choisir un fichier .torrent';

  @override
  String get playerTorrentMissing =>
      'Installe d\'abord l\'addon torrent dans Réglages > Addons';

  @override
  String get playerNoVideos => 'Aucune vidéo lisible trouvée';

  @override
  String get playerReset => 'Réinitialiser les réglages du lecteur';

  @override
  String get playerResetDesc =>
      'Remet toutes les options du lecteur par défaut';

  @override
  String get playerResetConfirm =>
      'Réinitialiser tous les réglages du lecteur ?';

  @override
  String get playerResetDone => 'Réglages du lecteur réinitialisés';

  @override
  String get playerQuality => 'Qualité';

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
  String get playerStreams => 'Flux';

  @override
  String get playerAutoSelect => 'Sélection auto du flux';

  @override
  String get playerAutoSelectDesc =>
      'Choisit le flux le plus proche de ton dernier choix pour ce titre';

  @override
  String get playerLoadingStreams => 'Recherche de flux…';

  @override
  String get playerNoStreams => 'Cet épisode n\'a aucun flux';

  @override
  String get playerNoStreamsTitle => 'Aucun flux trouvé';

  @override
  String get playerFailed => 'Échec de la lecture';

  @override
  String get playerTorrentNeeded => 'Ce flux est un torrent';

  @override
  String get playerTorrentNeededDesc =>
      'Installe l\'addon torrent pour lire les liens magnet et les fichiers .torrent';

  @override
  String get playerOpenAddons => 'Ouvrir les addons';

  @override
  String get playerTryAnotherStream => 'Essayer un autre flux';

  @override
  String get playerEpisodes => 'Épisodes';

  @override
  String get playerLock => 'Verrouiller les commandes';

  @override
  String get playerFullscreen => 'Plein écran';

  @override
  String get readerChapters => 'Chapitres';

  @override
  String get readerSettingsTitle => 'Réglages de lecture';

  @override
  String get readerPreviousChapter => 'Chapitre précédent';

  @override
  String get readerNextChapter => 'Chapitre suivant';

  @override
  String get readerFirstChapter => 'C\'est le premier chapitre';

  @override
  String get readerLastChapter => 'Tu es à jour';

  @override
  String get readerFailed => 'Impossible d\'ouvrir ce chapitre';

  @override
  String get readerOpenBook => 'Open a book';

  @override
  String get readerOpenBookDesc =>
      'Read an epub (novel reader) or a PDF (manga reader) from your files';

  @override
  String get readerNoText => 'Ce chapitre n\'a pas de texte';

  @override
  String get readerPerTitle => 'Uniquement pour ce titre';

  @override
  String get readerPerTitleDesc =>
      'Garde ces réglages de lecture pour ce titre uniquement';

  @override
  String get readerSectionReading => 'Lecture';

  @override
  String get readerSectionControls => 'Commandes';

  @override
  String get readerSectionDisplay => 'Affichage';

  @override
  String get readerSectionNovel => 'Light novel';

  @override
  String get readerMode => 'Mode de lecture';

  @override
  String get readerModeAuto => 'Auto (by series type)';

  @override
  String get readerModeRtl => 'De droite à gauche';

  @override
  String get readerModeLtr => 'De gauche à droite';

  @override
  String get readerModeVertical => 'Pages verticales';

  @override
  String get readerModeWebtoon => 'Webtoon';

  @override
  String get readerModeContinuous => 'Défilement continu';

  @override
  String get readerScale => 'Échelle de l\'image';

  @override
  String get readerScaleFit => 'Ajuster à l\'écran';

  @override
  String get readerScaleWidth => 'Ajuster à la largeur';

  @override
  String get readerScaleHeight => 'Ajuster à la hauteur';

  @override
  String get readerScaleOriginal => 'Taille d\'origine';

  @override
  String get readerScaleSmart => 'Ajustement intelligent';

  @override
  String get readerDoublePage => 'Double pages';

  @override
  String get readerDoublePageDesc =>
      'Affiche deux pages côte à côte en paysage';

  @override
  String get readerDoubleTapZoom => 'Double appui pour zoomer';

  @override
  String get readerDoubleTapZoomDesc =>
      'Zoome et dézoome une page d\'un double appui';

  @override
  String get readerAnimate => 'Animation des pages';

  @override
  String get readerAnimateDesc => 'Animer le changement de page';

  @override
  String get readerSidePadding => 'Marge latérale';

  @override
  String get readerSidePaddingDesc => 'Espace à côté des pages en pourcentage';

  @override
  String get readerPageGap => 'Espace entre les pages';

  @override
  String get readerPageGapDesc => 'Espace entre les pages';

  @override
  String get readerAutoNext => 'Enchaîner sur le chapitre suivant';

  @override
  String get readerAutoNextDesc =>
      'Charge le chapitre suivant pendant que tu lis la fin de celui-ci';

  @override
  String get readerPreload => 'Précharger les pages';

  @override
  String get readerPreloadDesc => 'Combien de pages télécharger à l\'avance';

  @override
  String get readerTapZones => 'Zones de tap';

  @override
  String get readerTapDefault => 'Par défaut';

  @override
  String get readerTapLShaped => 'En L';

  @override
  String get readerTapKindle => 'Style Kindle';

  @override
  String get readerTapEdge => 'Bords uniquement';

  @override
  String get readerTapOff => 'Désactivé';

  @override
  String get readerInvertTaps => 'Inverser les zones de tap';

  @override
  String get readerInvertTapsDesc => 'Échange les zones précédent et suivant';

  @override
  String get readerBackground => 'Arrière-plan';

  @override
  String get readerBackgroundBlack => 'Noir';

  @override
  String get readerBackgroundGray => 'Gris';

  @override
  String get readerBackgroundWhite => 'Blanc';

  @override
  String get readerBackgroundTheme => 'Thème de l\'app';

  @override
  String get readerFilter => 'Filtre de couleur';

  @override
  String get readerFilterNone => 'Aucun';

  @override
  String get readerFilterGrayscale => 'Niveaux de gris';

  @override
  String get readerFilterInvert => 'Inverser';

  @override
  String get readerFilterSepia => 'Sépia';

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
  String get readerDim => 'Assombrir';

  @override
  String get readerDimDesc => 'Assombrit les pages';

  @override
  String get readerPageNumber => 'Numéro de page';

  @override
  String get readerPageNumberDesc =>
      'Affiche le numéro de page pendant la lecture';

  @override
  String get readerFullscreen => 'Plein écran';

  @override
  String get readerFullscreenDesc => 'Masque les barres système';

  @override
  String get readerCropBorders => 'Rogner les bords';

  @override
  String get readerCropBordersDesc =>
      'Retire les marges blanches ou noires vides des pages';

  @override
  String get readerLongPressSave => 'Hold a page to save it';

  @override
  String get readerLongPressSaveDesc =>
      'Long press a page to open save, share and copy options';

  @override
  String get readerVolumeKeys => 'Touches de volume pour tourner les pages';

  @override
  String get readerVolumeKeysDesc =>
      'Volume bas pour avancer, volume haut pour reculer';

  @override
  String get readerBookmarks => 'Marque-pages';

  @override
  String get readerBookmarkAdd => 'Ajouter un marque-page';

  @override
  String get readerBookmarkRemove => 'Retirer le marque-page';

  @override
  String get readerBookmarksEmpty => 'Pas encore de marque-pages';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'Page $page sur $total';
  }

  @override
  String get readerAutoScroll => 'Défilement auto';

  @override
  String get readerAutoScrollStop => 'Arrêter le défilement auto';

  @override
  String get readerAutoScrollSpeed => 'Vitesse du défilement auto';

  @override
  String get readerAutoScrollSpeedDesc =>
      'Vitesse à laquelle les pages défilent ou se tournent toutes seules';

  @override
  String get readerKeepOn => 'Garder l\'écran allumé';

  @override
  String get readerKeepOnDesc =>
      'Empêche l\'écran de s\'éteindre pendant la lecture';

  @override
  String get readerOrientation => 'Orientation';

  @override
  String get readerOrientationFree => 'Libre';

  @override
  String get readerOrientationPortrait => 'Portrait';

  @override
  String get readerOrientationLandscape => 'Paysage';

  @override
  String get readerSaveProgress => 'Enregistrer la progression';

  @override
  String get readerSaveProgressDesc =>
      'Retient ta page et marque les chapitres comme lus';

  @override
  String get readerReset => 'Réinitialiser les réglages de lecture';

  @override
  String get readerResetDesc => 'Retour aux valeurs par défaut';

  @override
  String get novelSize => 'Taille du texte';

  @override
  String get novelFont => 'Police';

  @override
  String get novelLineHeight => 'Hauteur de ligne';

  @override
  String get novelParagraph => 'Espacement des paragraphes';

  @override
  String get novelMargin => 'Marges';

  @override
  String get novelTheme => 'Thème de lecture';

  @override
  String get novelThemeApp => 'Thème de l\'app';

  @override
  String get novelThemeLight => 'Clair';

  @override
  String get novelThemeSepia => 'Sépia';

  @override
  String get novelThemeDark => 'Sombre';

  @override
  String get novelThemeBlack => 'Noir';

  @override
  String get novelJustify => 'Justifier le texte';

  @override
  String get novelJustifyDesc => 'Aligne le texte sur les deux bords';

  @override
  String get trackProgressTitle => 'Enregistrer la progression ?';

  @override
  String trackProgressAnime(String name) {
    return 'Suivre $name sur ta liste pendant que tu regardes ? Choisis « Cet appareil uniquement » pour le garder en local, ou Non pour ne rien enregistrer.';
  }

  @override
  String trackProgressManga(String name) {
    return 'Suivre $name sur ta liste quand tu finis un chapitre ? Choisis « Cet appareil uniquement » pour le garder en local, ou Non pour ne rien enregistrer.';
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
  String get trackProgressYes => 'Enregistrer';

  @override
  String get trackProgressReset =>
      'Question de progression réinitialisée pour ce type, elle sera reposée';

  @override
  String get trackProgressNo => 'Non';

  @override
  String get trackProgressOff => 'Désactivé';

  @override
  String get trackProgressLocal => 'Cet appareil uniquement';

  @override
  String get trackProgressSettingAnime => 'Suivre la progression des animes';

  @override
  String get trackProgressSettingManga =>
      'Suivre la progression des mangas et light novels';

  @override
  String get trackProgressSettingDesc =>
      'Quoi faire quand tu ouvres un épisode ou finis un chapitre';

  @override
  String get trackProgressAsk => 'Demander';

  @override
  String get trackProgressAlways => 'Toujours';

  @override
  String get dantotsuImport => 'Importer depuis Dantotsu';

  @override
  String get dantotsuImportDesc =>
      'Lis une sauvegarde de réglages Dantotsu (.ani, ou .sani chiffré)';

  @override
  String get dantotsuPick => 'Choisis une sauvegarde Dantotsu';

  @override
  String get dantotsuNothing => 'Rien dans ce fichier ne peut être importé';

  @override
  String get dantotsuApply => 'Importer la sélection';

  @override
  String dantotsuDone(int done, int total) {
    return '$done sur $total importés';
  }

  @override
  String get dantotsuGroupAccounts => 'Comptes';

  @override
  String get dantotsuGroupAppearance => 'Apparence';

  @override
  String get dantotsuGroupExtensions => 'Extensions';

  @override
  String get dantotsuGroupApp => 'App';

  @override
  String get dantotsuGroupPlayer => 'Lecteur vidéo';

  @override
  String get dantotsuAnilist => 'Connexion AniList';

  @override
  String get dantotsuMal => 'Connexion MyAnimeList';

  @override
  String get dantotsuDiscord => 'Token Discord Rich Presence';

  @override
  String get dantotsuTheme => 'Thème';

  @override
  String get dantotsuReposAnime => 'Dépôts d\'extensions d\'anime';

  @override
  String get dantotsuReposManga => 'Dépôts d\'extensions de manga';

  @override
  String get dantotsuReposNovel => 'Dépôts d\'extensions de light novel';

  @override
  String get dantotsuUpdates => 'Vérification des mises à jour';

  @override
  String get dantotsuComments => 'Commentaires';

  @override
  String get dantotsuActivity => 'Vérification des notifications AniList';

  @override
  String get dantotsuDns => 'Fournisseur DNS';

  @override
  String get dantotsuPlayer => 'Vitesse du lecteur et couleurs des sous-titres';

  @override
  String get dantotsuWarning =>
      'Ce fichier contient des tokens de connexion. Garde-le privé.';

  @override
  String get novelIndent => 'Indenter les paragraphes';

  @override
  String get novelIndentDesc =>
      'Commence chaque paragraphe par un retrait de première ligne';

  @override
  String get novelLetterSpacing => 'Espacement des lettres';

  @override
  String get novelSectionTranslate => 'Traduction';

  @override
  String get sectionExperimental => 'Expérimental';

  @override
  String get kitsuGraphqlDetail => 'Pages de détails plus rapides (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'Charge un titre avec ses personnages, son staff et ton entrée en une seule requête';

  @override
  String get togetherTitle => 'Regarder ensemble';

  @override
  String get togetherIntro =>
      'Colle le lien de la salle que ton pote t\'a envoyé. Tu rejoins direct et le lecteur s\'ouvre quand il lance un épisode.';

  @override
  String get togetherName => 'Ton nom';

  @override
  String get togetherConnecting => 'Connexion…';

  @override
  String get togetherLeave => 'Quitter la salle';

  @override
  String get togetherYou => 'Toi';

  @override
  String get togetherNoChat => 'Pas encore de messages';

  @override
  String get togetherChatHint => 'Message';

  @override
  String get togetherCopyInvite => 'Copier l\'invitation';

  @override
  String get togetherShareInvite => 'Share invite';

  @override
  String togetherShareText(String link) {
    return 'Watch with me on Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'Serveur et salle copiés';

  @override
  String get togetherConnectionLost => 'Connexion perdue';

  @override
  String togetherConnectedTo(String room) {
    return 'Connecté à $room';
  }

  @override
  String togetherFailed(String error) {
    return 'Connexion impossible : $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name a rejoint';
  }

  @override
  String togetherLeft(String name) {
    return '$name est parti';
  }

  @override
  String togetherPaused(String name) {
    return '$name a mis en pause';
  }

  @override
  String togetherResumed(String name) {
    return '$name a repris';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name a sauté à $time';
  }

  @override
  String get togetherFollowFailed =>
      'Impossible d\'ouvrir l\'épisode de l\'hôte. Ouvre-le toi-même.';

  @override
  String get togetherJoinRole => 'Rejoindre une salle';

  @override
  String get togetherOpenHost => 'Ouvrir l\'épisode de l\'hôte';

  @override
  String get togetherShowChat => 'Afficher le chat en direct';

  @override
  String get togetherWaitingHost => 'En attente que l\'hôte lance un épisode';

  @override
  String get togetherRoomLink => 'Lien de la salle';

  @override
  String get togetherBadLink => 'Ce n\'est pas un lien de salle';

  @override
  String get togetherHostClosed => 'L\'hôte a fermé la salle';

  @override
  String get togetherNowPlaying => 'En lecture';

  @override
  String togetherWatchingCount(int count) {
    return '$count spectateurs';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user veut mettre en pause';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user veut reprendre';
  }

  @override
  String get togetherChip => 'Ensemble';

  @override
  String get togetherSettingsDesc => 'Rejoins la salle d\'un pote avec un lien';

  @override
  String get novelBilingual => 'Afficher l\'original et la traduction';

  @override
  String get novelBilingualDesc =>
      'Chaque paragraphe affiche le texte original avec sa traduction en dessous';

  @override
  String get novelTranslateTo => 'Traduire en';

  @override
  String get novelTranslateOff => 'Désactivé';

  @override
  String get novelSectionSpeech => 'Synthèse vocale';

  @override
  String get novelSpeechRate => 'Vitesse de la voix';

  @override
  String get novelSpeechPitch => 'Hauteur de la voix';

  @override
  String get novelSpeak => 'Lire à voix haute';

  @override
  String get novelSpeakStop => 'Arrêter la lecture à voix haute';

  @override
  String get novelTranslate => 'Traduire le chapitre';

  @override
  String get novelTranslateShowOriginal => 'Afficher l\'original';

  @override
  String novelTranslateFailed(String error) {
    return 'Échec de la traduction : $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'La synthèse vocale n\'est pas disponible sur cet appareil';

  @override
  String get novelSpeechVoice => 'Voix';

  @override
  String get novelSpeechVoiceDefault => 'Par défaut du système';

  @override
  String get novelSpeakPrevious => 'Ligne précédente';

  @override
  String get novelSpeakNext => 'Ligne suivante';

  @override
  String get novelTapPaging => 'Taper sur les bords pour tourner la page';

  @override
  String get novelTapPagingDesc =>
      'Touche le côté gauche ou droit pour défiler d\'une page, le milieu affiche les commandes';

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
    return '$count min restantes';
  }

  @override
  String get novelBold => 'Texte en gras';

  @override
  String get novelBoldDesc => 'Utilise une graisse plus épaisse';

  @override
  String readerFinishedChapter(String chapter) {
    return '$chapter terminé';
  }

  @override
  String readerNextUp(String chapter) {
    return 'Suivant : $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'Précédent : $chapter';
  }

  @override
  String get readerNoPages => 'Ce chapitre n\'a aucune page';

  @override
  String get readerLoadingPages => 'Chargement des pages…';

  @override
  String get readerSlowPage => 'Cette page charge encore…';

  @override
  String get readerPageFailed => 'Impossible de charger cette page';

  @override
  String get playerShowComments => 'Afficher les commentaires';

  @override
  String get playerHideComments => 'Masquer les commentaires';

  @override
  String get playerSubtitles => 'Sous-titres';

  @override
  String get playerSubtitlesOff => 'Sous-titres désactivés';

  @override
  String get playerAudio => 'Audio';

  @override
  String get playerAddSubtitle => 'Ajouter un fichier de sous-titres';

  @override
  String get playerAddAudio => 'Ajouter un fichier audio';

  @override
  String get playerChapters => 'Chapitres';

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
  String get playerNoChapters => 'Aucun chapitre';

  @override
  String get playerTimestamp => 'Timestamp';

  @override
  String get playerAutoPlayDelay => 'Compte à rebours de l\'épisode suivant';

  @override
  String get playerWatchedAt => 'Compter comme vu à';

  @override
  String playerNextIn(int seconds) {
    return 'Épisode suivant dans $seconds s';
  }

  @override
  String get playerPlayNow => 'Lire maintenant';

  @override
  String playerAutoSkipOn(String name) {
    return '$name : sera passé automatiquement pour ce titre';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name : ne sera pas passé automatiquement pour ce titre';
  }

  @override
  String get playerAudioLanguage => 'Langue audio préférée';

  @override
  String get playerLanguageOrderHint =>
      'Sépare les langues par des virgules. La première trouvée est utilisée.';

  @override
  String get playerPip => 'Picture in picture';

  @override
  String get playerAutoPip => 'Picture in picture en quittant';

  @override
  String get playerAutoPipDesc =>
      'Continue la lecture dans une petite fenêtre quand tu quittes l\'app';

  @override
  String playerAutoPlaying(String title) {
    return 'Lecture de $title ensuite…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'Impossible d\'installer les shaders : $error';
  }

  @override
  String playerChapter(int number) {
    return 'Chapitre $number';
  }

  @override
  String get playerPerTitle => 'Uniquement pour ce titre';

  @override
  String get playerPerTitleDesc =>
      'Garde ces options pour ce titre sans toucher à tes valeurs par défaut';

  @override
  String get playerSwapGestures => 'Inverser les côtés du balayage';

  @override
  String get playerSwapGesturesDesc => 'Luminosité à gauche et volume à droite';

  @override
  String get playerOpenBig => 'Ouvrir en grand';

  @override
  String get playerOpenBigDesc =>
      'Lance le lecteur en plein écran au lieu d\'afficher la liste des épisodes';

  @override
  String get playerPauseOnBlur => 'Pause quand l\'appli perd le focus';

  @override
  String get playerPauseOnBlurDesc =>
      'Met en pause quand l\'appli est recouverte, par exemple par le panneau de notifications, et reprend à ton retour';

  @override
  String get playerAudioOutput => 'Sortie audio';

  @override
  String get fontAppDefault => 'Police de l\'app';

  @override
  String get fontImport => 'Importer une police';

  @override
  String get fontSample => 'Portez ce vieux whisky au juge blond qui fume';

  @override
  String get playerSubtitleDelay => 'Décalage des sous-titres';

  @override
  String get playerAudioDelay => 'Décalage audio';

  @override
  String get playerDelayReset => 'Réinitialiser';

  @override
  String get playerOnlineSubtitles => 'Sous-titres en ligne';

  @override
  String get playerOnlineSearchHint => 'Titre et épisode';

  @override
  String get playerOnlineNone => 'Aucun sous-titre trouvé';

  @override
  String playerOnlineFailed(String error) {
    return 'Échec de la recherche de sous-titres : $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'Impossible de télécharger ce sous-titre : $error';
  }

  @override
  String get playerOnlineMatch => 'Correspond à ce fichier';

  @override
  String get playerOnlineEpisode => 'Épisode correspondant';

  @override
  String playerOnlineDownloads(int count) {
    return '$count téléchargements';
  }

  @override
  String get playerSeekPreview => 'Aperçu de la barre de progression';

  @override
  String get playerSeekPreviewDesc =>
      'Affiche un petit aperçu d\'image au-dessus de la barre pendant le défilement. Ouvre un second décodeur basse résolution, donc consomme des données en plus sur les flux.';

  @override
  String get playerSettingsChip => 'Réglages';

  @override
  String get playerAudioDevice => 'Périphérique audio';

  @override
  String get settingsDownloads => 'Téléchargements';

  @override
  String get settingsDownloadsDesc =>
      'Épisodes hors-ligne, file d\'attente et mode hors-ligne';

  @override
  String get downloadsTitle => 'Téléchargements';

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
      'Vois la file d\'attente et tout ce qui est enregistré sur cet appareil';

  @override
  String get downloadTitle => 'Télécharger';

  @override
  String get downloadAlready => 'Déjà téléchargé ou dans la file';

  @override
  String get downloadPickStream => 'Télécharger quel flux ?';

  @override
  String get downloadPickSubtitle => 'Télécharger quels sous-titres ?';

  @override
  String get downloadPickAudio => 'Télécharger quelle piste audio ?';

  @override
  String get downloadNoAudio => 'Pas d\'audio en plus';

  @override
  String get downloadAudio => 'Audio';

  @override
  String get downloadNoSubtitle => 'Pas de sous-titres';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'Ce flux est une playlist HLS. Pour la télécharger, il faut l\'addon FFmpeg.';

  @override
  String get downloadSourceMissing =>
      'La source de cet épisode n\'est pas installée';

  @override
  String get downloadWaitingConnection => 'En attente d\'une connexion';

  @override
  String get downloadSubtitles => 'Sous-titres';

  @override
  String get downloadDownloaded => 'Téléchargé';

  @override
  String get downloadOffline => 'Hors-ligne';

  @override
  String get downloadDelete => 'Supprimer le téléchargement';

  @override
  String get downloadCancel => 'Annuler';

  @override
  String get downloadPause => 'Pause';

  @override
  String get downloadPaused => 'En pause';

  @override
  String get downloadResume => 'Reprendre';

  @override
  String get downloadPauseAll => 'Tout mettre en pause';

  @override
  String get downloadResumeAll => 'Tout reprendre';

  @override
  String get downloadQueuedState => 'En attente dans la file';

  @override
  String get downloadResolving => 'Récupération du flux…';

  @override
  String get downloadUsedFallback =>
      'Aucun flux correspondant, le premier a été utilisé';

  @override
  String get downloadTabQueue => 'File d\'attente';

  @override
  String get downloadTabDone => 'Terminé';

  @override
  String get downloadTabFailed => 'Échec';

  @override
  String get downloadEmptyQueue => 'Rien n\'est en cours de téléchargement';

  @override
  String get downloadEmptyDone => 'Rien de téléchargé pour l\'instant';

  @override
  String get downloadEmptyFailed => 'Aucun téléchargement échoué';

  @override
  String get downloadNext => 'Épisode suivant';

  @override
  String downloadNextN(int count) {
    return '$count épisodes suivants';
  }

  @override
  String downloadUnwatched(int count) {
    return 'Tous les non vus ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'Cette tranche ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'Tous les épisodes ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count épisodes en file',
      one: '1 épisode en file',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name téléchargé';
  }

  @override
  String downloadFailedBody(String name) {
    return 'Échec du téléchargement de $name';
  }

  @override
  String downloadStorage(String size) {
    return '$size utilisés par les téléchargements';
  }

  @override
  String get downloadQueueHeader => 'File d\'attente';

  @override
  String get downloadParallel => 'Téléchargements simultanés';

  @override
  String get downloadParallelDesc =>
      'Lance un téléchargement à la fois ou plusieurs ensemble';

  @override
  String get downloadOneByOne => 'Un par un';

  @override
  String get downloadNotifications => 'Notifications de téléchargement';

  @override
  String get downloadNotificationsDesc =>
      'Progression en direct quand le système le permet, sinon une note à la fin d\'un téléchargement';

  @override
  String get downloadNotifyLive => 'En direct';

  @override
  String get downloadNotifyDone => 'À la fin';

  @override
  String get downloadNotifyOff => 'Désactivé';

  @override
  String get downloadInfoFile =>
      'Écrire un fichier d\'infos à côté de chaque téléchargement';

  @override
  String get downloadInfoFileDesc =>
      'Enregistre le flux, la qualité, les sous-titres et les temps de saut dans un petit fichier .json';

  @override
  String get offlineHeader => 'Hors-ligne';

  @override
  String get offlineModeDesc =>
      'Auto passe en hors-ligne uniquement si l\'app démarre sans connexion. Toujours reste hors-ligne jusqu\'à ce que tu changes.';

  @override
  String get offlineModeOff => 'Désactivé';

  @override
  String get offlineModeAlways => 'Toujours';

  @override
  String get offlineModeOn =>
      'Le mode hors-ligne est activé. Les modifs sont enregistrées ici et envoyées quand tu seras de nouveau en ligne.';

  @override
  String get offlineSaved =>
      'Enregistré sur cet appareil, il sera synchronisé quand tu seras en ligne';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count modifs synchronisées',
      one: '1 modif synchronisée',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count modifs en attente de synchro',
      one: '1 modif en attente de synchro',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'Modifs en attente de synchro';

  @override
  String get offlinePendingNone => 'Rien en attente';

  @override
  String get offlineSyncNow => 'Synchroniser maintenant';

  @override
  String get offlineDiscard => 'Abandonner';

  @override
  String get downloadNotOffline =>
      'Cet épisode n\'est pas téléchargé, il n\'est donc pas disponible hors-ligne';

  @override
  String get offlineModeChip => 'Hors-ligne';

  @override
  String get downloadNextChapter => 'Chapitre suivant';

  @override
  String downloadNextChapters(int count) {
    return '$count chapitres suivants';
  }

  @override
  String downloadUnread(int count) {
    return 'Tous les non lus ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'Tous les chapitres ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total pages';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count pages';
  }

  @override
  String get downloadFfmpegTitle => 'Addon FFmpeg requis';

  @override
  String get downloadFfmpegBody =>
      'Ce flux est une playlist HLS. L\'addon FFmpeg assemble ses morceaux en un seul fichier mp4. Sans lui, les morceaux sont gardés dans un dossier d\'épisode et lus depuis là.';

  @override
  String get downloadFfmpegInstall => 'Installer';

  @override
  String get downloadFfmpegInstalling =>
      'Installation de FFmpeg, ça peut prendre un moment…';

  @override
  String get downloadFinishing => 'Assemblage des morceaux en un seul fichier…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total parties';
  }

  @override
  String get downloadTorrentNoFile =>
      'Le torrent n\'a aucun fichier vidéo à télécharger';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Téléchargement de $count éléments',
      one: 'Téléchargement de 1 élément',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'Supprimer les téléchargements vus';

  @override
  String get downloadAutoDeleteDesc =>
      'Supprime un téléchargement dès que ta progression atteint cet épisode ou chapitre';

  @override
  String get downloadConnections => 'Connexions par téléchargement';

  @override
  String get downloadConnectionsDesc =>
      'Découpe un gros fichier en parties récupérées en même temps. Certains serveurs limitent ça.';

  @override
  String get downloadPlayChoice => 'Lire depuis';

  @override
  String get downloadPlayLocalDesc => 'Le fichier enregistré sur cet appareil';

  @override
  String get downloadPlayStream => 'Streamer en ligne';

  @override
  String get downloadPlayStreamDesc => 'Charge l\'épisode depuis la source';

  @override
  String get offlineFeedTitle => 'Téléchargé sur cet appareil';

  @override
  String get offlineFeedEmpty =>
      'Télécharge quelque chose quand tu es en ligne et ça apparaît ici';

  @override
  String get offlineEnabled => 'Le mode hors-ligne est activé';

  @override
  String get offlineDisabled => 'Le mode hors-ligne est désactivé';

  @override
  String get downloadReadChoice => 'Lire depuis';

  @override
  String get downloadReadLocalDesc => 'Les pages enregistrées sur cet appareil';

  @override
  String get downloadReadOnline => 'Lire en ligne';

  @override
  String get downloadReadOnlineDesc => 'Charge le chapitre depuis la source';

  @override
  String downloadDeleteConfirm(String name) {
    return 'Supprimer $name de cet appareil ?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return 'Annuler le téléchargement de $name ? Ce qui a déjà été téléchargé est supprimé.';
  }

  @override
  String get downloadFfmpegFolder => 'Garder en dossier';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Jeter $count modifs qui n\'ont jamais été envoyées ? Cette action est irréversible.',
      one:
          'Jeter la modif qui n\'a jamais été envoyée ? Cette action est irréversible.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'En attente du Wi-Fi';

  @override
  String get downloadWaitingMetered => 'En pause sur connexion limitée';

  @override
  String get downloadWifiOnly => 'Wi-Fi uniquement';

  @override
  String get downloadWifiOnlyDesc =>
      'Les téléchargements attendent quand tu es en données mobiles';

  @override
  String get downloadMetered => 'Pause sur les connexions limitées';

  @override
  String get downloadMeteredDesc =>
      'Attend aussi sur les Wi-Fi que ton appareil marque comme limités';

  @override
  String get downloadSpeedLimit => 'Limite de débit';

  @override
  String get downloadSpeedLimitDesc =>
      'Plafonne la vitesse totale de téléchargement';

  @override
  String get downloadUnlimited => 'Illimité';

  @override
  String get downloadMoveToTop => 'Mettre en premier';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds seeds · $peers peers';
  }

  @override
  String get downloadTorrentFile => 'Quel fichier ?';

  @override
  String get downloadTorrentAuto => 'Associer l\'épisode automatiquement';

  @override
  String get downloadTorrentLoading => 'Lecture du torrent…';

  @override
  String get watchAutoSource => 'Passer automatiquement à la source suivante';

  @override
  String get watchAutoSourceDesc =>
      'Si la source ne trouve pas le titre ou ne charge pas, essaie la prochaine source installée';

  @override
  String get extensionTest => 'Tester les extensions';

  @override
  String get extensionTestCopy => 'Copie les échecs et leurs logs';

  @override
  String get extensionTestQuery => 'Terme de recherche';

  @override
  String get extensionTestRun => 'Lancer';

  @override
  String get extensionTestStop => 'Arrêter';

  @override
  String get extensionTestNone => 'Aucune extension installée de ce type';

  @override
  String get extensionTestNotRun => 'Pas encore testé';

  @override
  String get extensionTestSearch => 'Recherche';

  @override
  String get extensionTestDetail => 'Détails';

  @override
  String get extensionTestUnits => 'Épisodes / chapitres';

  @override
  String get extensionTestLinks => 'Flux / pages';

  @override
  String extensionTestFailedAt(String step) {
    return 'Échec à l\'étape $step';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$done sur $total testés · $passed réussis · $failed échoués';
  }

  @override
  String get extensionTestCopyLogs => 'Copie tout avec les logs complets';

  @override
  String get onboardingFeaturesTitle => 'Tout au même endroit';

  @override
  String get onboardingFeaturesBody =>
      'Tout ce que tu suis, regardes et lis, sans jongler entre les apps.';

  @override
  String get onboardingFeatureTrack => 'Suis tout';

  @override
  String get onboardingFeatureTrackDesc =>
      'Listes, progression et notes sur AniList, MyAnimeList, Simkl, Kitsu et MangaBaka.';

  @override
  String get onboardingFeatureWatch => 'Regarde et lis';

  @override
  String get onboardingFeatureWatchDesc =>
      'Installe des extensions et regarde des animes en streaming ou lis des mangas et light novels directement dans l\'app.';

  @override
  String get onboardingFeatureOffline => 'Emporte-le hors-ligne';

  @override
  String get onboardingFeatureOfflineDesc =>
      'Télécharge des épisodes et des chapitres, et continue sans connexion.';

  @override
  String get onboardingFeatureSync => 'Garde tes listes synchro';

  @override
  String get onboardingFeatureSyncDesc =>
      'Copie ta liste d\'un service à l\'autre, ou laisse le plus avancé l\'emporter.';

  @override
  String get onboardingServices => 'Fonctionne avec';

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
