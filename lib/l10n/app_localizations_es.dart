// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => 'La NUEVA mejor app para\nseguir anime y manga';

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
  String get loadMore => 'Cargar más';

  @override
  String get login => 'Iniciar sesión';

  @override
  String get continueAsGuest => 'Continuar como invitado';

  @override
  String get getStarted => 'Empezar';

  @override
  String get loginWithToken => 'Iniciar sesión con token';

  @override
  String get pasteTokenHint => 'Pega tu token de acceso';

  @override
  String loginTo(String service) {
    return 'Iniciar sesión en $service';
  }

  @override
  String get settings => 'Ajustes';

  @override
  String get account => 'Cuenta';

  @override
  String get about => 'Acerca de';

  @override
  String get language => 'Idioma';

  @override
  String get animationSpeed => 'Animaciones';

  @override
  String get animationSpeedDesc =>
      'Velocidad de las transiciones y los efectos de entrada en toda la app';

  @override
  String get animationSpeedOff => 'Desactivado';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Extensiones',
      one: 'Extensión',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'Fuente desconocida';

  @override
  String get install => 'Instalar';

  @override
  String get update => 'Actualizar';

  @override
  String get uninstall => 'Desinstalar';

  @override
  String get updateInstallCancelled =>
      'Instalación cancelada. Si Android dijo que la app choca con la instalada, la firma es distinta: desinstala la versión actual y luego instala la actualización';

  @override
  String updateInstallFailed(String error) {
    return 'Falló la actualización: $error';
  }

  @override
  String get appLock => 'Bloqueo de la app';

  @override
  String get appLockDesc =>
      'Pide un código al abrir la app o al volver pasado un rato';

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
  String get appLockUnlock => 'Mete tu código';

  @override
  String get appLockWrong => 'Código incorrecto';

  @override
  String appLockWait(String seconds) {
    return 'Demasiados intentos, espera ${seconds}s';
  }

  @override
  String get appLockNew => 'Elige un código';

  @override
  String get appLockNewHint => 'De 4 a 8 dígitos';

  @override
  String get appLockConfirm => 'Vuelve a escribirlo';

  @override
  String get appLockMismatch => 'Los códigos no coinciden';

  @override
  String get appLockOn => 'Código puesto';

  @override
  String get appLockRemoveTitle => 'Mete tu código para quitar el bloqueo';

  @override
  String get installFailed => 'Falló la instalación';

  @override
  String get updateFailed => 'Falló la actualización';

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
  String get noSourceSettings => 'La fuente no tiene ajustes';

  @override
  String get addPluginRepository => 'Añadir repositorio de plugins';

  @override
  String get pluginIndexUrlHint => 'URL del índice de plugins';

  @override
  String get addRepository => 'Añadir repositorio';

  @override
  String get pluginRepoUpdated => 'Repositorio de plugins actualizado';

  @override
  String get pluginRepoUpdateFailed =>
      'No se pudo actualizar el repositorio de plugins';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Cancelar';

  @override
  String get yes => 'Sí';

  @override
  String get no => 'No';

  @override
  String get save => 'Guardar';

  @override
  String get reset => 'Restablecer';

  @override
  String get clear => 'Borrar';

  @override
  String get test => 'Probar';

  @override
  String get testing => 'Probando…';

  @override
  String get resolving => 'Resolviendo…';

  @override
  String get none => 'Ninguno';

  @override
  String get selectMediaService => 'Elige un servicio de medios';

  @override
  String get pickColor => 'Elige un color';

  @override
  String get colorPickerCustom => 'Personalizado';

  @override
  String get colorPickerTransparent => 'Transparente';

  @override
  String get ltr => 'De izquierda a derecha';

  @override
  String get searchSettings => 'Buscar en ajustes';

  @override
  String nothingMatches(String query) {
    return 'Nada coincide con \"$query\"';
  }

  @override
  String searchCategory(String category) {
    return 'Buscar en $category';
  }

  @override
  String get settingsAppearance => 'Apariencia';

  @override
  String get settingsAppearanceDesc => 'Tema, colores, modo cristal';

  @override
  String get settingsGeneral => 'General';

  @override
  String get settingsGeneralDesc => 'Idioma y comportamiento';

  @override
  String get settingsNetwork => 'Red';

  @override
  String get settingsNetworkDesc => 'User agent, certificados, DNS y proxy';

  @override
  String get settingsAccountDesc =>
      'Servicio de seguimiento e inicio de sesión';

  @override
  String get settingsUpdates => 'Actualizaciones';

  @override
  String get amoledBlack => 'Negro AMOLED';

  @override
  String get amoledBlackDesc => 'Superficies negro puro en modo oscuro';

  @override
  String get glassMode => 'Modo cristal';

  @override
  String get glassModeDesc =>
      'Superficies esmeriladas sobre las portadas de tu biblioteca';

  @override
  String get shelfFrame => 'Marco alrededor de las secciones';

  @override
  String get shelfFrameDesc =>
      'Muestra una tarjeta detrás de cada estante, o deja las filas directamente sobre la página';

  @override
  String get settingsExtensionsDesc =>
      'Gestores de fuentes, repositorios y opciones de extensiones';

  @override
  String get settingsAddons => 'Complementos';

  @override
  String get customPath => 'Ruta de almacenamiento personalizada';

  @override
  String get customPathDesc =>
      'Dónde se guardan los datos de la app. Mantén pulsado para restablecer';

  @override
  String get selectDirectory => 'Elegir carpeta';

  @override
  String get differentCacheManager => 'Caché de imágenes alternativa';

  @override
  String get differentCacheManagerDesc =>
      'Usa otro gestor de caché para las imágenes';

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
  String get backupAndRestore => 'Copia de seguridad y restauración';

  @override
  String get backupAndRestoreDesc => 'Guarda o carga tus preferencias';

  @override
  String get backup => 'Copia de seguridad';

  @override
  String get restore => 'Restaurar';

  @override
  String get loadExtensionsIcon => 'Cargar iconos de extensiones';

  @override
  String get autoUpdateRuntimes => 'Update extension runtimes automatically';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead.';

  @override
  String get loadExtensionsIconDesc =>
      'Muestra los iconos de las fuentes en las listas de extensiones';

  @override
  String get sectionStorage => 'Almacenamiento';

  @override
  String get sectionManagers => 'Gestores';

  @override
  String get sectionOptions => 'Opciones';

  @override
  String get backupTabBackup => 'Hacer copia';

  @override
  String get backupTabRestore => 'Restaurar';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$keys ajustes en $categories categorías';
  }

  @override
  String backupLastBackup(Object time) {
    return 'Última copia $time';
  }

  @override
  String get backupNever => 'Aún no hay copias';

  @override
  String get backupSelectAll => 'Seleccionar todo';

  @override
  String get backupClearAll => 'Borrar';

  @override
  String backupKeys(Object count) {
    return '$count ajustes';
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
  String get backupPassword => 'Contraseña (opcional)';

  @override
  String get backupPasswordHint => 'Déjalo vacío para usar la predeterminada';

  @override
  String get backupSensitive =>
      'Incluye tokens de inicio de sesión. Mantén este archivo en privado';

  @override
  String get backupCreate => 'Crear copia';

  @override
  String backupSaved(Object name) {
    return 'Copia guardada como $name';
  }

  @override
  String backupFailed(Object error) {
    return 'Falló la copia: $error';
  }

  @override
  String get backupPickFile => 'Elige un archivo de copia';

  @override
  String get backupPickFileDesc => 'Elige un archivo .json creado por Dartotsu';

  @override
  String get backupChooseAnother => 'Elegir otro archivo';

  @override
  String get backupCreatedAt => 'Creada';

  @override
  String get backupAppVersion => 'Versión de la app';

  @override
  String get backupDevice => 'Dispositivo';

  @override
  String get backupAccounts => 'Cuentas';

  @override
  String get backupSize => 'Tamaño';

  @override
  String get backupEncrypted => 'Protegido con contraseña';

  @override
  String get backupUnlock => 'Desbloquear';

  @override
  String get backupWrongPassword =>
      'No se pudo leer este archivo. Revisa la contraseña';

  @override
  String get backupRestoreSelected => 'Restaurar selección';

  @override
  String backupRestoreConfirm(Object count) {
    return '¿Restaurar $count ajustes? Los valores existentes en estas categorías se sobrescribirán.';
  }

  @override
  String get backupRestored => 'Restaurado. Reinicia la app para aplicar todo';

  @override
  String backupRestoreFailed(Object error) {
    return 'Falló la restauración: $error';
  }

  @override
  String get backupSelectOne => 'Elige al menos una categoría';

  @override
  String get backupCatTheme => 'Apariencia';

  @override
  String get backupCatThemeDesc =>
      'Tema, colores, cristal, fuentes y estilo de tarjetas';

  @override
  String get backupCatCommon => 'General';

  @override
  String get backupCatCommonDesc =>
      'Idioma, almacenamiento, red y opciones de extensiones';

  @override
  String get backupCatPlayer => 'Reproductor';

  @override
  String get backupCatPlayerDesc => 'Preferencias del reproductor';

  @override
  String get backupCatReader => 'Lector';

  @override
  String get backupCatReaderDesc => 'Preferencias del lector';

  @override
  String get backupCatProtected => 'Cuentas';

  @override
  String get backupCatProtectedDesc =>
      'Tokens de inicio de sesión y datos de acceso';

  @override
  String get backupCatOther => 'Servicios y feeds';

  @override
  String get backupCatOtherDesc =>
      'Diseños de feeds, listas y opciones de servicios';

  @override
  String get logFile => 'Archivo de registro';

  @override
  String get logFileDesc =>
      'Comparte el registro de la app, o copia su ruta en Linux';

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
  String get logFileCopied => 'Ruta del registro copiada';

  @override
  String get donateSheetTitle => '¿Te gusta Dartotsu?';

  @override
  String get donateSheetMessage =>
      'Dartotsu lo hace y lo mantiene una sola persona. Si te resulta útil, piensa en apoyar el desarrollo.';

  @override
  String get donateLater => 'Quizá luego';

  @override
  String get glassBackground => 'Fondo de cristal';

  @override
  String get glassBackgroundDesc =>
      'El banner de tu perfil, a menos que pongas un enlace de imagen';

  @override
  String get glassBackgroundHint =>
      'Enlace de imagen (déjalo vacío para usar tu banner)';

  @override
  String get followCover => 'Seguir la portada';

  @override
  String get followCoverDesc =>
      'Los colores siguen al fondo, y a la portada en las páginas de detalle';

  @override
  String get followCoverMediaOnly => 'Only for media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Only follow the cover on media pages, everywhere else keeps the normal colors';

  @override
  String get cardStyle => 'Estilo de tarjeta';

  @override
  String get cardStyleDesc =>
      'Posición del título, tamaño, progreso e insignias';

  @override
  String get customFont => 'Fuente';

  @override
  String get customFontDesc =>
      'Predeterminada, un archivo de tu dispositivo o Google Fonts';

  @override
  String get customFontError => 'No se pudo cargar ese archivo de fuente';

  @override
  String get googleFontError => 'No se pudo descargar esa fuente';

  @override
  String get yourFonts => 'Tus fuentes';

  @override
  String get addFontFile => 'Añadir archivo de fuente…';

  @override
  String get browseGoogleFonts => 'Explorar Google Fonts…';

  @override
  String get searchGoogleFonts => 'Buscar en Google Fonts';

  @override
  String get defaultFont => 'Predeterminada';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'Color dinámico del sistema';

  @override
  String get jsonTheme => 'Archivo de tema personalizado';

  @override
  String get jsonThemeDesc =>
      'Colores en vivo desde ~/.config/dartotsu/theme.json (un script propio o tus propios cambios)';

  @override
  String get themeMode => 'Modo del tema';

  @override
  String get mode => 'Modo';

  @override
  String get trackingService => 'Servicio de seguimiento';

  @override
  String get signOut => 'Cerrar sesión';

  @override
  String get signIn => 'Iniciar sesión';

  @override
  String get notSignedIn => 'Sin sesión iniciada';

  @override
  String signOutOf(String service) {
    return '¿Cerrar sesión en $service?';
  }

  @override
  String get checkForUpdates => 'Buscar actualizaciones';

  @override
  String get checkForUpdatesDesc =>
      'Avisar cuando haya una nueva versión en GitHub';

  @override
  String get updateChannel => 'Canal de actualizaciones';

  @override
  String get channel => 'Canal';

  @override
  String get stable => 'Estable';

  @override
  String get preRelease => 'Preliminar';

  @override
  String get alpha => 'Alfa';

  @override
  String get checkNow => 'Comprobar ahora';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'Predeterminado';

  @override
  String currentlyUsing(String value) {
    return 'Ahora: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'Predeterminado (Cloudflare)';

  @override
  String get proxy => 'Proxy';

  @override
  String get proxyProtocol => 'Tipo';

  @override
  String get proxyHost => 'Host';

  @override
  String get proxyPort => 'Puerto';

  @override
  String get proxyUsername => 'Nombre de usuario';

  @override
  String get proxyPassword => 'Contraseña';

  @override
  String get optional => 'Opcional';

  @override
  String get clearCookies => 'Borrar cookies';

  @override
  String get clearCookiesDesc => 'Elimina todas las cookies guardadas';

  @override
  String notImplementedArea(String area) {
    return '$area — próximamente';
  }

  @override
  String notImplementedService(String service) {
    return '$service aún no admite esto.';
  }

  @override
  String get couldNotLoadResults => 'No se pudieron cargar los resultados';

  @override
  String get updateCheckFailed => 'No se pudo buscar actualizaciones';

  @override
  String get highRefreshRate => 'Frecuencia de actualización alta';

  @override
  String get highRefreshRateDesc =>
      'Usa la frecuencia de actualización más alta que admita tu pantalla';

  @override
  String get imageSave => 'Guardar imagen';

  @override
  String imageSavedTo(String path) {
    return 'Guardada en $path';
  }

  @override
  String get imageActionFailed => 'No se pudo descargar la imagen';

  @override
  String get imageTitleCover => 'Portada';

  @override
  String get imageTitlePage => 'Page';

  @override
  String get imageTitleBanner => 'Banner';

  @override
  String get imageTitleAvatar => 'Foto de perfil';

  @override
  String get verifyTls => 'Verificar certificados';

  @override
  String get verifyTlsDesc =>
      'Rechaza servidores con certificados HTTPS no válidos. Desactívalo solo para una fuente que use uno autofirmado';

  @override
  String get clearCookiesConfirm =>
      '¿Eliminar todas las cookies guardadas? Puede que se cierre tu sesión en algunas fuentes.';

  @override
  String get version => 'Versión';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'Código, incidencias y versiones';

  @override
  String get discordDesc => 'Comunidad y soporte';

  @override
  String get supportDeveloper => 'Support the developer';

  @override
  String get buyMeCoffee => 'Buy me a coffee';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID copied';

  @override
  String get donateDesc => 'Apoya el desarrollo';

  @override
  String get contributors => 'Colaboradores';

  @override
  String get contributorsDesc => 'La gente que hizo Dartotsu';

  @override
  String get contributorsLoadFailed =>
      'No se pudieron cargar los colaboradores';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Proyectos creados sobre Dartotsu';

  @override
  String get forksEmpty => 'No se encontraron forks';

  @override
  String get sectionColors => 'Colores';

  @override
  String get sectionDisplay => 'Pantalla';

  @override
  String get sectionStyle => 'Estilo';

  @override
  String get sectionCommunity => 'Comunidad';

  @override
  String get sectionAppInfo => 'Info de la app';

  @override
  String get sectionRequests => 'Solicitudes';

  @override
  String get sectionDnsProxy => 'DNS y proxy';

  @override
  String get onboardingBack => 'Atrás';

  @override
  String get onboardingNext => 'Siguiente';

  @override
  String get onboardingSkip => 'Omitir';

  @override
  String get onboardingPaletteTitle => 'Hazla tuya';

  @override
  String get onboardingPaletteBody =>
      'Elige una paleta. Todos los acentos, de las tarjetas al reproductor, la siguen.';

  @override
  String get themeModeAuto => 'Auto';

  @override
  String get themeModeLight => 'Claro';

  @override
  String get themeModeDark => 'Oscuro';

  @override
  String get onboardingSyncTitle => 'Sincroniza tu biblioteca';

  @override
  String get onboardingSyncBody =>
      'Inicia sesión con AniList para traerte tus listas, tu progreso y tus puntuaciones. O sáltatelo y explora como invitado.';

  @override
  String get onboardingOpenLinks =>
      'Abrir enlaces de AniList y de repositorios en Dartotsu';

  @override
  String get onboardingPermsTitle => 'Permisos';

  @override
  String get onboardingPermsBody =>
      'Permítelos ahora para que las descargas, las actualizaciones y los avisos funcionen sin interrupciones. Puedes cambiarlos luego en los ajustes del sistema.';

  @override
  String get permNotifications => 'Notificaciones';

  @override
  String get permNotificationsDesc =>
      'Progreso de descargas, episodios nuevos y respuestas';

  @override
  String get permStorage => 'Acceso a todos los archivos';

  @override
  String get permStorageDesc =>
      'Guarda las descargas en la carpeta pública de Dartotsu';

  @override
  String get permInstall => 'Instalar actualizaciones';

  @override
  String get permInstallDesc =>
      'Deja que Dartotsu instale sus propias actualizaciones';

  @override
  String get permBattery => 'Batería sin restricciones';

  @override
  String get permBatteryDesc => 'Mantén las descargas largas en segundo plano';

  @override
  String get permGrant => 'Permitir';

  @override
  String get linkOpenInApp => 'Abrir enlaces en Dartotsu';

  @override
  String get linkOpenInAppDesc =>
      'Deja que los enlaces de AniList y de repositorios abran la app';

  @override
  String get reviewsTitle => 'Reseñas';

  @override
  String get reviewsEmpty => 'Aún no hay reseñas';

  @override
  String get reviewsFailed => 'No se pudieron cargar las reseñas';

  @override
  String get reviewHelpfulQuestion => '¿Te resultó útil esta reseña?';

  @override
  String get reviewVoteFailed => 'No se pudo guardar tu voto';

  @override
  String reviewHelpful(int n, int total) {
    return '$n de $total la encontraron útil';
  }

  @override
  String get calendarTitle => 'Calendario de emisión';

  @override
  String get calendarToday => 'Hoy';

  @override
  String get calendarEmpty => 'No se emite nada este día';

  @override
  String get calendarFailed => 'No se pudo cargar el calendario';

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
    return 'Episodio $n';
  }

  @override
  String get shareAnalytics => 'Compartir datos de uso anónimos';

  @override
  String get shareAnalyticsDesc =>
      'Cifras de usuarios anónimas e informes de errores. Sin cuenta ni datos personales';

  @override
  String get linkOpenAnilist => 'Abrir enlaces de AniList en Dartotsu';

  @override
  String get linkOpenAnilistDesc =>
      'Activa el manejo de enlaces para que los enlaces de anilist.co abran la app';

  @override
  String get linkSettingsFailed =>
      'No se pudieron abrir los ajustes del sistema';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'Muestra en tu perfil de Discord lo que estás haciendo. Necesita tu token de Discord.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'Muestra en tu perfil de Discord lo que estás haciendo. Necesita la app de escritorio de Discord abierta.';

  @override
  String get discordBrowsing => 'Mostrar actividad de navegación';

  @override
  String get discordBrowsingDesc =>
      'Muestra también la pestaña, página o perfil que estás mirando, no solo lo que ves o lees.';

  @override
  String get discordLookHeader => 'Aspecto de la presencia';

  @override
  String get discordActivityType => 'Tipo de actividad';

  @override
  String get discordActivityTypeDesc =>
      'Cómo lo redacta Discord: \"Viendo …\" o \"Jugando a …\". Auto usa Viendo para anime y Jugando para todo lo demás.';

  @override
  String get discordWatching => 'Viendo';

  @override
  String get discordPlaying => 'Jugando';

  @override
  String get discordCovers => 'Mostrar portadas';

  @override
  String get discordCoversDesc =>
      'Portada y el icono de Dartotsu en la tarjeta.';

  @override
  String get discordTimer => 'Mostrar temporizador';

  @override
  String get discordTimerDesc =>
      'Tiempo transcurrido o restante bajo el título.';

  @override
  String get discordButtons => 'Mostrar botones';

  @override
  String get discordButtonsDesc =>
      'Botones \"Ver anime / manga\" y \"Abrir Dartotsu\".';

  @override
  String get discordHideTitles => 'Ocultar títulos';

  @override
  String get discordHideTitlesDesc =>
      'Sustituye los nombres de anime y manga (y su portada y enlace) por \"Algo privado\".';

  @override
  String get discordConnectionHeader => 'Conexión';

  @override
  String get listSearchHint => 'Buscar en esta lista';

  @override
  String get listSort => 'Ordenar';

  @override
  String get listFilter => 'Filtrar';

  @override
  String get listRandom => 'Título aleatorio';

  @override
  String get listReverse => 'Invertir orden';

  @override
  String get listSortDefault => 'Orden de la lista';

  @override
  String get listSortScore => 'Tu puntuación';

  @override
  String get listSortTitle => 'Título';

  @override
  String get listSortUpdated => 'Última actualización';

  @override
  String get listSortProgress => 'Progreso';

  @override
  String get listSortReleased => 'Fecha de estreno';

  @override
  String get listSortAverage => 'Puntuación media';

  @override
  String get listFilterFormat => 'Formato';

  @override
  String get listFilterStatus => 'Estado';

  @override
  String get listFilterGenres => 'Géneros';

  @override
  String get listFilterClear => 'Quitar filtros';

  @override
  String get listNoMatches => 'Nada de esta lista coincide';

  @override
  String get discordLogin => 'Iniciar sesión en Discord';

  @override
  String get discordToken => 'Token de Discord';

  @override
  String get discordTokenSaved =>
      'Guardado. Toca para reemplazarlo, mantén pulsado para quitarlo.';

  @override
  String get discordTokenNotSet => 'Sin configurar. Toca para añadirlo.';

  @override
  String get discordTokenSavedSnack => 'Token de Discord guardado';

  @override
  String get discordTokenRemovedSnack => 'Token de Discord eliminado';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn =>
      'Activado · toca para cambiar el aspecto';

  @override
  String get discordRichPresenceRowOff =>
      'Muestra en tu perfil de Discord lo que estás haciendo';

  @override
  String get loginCancelled => 'Inicio de sesión cancelado';

  @override
  String get invalidToken => 'Token no válido';

  @override
  String loginFailed(String error) {
    return 'Falló el inicio de sesión: $error';
  }

  @override
  String get malLoginFailed => 'Falló el inicio de sesión en MyAnimeList';

  @override
  String get kitsuLoginFailed =>
      'Falló el inicio de sesión en Kitsu. Revisa tu correo y tu contraseña.';

  @override
  String get kitsuLoginTitle => 'Iniciar sesión en Kitsu';

  @override
  String get emailOrUsername => 'Correo o nombre de usuario';

  @override
  String get password => 'Contraseña';

  @override
  String get kitsuProfile => 'Perfil de Kitsu';

  @override
  String get mangaBakaLoginFailed => 'Falló el inicio de sesión en MangaBaka';

  @override
  String get mangaBakaProfile => 'Perfil de MangaBaka';

  @override
  String get refreshFromMangaBaka => 'Actualizar desde MangaBaka';

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
  String get artistsLabel => 'Artistas';

  @override
  String get authorsLabel => 'Autores';

  @override
  String get publishersLabel => 'Editoriales';

  @override
  String get licensedLabel => 'Licenciado';

  @override
  String get contentRatingLabel => 'Clasificación por edades';

  @override
  String get yesLabel => 'Sí';

  @override
  String get noLabel => 'No';

  @override
  String get ratingSteps => 'Pasos de valoración';

  @override
  String get hideNsfw => 'Ocultar NSFW';

  @override
  String get hideNsfwDesc =>
      'Mantén los títulos para adultos fuera de los feeds y la búsqueda, y ve tus propias entradas para adultos en Medios ocultos.';

  @override
  String get kitsuAccountOptions => 'Opciones de la cuenta de Kitsu';

  @override
  String get mangaBakaAccountOptions => 'Opciones de tu cuenta de MangaBaka';

  @override
  String get couldNotUpdateKitsuSettings =>
      'No se pudieron actualizar tus ajustes de Kitsu';

  @override
  String get titleCanonical => 'Canónico';

  @override
  String get titleRomanized => 'Romanizado';

  @override
  String get titleLocalized => 'Localizado';

  @override
  String get ratingSystem => 'Sistema de valoración';

  @override
  String get ratingSimple => 'Simple (3 caritas)';

  @override
  String get ratingRegular => 'Normal (5 estrellas)';

  @override
  String get ratingAdvanced => 'Avanzado (10 puntos)';

  @override
  String get contentFilter => 'Filtro de contenido';

  @override
  String get contentSfw => 'Solo apto para el trabajo';

  @override
  String get contentSometimes => 'Contenido adulto en las búsquedas';

  @override
  String get contentEverywhere => 'Contenido adulto en todas partes';

  @override
  String get shareToGlobal => 'Compartir en el feed global';

  @override
  String get shareToGlobalDesc =>
      'Deja que tu actividad aparezca en el feed global de Kitsu.';

  @override
  String get memberSince => 'Miembro desde';

  @override
  String get location => 'Ubicación';

  @override
  String get accountType => 'Tipo de cuenta';

  @override
  String get accountSupporter => 'Colaborador';

  @override
  String get accountFree => 'Gratis';

  @override
  String get accountDetails => 'Detalles de la cuenta';

  @override
  String get refreshFromKitsu => 'Actualizar desde Kitsu';

  @override
  String get simklReadOnly => 'Simkl dio acceso de solo lectura';

  @override
  String get incognitoEditsBlocked =>
      'Incógnito: las ediciones de listas están bloqueadas';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => 'Incógnito: no se guardó el progreso';

  @override
  String progressSet(int progress) {
    return 'Progreso fijado en $progress';
  }

  @override
  String removedFromList(String title) {
    return 'Se quitó $title de tu lista';
  }

  @override
  String get following => 'Siguiendo';

  @override
  String get homeSections => 'Secciones de inicio';

  @override
  String get homeSectionsHint =>
      'Arrastra para reordenar. Las secciones ocultas nunca se cargan.';

  @override
  String get customListDeleteFailed =>
      'No se pudo borrar la lista personalizada';

  @override
  String get customListsSaveFailed =>
      'No se pudieron guardar las listas personalizadas';

  @override
  String get customListsSaved => 'Listas personalizadas guardadas';

  @override
  String get listName => 'Nombre de la lista';

  @override
  String get addList => 'Añadir lista';

  @override
  String voiceActorsIn(String name) {
    return 'Actores de voz · $name';
  }

  @override
  String get animeAppearances => 'Apariciones en anime';

  @override
  String get mangaAppearances => 'Apariciones en manga';

  @override
  String get voicedCharacters => 'Personajes doblados';

  @override
  String get animeCredits => 'Créditos en anime';

  @override
  String get mangaCredits => 'Créditos en manga';

  @override
  String get mainProductions => 'Producciones principales';

  @override
  String get otherWorks => 'Otras obras';

  @override
  String get prequelSequel => 'Precuela y secuela';

  @override
  String get previousSeason => 'Temporada anterior';

  @override
  String get thisSeason => 'Esta temporada';

  @override
  String get nextSeason => 'Próxima temporada';

  @override
  String get voiceRoles => 'Papeles de voz';

  @override
  String get staffPositions => 'Puestos del equipo';

  @override
  String get mangaWorks => 'Obras de manga';

  @override
  String get malProfile => 'Perfil de MyAnimeList';

  @override
  String get refreshFromMal => 'Actualizar desde MyAnimeList';

  @override
  String get repullProfileCounts => 'Vuelve a cargar tu perfil y tus cifras';

  @override
  String get refreshed => 'Actualizado';

  @override
  String get simklProfile => 'Perfil de Simkl';

  @override
  String get refreshFromSimkl => 'Actualizar desde Simkl';

  @override
  String get repullProfileLibrary =>
      'Vuelve a cargar tu perfil y tu biblioteca';

  @override
  String get simklSignInToSearch => 'Inicia sesión en Simkl para buscar';

  @override
  String get dropRate => 'Tasa de abandono';

  @override
  String get simklAttribution => 'Datos e imágenes de Simkl. Ver en Simkl';

  @override
  String get onHold => 'En pausa';

  @override
  String get scoredBy => 'Puntuado por';

  @override
  String get planToWatch => 'Pendiente de ver';

  @override
  String get planToRead => 'Pendiente de leer';

  @override
  String get timesRewatched => 'Veces revisto';

  @override
  String get timesReread => 'Veces releído';

  @override
  String get comments => 'Comentarios';

  @override
  String get moviesAndSeries => 'Películas y series';

  @override
  String get trackingOnly => 'Solo seguimiento';

  @override
  String get signedIn => 'Sesión iniciada';

  @override
  String get searchLanguage => 'Idioma de búsqueda';

  @override
  String get savedToList => 'Guardado en tu lista';

  @override
  String get removedFromYourList => 'Quitado de tu lista';

  @override
  String get retry => 'Reintentar';

  @override
  String get synopsis => 'Sinopsis';

  @override
  String get details => 'Detalles';

  @override
  String get addToList => 'Añadir a la lista';

  @override
  String get trailer => 'Tráiler';

  @override
  String get titleCopied => 'Título copiado';

  @override
  String get linkCopied => 'Enlace copiado';

  @override
  String get watchTrailer => 'Ver tráiler';

  @override
  String get copyTitle => 'Copiar título';

  @override
  String get copyLink => 'Copiar enlace';

  @override
  String get openInBrowser => 'Abrir en el navegador';

  @override
  String viewOnSource(String source) {
    return 'Ver en $source';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'El episodio $ep sale en $time';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'Próximo episodio en $time';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'Capítulo $chapter previsto en unos $time';
  }

  @override
  String get logPathCopied =>
      'Ruta del archivo de registro copiada al portapapeles';

  @override
  String get animeSource => 'Fuente de anime';

  @override
  String get mangaSource => 'Fuente de manga';

  @override
  String get popular => 'Populares';

  @override
  String get latest => 'Recientes';

  @override
  String get saved => 'Guardados';

  @override
  String get nothingMatched => 'No coincide nada';

  @override
  String get nothingSavedFromSource =>
      'Aún no hay nada guardado de esta fuente';

  @override
  String get sourceReturnedNothing => 'Esta fuente no devolvió nada';

  @override
  String get checkConnectionOrSource =>
      'Revisa tu conexión o prueba otra fuente.';

  @override
  String get tryDifferentSearch => 'Prueba con otro término de búsqueda.';

  @override
  String get savedTitlesAppearHere =>
      'Los títulos que añadas a tu lista aparecen aquí.';

  @override
  String get tryOtherFeed => 'Prueba con el otro feed o con la búsqueda.';

  @override
  String searchSource(String source) {
    return 'Buscar en $source';
  }

  @override
  String get animeExtensions => 'Extensiones de anime';

  @override
  String get mangaExtensions => 'Extensiones de manga';

  @override
  String get nothingHereYet => 'Aún no hay nada aquí';

  @override
  String get savedOnDeviceUntilLogin =>
      'Todo lo de abajo se guarda en este dispositivo hasta que hagas otra cosa.';

  @override
  String get yourProfile => 'Tu perfil';

  @override
  String get activity => 'Actividad';

  @override
  String get extensions => 'Extensiones';

  @override
  String get logOut => 'Cerrar sesión';

  @override
  String get logIn => 'Iniciar sesión';

  @override
  String get logOutConfirm => '¿Seguro que quieres cerrar sesión?';

  @override
  String get incognitoMode => 'Modo incógnito';

  @override
  String get alsoBlockListEdits => 'Bloquear también las ediciones de listas';

  @override
  String get offlineMode => 'Modo sin conexión';

  @override
  String get switchService => 'Cambiar de servicio';

  @override
  String logOutOf(String name) {
    return 'Cerrar sesión en $name';
  }

  @override
  String get loggedIn => 'Sesión iniciada';

  @override
  String get notifications => 'Notificaciones';

  @override
  String get nothingNew => 'Nada nuevo';

  @override
  String get thisWeek => 'Esta semana';

  @override
  String get listOnly => 'Solo la lista';

  @override
  String get filter => 'Filtrar';

  @override
  String get searchResults => 'Resultados de búsqueda';

  @override
  String get recentSearches => 'Búsquedas recientes';

  @override
  String get searchOrSetFilter => 'Busca o pon un filtro';

  @override
  String get filters => 'Filtros';

  @override
  String get showLess => 'Ver menos';

  @override
  String get showAll => 'Ver todo';

  @override
  String get apply => 'Aplicar';

  @override
  String get preview => 'Vista previa';

  @override
  String get preset => 'Preajuste';

  @override
  String get cardNormal => 'Normal';

  @override
  String get cardOnCard => 'Sobre la tarjeta';

  @override
  String get cardInCard => 'Dentro de la tarjeta';

  @override
  String get size => 'Tamaño';

  @override
  String get cardWidth => 'Ancho de tarjeta';

  @override
  String get compact => 'Compacto';

  @override
  String get coverAndTitleOnly => 'Solo portada y título';

  @override
  String get titleLines => 'Líneas de título';

  @override
  String get shape => 'Forma';

  @override
  String get posterShape => 'Forma del póster';

  @override
  String get cornerRadius => 'Radio de las esquinas';

  @override
  String get off => 'Desactivado';

  @override
  String get topLeft => 'Arriba a la izquierda';

  @override
  String get topRight => 'Arriba a la derecha';

  @override
  String get bottomLeft => 'Abajo a la izquierda';

  @override
  String get bottomRight => 'Abajo a la derecha';

  @override
  String get overlays => 'Superposiciones';

  @override
  String get progressCount => 'Progreso / cantidad';

  @override
  String get pill => 'Píldora';

  @override
  String get bar => 'Barra';

  @override
  String get outside => 'Fuera';

  @override
  String get scoreBadge => 'Insignia de puntuación';

  @override
  String get airingDot => 'Punto de emisión';

  @override
  String get updateAvailable => 'Actualización disponible';

  @override
  String get notInstalled => 'No instalado';

  @override
  String get done => 'Listo';

  @override
  String get searchOrEnterUrl => 'Busca o escribe una URL';

  @override
  String get refresh => 'Actualizar';

  @override
  String get share => 'Compartir';

  @override
  String get characters => 'Personajes';

  @override
  String get staff => 'Equipo';

  @override
  String get readMore => 'Leer más';

  @override
  String get couldNotLoadList => 'No se pudo cargar la lista';

  @override
  String get logInToFavourite => 'Inicia sesión para añadir favoritos';

  @override
  String get alsoKnownAs => 'También conocido como';

  @override
  String get hideSpoilerNames => 'Ocultar nombres con spoilers';

  @override
  String get showSpoilerNames => 'Mostrar nombres con spoilers';

  @override
  String get favourited => 'En favoritos';

  @override
  String get favourite => 'Favorito';

  @override
  String get couldNotOpenTitle => 'No se pudo abrir este título';

  @override
  String get nobodyHereYet => 'Aún no hay nadie';

  @override
  String get noMatches => 'Sin coincidencias';

  @override
  String get gridView => 'Vista de cuadrícula';

  @override
  String get fullWidth => 'Ancho completo';

  @override
  String get userNotFound => 'Usuario no encontrado';

  @override
  String get couldNotUpdateFollow => 'No se pudo actualizar el seguimiento';

  @override
  String followedUser(String name) {
    return 'Ahora sigues a $name';
  }

  @override
  String unfollowedUser(String name) {
    return 'Dejaste de seguir a $name';
  }

  @override
  String get messages => 'Mensajes';

  @override
  String get logInToSeeMessages => 'Inicia sesión para ver tus mensajes';

  @override
  String get editActivity => 'Editar actividad';

  @override
  String get newActivity => 'Nueva actividad';

  @override
  String get editMessage => 'Editar mensaje';

  @override
  String get writeMessage => 'Escribe un mensaje';

  @override
  String get editReply => 'Editar respuesta';

  @override
  String get posted => 'Publicado';

  @override
  String get couldNotPost => 'No se pudo publicar';

  @override
  String get nothingToPreview => 'Nada que previsualizar';

  @override
  String get writeSomethingHint =>
      'Escribe algo… Aquí funciona el markdown de AniList';

  @override
  String get privateMessage => 'Mensaje privado';

  @override
  String get post => 'Publicar';

  @override
  String get nothingHere => 'Nada por aquí';

  @override
  String get noAnimeProgress => 'Sin progreso de anime';

  @override
  String get noMangaProgress => 'Sin progreso de manga';

  @override
  String get noMessages => 'Sin mensajes';

  @override
  String get writeMessageHint => 'Escribe un mensaje…';

  @override
  String get shareSomethingHint => 'Comparte algo…';

  @override
  String get all => 'Todo';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Manga';

  @override
  String get count => 'Cantidad';

  @override
  String get hoursWatched => 'Horas vistas';

  @override
  String get chaptersRead => 'Capítulos leídos';

  @override
  String get meanScore => 'Puntuación media';

  @override
  String get noStatsYet => 'Aún no hay estadísticas';

  @override
  String get totalEntries => 'Entradas totales';

  @override
  String get episodesWatched => 'Episodios vistos';

  @override
  String get daysWatched => 'Días viendo';

  @override
  String get volumesRead => 'Tomos leídos';

  @override
  String get standardDeviation => 'Desviación estándar';

  @override
  String get showMore => 'Ver más';

  @override
  String get followsYou => 'Te sigue';

  @override
  String get nobodyYet => 'Nadie todavía';

  @override
  String get logInToLike => 'Inicia sesión para dar me gusta';

  @override
  String get failedToLikeActivity => 'No se pudo dar me gusta a la actividad';

  @override
  String get deleteActivityConfirm => '¿Eliminar actividad?';

  @override
  String get deletedActivity => 'Actividad eliminada';

  @override
  String get failedToDeleteActivity => 'No se pudo eliminar la actividad';

  @override
  String get subscribed => 'Suscrito';

  @override
  String get unsubscribed => 'Suscripción cancelada';

  @override
  String get failedToUpdateSubscription =>
      'No se pudo actualizar la suscripción';

  @override
  String get edit => 'Editar';

  @override
  String get delete => 'Eliminar';

  @override
  String get likedBy => 'Le gusta a';

  @override
  String get follow => 'Seguir';

  @override
  String get nameCopied => 'Nombre copiado';

  @override
  String get followsEachOther => 'Os seguís mutuamente';

  @override
  String get unfollow => 'Dejar de seguir';

  @override
  String get userIdCopied => 'ID de usuario copiado';

  @override
  String get shareProfile => 'Compartir perfil';

  @override
  String get copyUserId => 'Copiar ID de usuario';

  @override
  String get failedToDelete => 'No se pudo eliminar';

  @override
  String get failedToLike => 'No se pudo dar me gusta';

  @override
  String get replies => 'Respuestas';

  @override
  String get reply => 'Responder';

  @override
  String get noRepliesYet => 'Aún no hay respuestas';

  @override
  String get favouriteAnime => 'Anime favoritos';

  @override
  String get favouriteManga => 'Manga favoritos';

  @override
  String get favouriteCharacters => 'Personajes favoritos';

  @override
  String get favouriteStaff => 'Equipo favorito';

  @override
  String get favouriteStudios => 'Estudios favoritos';

  @override
  String get noFavouritesYet => 'Aún no hay favoritos';

  @override
  String get yourStory => 'Tu historia';

  @override
  String get copiedToClipboard => 'Copiado al portapapeles';

  @override
  String get justNow => 'Justo ahora';

  @override
  String get openImage => 'Abrir imagen';

  @override
  String get hideSpoiler => 'Ocultar spoiler';

  @override
  String get showSpoiler => 'Mostrar spoiler';

  @override
  String get status => 'Estado';

  @override
  String get score => 'Puntuación';

  @override
  String get started => 'Empezado';

  @override
  String get completed => 'Completado';

  @override
  String get private => 'Privado';

  @override
  String get hideFromStatusLists => 'Ocultar de las listas de estado';

  @override
  String get totalRepeats => 'Repeticiones totales';

  @override
  String get other => 'Otro';

  @override
  String get customLists => 'Listas personalizadas';

  @override
  String get activeDays => 'Días activos';

  @override
  String get longestStreak => 'Racha más larga';

  @override
  String get currentStreak => 'Racha actual';

  @override
  String get tapOrHoverDay => 'Toca o pasa el cursor sobre un día';

  @override
  String get less => 'Menos';

  @override
  String get more => 'Más';

  @override
  String epIn(int ep, String time) {
    return 'Ep. $ep en $time';
  }

  @override
  String get sectionLoading => 'Cargando';

  @override
  String get querySize => 'Tamaño de consulta';

  @override
  String get querySizeDesc =>
      'Una consulta grande carga todas las filas (y un perfil entero) en una sola solicitud. Las consultas divididas envían una solicitud pequeña por fila o parte del perfil: cada una es rápida y las partes van apareciendo según llegan.';

  @override
  String get oneBig => 'Una grande';

  @override
  String get split => 'Dividida';

  @override
  String get sectionSocial => 'Social';

  @override
  String get systemNotifications => 'Notificaciones del sistema';

  @override
  String get feedLayout => 'Diseño del feed';

  @override
  String sectionsShown(int shown, int total) {
    return '$shown de $total visibles — toca para elegir y reordenar';
  }

  @override
  String labelSections(String label) {
    return 'Secciones de $label';
  }

  @override
  String get accountOptions => 'Opciones de la cuenta';

  @override
  String get anilistAccountOptions => 'Opciones de la cuenta de AniList';

  @override
  String get sectionPrivacy => 'Privacidad';

  @override
  String get hidePrivateEntries => 'Ocultar entradas privadas';

  @override
  String get hidePrivateEntriesDesc =>
      'Mantén fuera del feed las entradas marcadas como privadas en AniList';

  @override
  String get anilistExcludeList => 'Excluir tu lista';

  @override
  String get anilistExcludeListDesc =>
      'No mostrar en las páginas de anime y manga lo que ya está en tu AniList';

  @override
  String get anilistProfile => 'Perfil de AniList';

  @override
  String get refreshFromAnilist => 'Actualizar desde AniList';

  @override
  String get couldNotUpdateAnilistSettings =>
      'No se pudieron actualizar los ajustes de AniList';

  @override
  String get sectionNames => 'Nombres';

  @override
  String get titleLanguage => 'Idioma de los títulos';

  @override
  String get titleLanguageDesc =>
      'Cómo se escriben los títulos en todas partes, p. ej. Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'Nombres del equipo y de personajes';

  @override
  String get sectionLists => 'Listas';

  @override
  String get scoreFormat => 'Formato de puntuación';

  @override
  String get sortListsBy => 'Ordenar listas por';

  @override
  String labelCustomLists(String label) {
    return 'Listas personalizadas de $label';
  }

  @override
  String customListsCount(int count) {
    return '$count listas — toca para añadir o quitar';
  }

  @override
  String get mergeActivities => 'Combinar actividades';

  @override
  String minutesCount(int count) {
    return '$count min';
  }

  @override
  String get timezone => 'Zona horaria';

  @override
  String get notSet => 'Sin configurar';

  @override
  String get airingNotifications => 'Notificaciones de emisión';

  @override
  String get airingNotificationsDesc =>
      'Recibe un aviso cuando se emita un episodio de una serie que sigues';

  @override
  String get displayAdultContent => 'Mostrar contenido para adultos';

  @override
  String get displayAdultContentDesc =>
      'Incluir títulos +18 al explorar, buscar y en los feeds';

  @override
  String get restrictMessages => 'Limitar mensajes a quienes sigues';

  @override
  String get restrictMessagesDesc =>
      'Solo la gente que sigues puede enviarte mensajes';

  @override
  String get sectionServices => 'Servicios';

  @override
  String get novel => 'Novela';

  @override
  String labelService(String label) {
    return 'Servicio de $label';
  }

  @override
  String nameSettings(String name) {
    return 'Ajustes de $name';
  }

  @override
  String extensionBridgeOptions(String name) {
    return 'Opciones del puente de extensiones de $name';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name no pudo iniciarse: $error';
  }

  @override
  String get importLists => 'Importar listas';

  @override
  String get importListsDesc =>
      'Desde copias de Aniyomi, Mihon / Tachiyomi o Kotatsu';

  @override
  String get exportLists => 'Exportar listas';

  @override
  String get exportListsDesc => 'A una copia de Aniyomi, Mihon o Kotatsu';

  @override
  String get sectionBrowse => 'Explorar';

  @override
  String get readingTab => 'Pestaña de lectura';

  @override
  String get readingTabDesc => 'Qué extensiones muestra la tercera pestaña';

  @override
  String get firstTab => 'First tab';

  @override
  String get firstTabDesc =>
      'Which extensions the first tab shows. Pick manga here and novel on the reading tab to drop anime from the bar';

  @override
  String get novelExtensions => 'Novel Extensions';

  @override
  String get defaultFeed => 'Feed predeterminado';

  @override
  String get defaultFeedDesc => 'Con qué lista se abre una fuente';

  @override
  String noServiceSupports(String type) {
    return 'Ningún servicio admite $type';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · cargando $loaded de $installed fuentes';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'Ningún servicio de extensiones admite $type aquí.';
  }

  @override
  String get loadDataFrom => 'Cargar datos desde';

  @override
  String noInstalledSourcesYet(String type) {
    return 'Aún no hay fuentes de $type instaladas.';
  }

  @override
  String extensionNotInstalled(String name) {
    return 'La extensión de $name no está instalada';
  }

  @override
  String get thisSource => 'esta fuente';

  @override
  String failedToAddRepository(String error) {
    return 'No se pudo añadir el repositorio: $error';
  }

  @override
  String installedType(String type) {
    return '$type instalados';
  }

  @override
  String availableType(String type) {
    return '$type disponibles';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'No hay extensiones de $type instaladas';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'No hay extensiones de $type disponibles';
  }

  @override
  String get nothingToShowYet => 'Aún no hay nada que mostrar';

  @override
  String get addTitlesHint =>
      'Añade algunos títulos a tu lista y aparecerán aquí.';

  @override
  String get couldntLoad => 'No se pudo cargar';

  @override
  String get progressStyleHint =>
      'La píldora y la barra se superponen al póster; \"fuera\" muestra la misma cifra como texto simple — elige una.';

  @override
  String get nixManagedUpdate =>
      'Esta versión la gestiona Nix — ejecuta \"nix flake update\" en tu flake y recompila en lugar de actualizar desde aquí';

  @override
  String autoUpdateFailed(String error) {
    return 'Falló la actualización automática ($error) — se abre la página de descarga';
  }

  @override
  String get unknownPreference => 'Preferencia desconocida';

  @override
  String unsupportedPreferenceType(String type) {
    return 'Tipo de preferencia no admitido: $type';
  }

  @override
  String get notYetReleased => 'Aún no estrenado';

  @override
  String get notStarted => 'Sin empezar';

  @override
  String get country => 'País';

  @override
  String get sort => 'Ordenar';

  @override
  String get chooseBackupDialog =>
      'Elige una copia de Aniyomi, Mihon o Kotatsu';

  @override
  String get importListsHint =>
      'Trae una biblioteca de Aniyomi, Mihon / Tachiyomi o Kotatsu. Se conservan los títulos, portadas, progreso y categorías.';

  @override
  String get chooseBackupFile => 'Elegir archivo de copia';

  @override
  String importAnimeCount(int count) {
    return 'Importar $count anime';
  }

  @override
  String importMangaCount(int count) {
    return 'Importar $count manga';
  }

  @override
  String get mergeWithExisting => 'Combinar con las listas existentes';

  @override
  String get mergeWithExistingDesc =>
      'Conserva lo que ya tienes; desactivado reemplaza los títulos que coincidan';

  @override
  String get chooseAnother => 'Elegir otro';

  @override
  String get import => 'Importar';

  @override
  String animeCount(int count) {
    return '$count anime';
  }

  @override
  String mangaCount(int count) {
    return '$count manga';
  }

  @override
  String get chooseSaveLocation => 'Elige dónde guardar la copia';

  @override
  String savedPath(String path) {
    return 'Guardado $path';
  }

  @override
  String exportFailed(String error) {
    return 'Falló la exportación: $error';
  }

  @override
  String get nothingInLocalLists => 'Aún no hay nada en tus listas locales.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'Exporta $anime anime y $manga manga de tus listas locales. Kotatsu solo admite manga.';
  }

  @override
  String get saveToFolder => 'Guardar en carpeta';

  @override
  String get formatAnimeManga => 'Anime y manga · .tachibk';

  @override
  String get formatMangaTachibk => 'Solo manga · .tachibk';

  @override
  String get formatMangaZip => 'Solo manga · .zip';

  @override
  String get genres => 'Géneros';

  @override
  String get relations => 'Relacionados';

  @override
  String get recommendations => 'Recomendaciones';

  @override
  String get openings => 'Openings';

  @override
  String get endings => 'Endings';

  @override
  String get background => 'Trasfondo';

  @override
  String get links => 'Enlaces';

  @override
  String get rank => 'Ranking';

  @override
  String get members => 'Miembros';

  @override
  String get favorites => 'Favoritos';

  @override
  String get episodes => 'Episodios';

  @override
  String get chapters => 'Capítulos';

  @override
  String get volumes => 'Tomos';

  @override
  String get format => 'Formato';

  @override
  String get source => 'Fuente';

  @override
  String get duration => 'Duración';

  @override
  String minutesPerEpisode(int minutes) {
    return '$minutes min por episodio';
  }

  @override
  String get rating => 'Clasificación';

  @override
  String get studio => 'Estudio';

  @override
  String get serialization => 'Serialización';

  @override
  String get season => 'Temporada';

  @override
  String get broadcast => 'Emisión';

  @override
  String get aired => 'Emitido';

  @override
  String get published => 'Publicado';

  @override
  String get popularity => 'Popularidad';

  @override
  String get community => 'Comunidad';

  @override
  String get watching => 'Viendo';

  @override
  String get reading => 'Leyendo';

  @override
  String get dropped => 'Abandonado';

  @override
  String get planned => 'Planeado';

  @override
  String get trailers => 'Tráileres';

  @override
  String get ratings => 'Valoraciones';

  @override
  String get originalTitle => 'Original';

  @override
  String get titleLabel => 'Título';

  @override
  String get votes => 'Votos';

  @override
  String get watchedStat => 'Visto';

  @override
  String get runtime => 'Duración';

  @override
  String get director => 'Director';

  @override
  String get network => 'Cadena';

  @override
  String get certification => 'Certificación';

  @override
  String get airs => 'Se emite';

  @override
  String get budget => 'Presupuesto';

  @override
  String get revenue => 'Recaudación';

  @override
  String get released => 'Estreno';

  @override
  String get tags => 'Etiquetas';

  @override
  String get author => 'Autor';

  @override
  String get born => 'Nacimiento';

  @override
  String get website => 'Sitio web';

  @override
  String get established => 'Fundación';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novels => 'Novelas';

  @override
  String get thisMonth => 'Este mes';

  @override
  String get movies => 'Películas';

  @override
  String get shows => 'Series';

  @override
  String get rewatching => 'Reviendo';

  @override
  String get rereading => 'Releyendo';

  @override
  String get watchedStatus => 'Visto';

  @override
  String get planning => 'Planeando';

  @override
  String get paused => 'En pausa';

  @override
  String get watch => 'Ver';

  @override
  String get read => 'Leer';

  @override
  String get finished => 'Finalizado';

  @override
  String get releasing => 'En emisión';

  @override
  String get cancelled => 'Cancelado';

  @override
  String get hiatus => 'Hiato';

  @override
  String get remove => 'Quitar';

  @override
  String syncToService(String service) {
    return 'Sincronizar con $service';
  }

  @override
  String syncedToService(String service) {
    return 'Sincronizado con $service';
  }

  @override
  String get latestReleases => 'Últimos estrenos';

  @override
  String get topRated => 'Mejor valorados';

  @override
  String localSection(String title) {
    return '$title · Local';
  }

  @override
  String get localEntryNote =>
      'Este título solo está en tu lista local de este dispositivo. Aquí la edición está desactivada porque podría chocar con la lista de tu cuenta; aun así puedes quitarlo.';

  @override
  String get cardPresetPoster => 'Póster';

  @override
  String get cardPresetCard => 'Tarjeta';

  @override
  String get cardPresetCozy => 'Acogedor';

  @override
  String get sortTopRated => 'Mejor valorados';

  @override
  String get sortMostPopular => 'Más populares';

  @override
  String get sortTrending => 'Tendencias';

  @override
  String get sortNewest => 'Más recientes';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'Más favoritos';

  @override
  String get anyCountry => 'Cualquier país';

  @override
  String get orderScore => 'Puntuación';

  @override
  String get orderTitle => 'Título';

  @override
  String get orderLastUpdated => 'Última actualización';

  @override
  String get orderLastAdded => 'Último añadido';

  @override
  String get never => 'Nunca';

  @override
  String get always => 'Siempre';

  @override
  String get scorePoint100 => '100 puntos';

  @override
  String get scorePoint10Decimal => '10 puntos con decimales';

  @override
  String get scorePoint10 => '10 puntos';

  @override
  String get scorePoint5 => '5 estrellas';

  @override
  String get scorePoint3 => '3 caritas';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count horas',
      one: '1 hora',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count días',
      one: '1 día',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count semanas',
      one: '1 semana',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'Continuar';

  @override
  String get resumeSourceMissing =>
      'Instala la fuente de este título para continuar';

  @override
  String get resumeRemove => 'Quitar de continuar';

  @override
  String resumeAt(String time) {
    return 'faltan $time';
  }

  @override
  String resumePage(int page, int total) {
    return 'Página $page de $total';
  }

  @override
  String get continueWatching => 'Seguir viendo';

  @override
  String get continueReading => 'Seguir leyendo';

  @override
  String get favouriteAnimeSection => 'Anime favoritos';

  @override
  String get favouriteMangaSection => 'Manga favoritos';

  @override
  String get plannedAnime => 'Anime planeados';

  @override
  String get plannedManga => 'Manga planeados';

  @override
  String get completedAnime => 'Anime completados';

  @override
  String get completedManga => 'Manga completados';

  @override
  String get hiddenMedia => 'Medios ocultos';

  @override
  String get recentUpdates => 'Actualizaciones recientes';

  @override
  String get trendingNow => 'Tendencias ahora';

  @override
  String get popularThisSeason => 'Populares esta temporada';

  @override
  String get trendingMovies => 'Películas en tendencia';

  @override
  String get topRatedSeries => 'Series mejor valoradas';

  @override
  String get mostFavouriteSeries => 'Series más favoritas';

  @override
  String get popularAnime => 'Anime populares';

  @override
  String get trendingManhwa => 'Manhwa en tendencia';

  @override
  String get trendingNovels => 'Novelas en tendencia';

  @override
  String get topRatedManga => 'Manga mejor valorados';

  @override
  String get mostFavouriteManga => 'Manga más favoritos';

  @override
  String get popularManga => 'Manga populares';

  @override
  String get topMovies => 'Mejores películas';

  @override
  String get topOna => 'Mejores ONA';

  @override
  String get topOva => 'Mejores OVA';

  @override
  String get mostPopular => 'Más populares';

  @override
  String get mostFavourite => 'Más favoritos';

  @override
  String get upcoming => 'Próximamente';

  @override
  String get topManga => 'Mejores manga';

  @override
  String get topManhwa => 'Mejores manhwa';

  @override
  String get topManhua => 'Mejores manhua';

  @override
  String get topNovels => 'Mejores novelas';

  @override
  String get topOneShots => 'Mejores one-shots';

  @override
  String get trendingMoviesToday => 'Películas en tendencia hoy';

  @override
  String get trendingShowsToday => 'Series en tendencia hoy';

  @override
  String get trendingMoviesWeek => 'Películas en tendencia esta semana';

  @override
  String get trendingShowsWeek => 'Series en tendencia esta semana';

  @override
  String get mostWatchedMoviesMonth => 'Películas más vistas este mes';

  @override
  String get mostWatchedShowsMonth => 'Series más vistas este mes';

  @override
  String get trendingThisWeek => 'Tendencias de esta semana';

  @override
  String get mostWatchedThisMonth => 'Lo más visto este mes';

  @override
  String get repoLinksAdded => '¡Enlaces de repositorio añadidos!';

  @override
  String repoLinkConfirm(String url) {
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust.';
  }

  @override
  String get errorGettingAnilistData => 'Error al obtener datos de AniList.';

  @override
  String get navInfo => 'INFO';

  @override
  String get navComments => 'COMENTARIOS';

  @override
  String get playerNotAvailable => 'El reproductor aún no está disponible';

  @override
  String deepLinkInitialError(String error) {
    return 'Error al obtener el deep link inicial: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'Error al abrir el enlace: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'No se puede abrir este enlace: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'Error al abrir el enlace: $error';
  }

  @override
  String get forReleasingTitles => 'para títulos en emisión ahora';

  @override
  String get progress => 'Progreso';

  @override
  String get notes => 'Notas';

  @override
  String serviceNotFound(String id) {
    return 'No se encontró el servicio \"$id\"';
  }

  @override
  String get glassEffectEnabled => 'Efecto cristal activado';

  @override
  String get glassEffectDisabled => 'Efecto cristal desactivado';

  @override
  String get materialYouEnabled => 'Material You activado';

  @override
  String get materialYouDisabled => 'Material You desactivado';

  @override
  String get darkModeEnabled => 'Modo oscuro activado';

  @override
  String get darkModeDisabled => 'Modo oscuro desactivado';

  @override
  String get animeList => 'Lista de anime';

  @override
  String get mangaList => 'Lista de manga';

  @override
  String ownerAnimeList(String owner) {
    return 'Lista de anime de $owner';
  }

  @override
  String ownerMangaList(String owner) {
    return 'Lista de manga de $owner';
  }

  @override
  String get loadingList => 'Cargando lista';

  @override
  String get earlier => 'Antes';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'hace $count días',
      one: 'hace 1 día',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'hace $count horas',
      one: 'hace 1 hora',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'hace $count minutos',
      one: 'hace 1 minuto',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return 'hace $count min';
  }

  @override
  String hoursAgoShort(int count) {
    return 'hace $count h';
  }

  @override
  String daysAgoShort(int count) {
    return 'hace $count d';
  }

  @override
  String weeksAgoShort(int count) {
    return 'hace $count sem';
  }

  @override
  String get couldntLoadSource => 'No se pudo cargar esta fuente';

  @override
  String get followers => 'Seguidores';

  @override
  String couldntLoadTitle(String title) {
    return 'No se pudo cargar $title';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'No se pudo cargar este perfil';

  @override
  String get profile => 'Perfil';

  @override
  String get feed => 'Feed';

  @override
  String get stats => 'Estadísticas';

  @override
  String get received => 'Recibidos';

  @override
  String get sent => 'Enviados';

  @override
  String get global => 'Global';

  @override
  String get couldntLoadPage => 'No se pudo cargar esta página';

  @override
  String get couldntLoadAllDetails =>
      'No se pudieron cargar todos los detalles';

  @override
  String get series => 'Series';

  @override
  String get studios => 'Estudios';

  @override
  String get users => 'Usuarios';

  @override
  String repositoriesTitle(String type) {
    return 'Repositorios de $type';
  }

  @override
  String get repositoryUrl => 'URL del repositorio';

  @override
  String get downloadingRepository => 'Descargando repositorio…';

  @override
  String get noRepositories => 'No hay repositorios añadidos';

  @override
  String repoExtensionsCount(String count) {
    return '$count extensiones';
  }

  @override
  String get searchExtensions => 'Buscar extensiones...';

  @override
  String deletePluginTitle(String name) {
    return '¿Eliminar $name?';
  }

  @override
  String get deletePluginMessage => '¿Seguro que quieres eliminar este plugin?';

  @override
  String pluginDeleted(String name) {
    return '$name eliminado';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name no está disponible en el repositorio configurado';
  }

  @override
  String get pluginFetchFailed => 'No se pudo obtener la info del plugin';

  @override
  String installPluginTitle(String name) {
    return 'Instalar $name';
  }

  @override
  String sizeLabel(String size) {
    return 'Tamaño: $size';
  }

  @override
  String get installedState => 'Instalado';

  @override
  String get errorLabel => 'Error:';

  @override
  String get stackTraceDetails => 'Detalles (Stack Trace)';

  @override
  String get shareLogFile => 'Compartir archivo de registro';

  @override
  String get copyLogs => 'Copiar registros';

  @override
  String noListToEdit(String service) {
    return '$service no tiene ninguna lista que editar';
  }

  @override
  String get couldNotReadFile => 'No se pudo leer ese archivo';

  @override
  String importedSummary(int anime, int manga) {
    return 'Importados $anime anime y $manga manga';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count ya estaban';
  }

  @override
  String get airingNow => 'En emisión ahora';

  @override
  String get topRatedMovies => 'Películas mejor valoradas';

  @override
  String get koreanDramas => 'Doramas coreanos';

  @override
  String get chineseDramas => 'Doramas chinos';

  @override
  String get japaneseDramas => 'Doramas japoneses';

  @override
  String get thaiDramas => 'Doramas tailandeses';

  @override
  String get turkishDramas => 'Series turcas';

  @override
  String get miniSeries => 'Miniseries';

  @override
  String get topRatedShows => 'Series mejor valoradas';

  @override
  String get recommendedSection => 'Recomendado';

  @override
  String get syncRow => 'Sincronizar listas';

  @override
  String get syncRowDesc =>
      'Replica la lista de un servicio en tus otras cuentas';

  @override
  String get syncTitle => 'Sincronizar';

  @override
  String get syncMainService => 'Servicio principal';

  @override
  String get syncMainServiceDesc =>
      'Su lista es la referencia; todos los demás servicios con sesión iniciada se actualizan para coincidir';

  @override
  String get syncAuto => 'Sincronización automática';

  @override
  String get syncAutoDesc =>
      'Obtiene y sincroniza en segundo plano al abrir la app y cada 30 minutos';

  @override
  String get syncAddMissing => 'Añadir entradas que faltan';

  @override
  String get syncAddMissingDesc =>
      'Añade también las entradas que el otro servicio aún no tiene';

  @override
  String get syncOnlyForward => 'Conservar el mayor progreso';

  @override
  String get syncOnlyForwardDesc =>
      'No bajes el progreso de un servicio que ya va más adelantado';

  @override
  String get syncFetch => 'Obtener';

  @override
  String get syncFetchAgain => 'Obtener de nuevo';

  @override
  String get syncAll => 'Sincronizar todo';

  @override
  String get syncStop => 'Detener';

  @override
  String get syncResume => 'Reanudar';

  @override
  String get syncNothingToSync =>
      'Este servicio no se puede sincronizar para este tipo';

  @override
  String get syncNoTargets => 'Inicia sesión en otro servicio para sincronizar';

  @override
  String get syncLoadingMap => 'Cargando equivalencia de IDs';

  @override
  String get syncComparing => 'Comparando listas';

  @override
  String get syncIntro =>
      'Elige un servicio principal y pulsa Obtener. Se consulta tu lista una vez en cada servicio y luego se compara con el principal.';

  @override
  String get syncStateSynced => 'Sincronizado';

  @override
  String get syncStateOutdated => 'Sin sincronizar';

  @override
  String get syncStateMissing => 'No está en la lista';

  @override
  String get syncStateUnmapped => 'Sin coincidencia';

  @override
  String syncPaused(String time) {
    return 'Esperando el límite de solicitudes, se reanuda en $time';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count solo en $name, sin tocar';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$done de $total';
  }

  @override
  String get syncNothingHere => 'Nada que mostrar';

  @override
  String syncLimits(int used, int max, String window) {
    return '$used de $max solicitudes usadas por $window';
  }

  @override
  String get syncMinute => 'minuto';

  @override
  String get syncDay => 'día';

  @override
  String get syncNotInList => 'Aún no está en la lista';

  @override
  String get syncCleared => 'Plan borrado';

  @override
  String get syncClear => 'Borrar';

  @override
  String get syncOptions => 'Opciones';

  @override
  String get syncShared => 'Comparte su entrada con otro elemento';

  @override
  String syncNotFound(String service) {
    return 'No se encontró en $service';
  }

  @override
  String syncService(String service, int count) {
    return 'Sincronizar $service ($count)';
  }

  @override
  String get syncOnEdit => 'Sincronizar cambios al instante';

  @override
  String get syncOnEditDesc =>
      'Envía cada actualización de progreso y edición de lista a tus otros servicios con sesión iniciada al momento';

  @override
  String syncPushed(String services) {
    return 'Sincronizado con $services';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited =>
      'Límite de solicitudes, inténtalo de nuevo en un momento';

  @override
  String get syncAhead => 'El que vaya más avanzado';

  @override
  String get syncAheadDesc =>
      'En ambos sentidos: en cada título gana la entrada más avanzada y se copia a todos tus otros servicios';

  @override
  String syncAheadFrom(String service) {
    return 'Desde $service';
  }

  @override
  String get syncConfirm => 'Revisar antes de sincronizar';

  @override
  String get syncConfirmDesc =>
      'Muestra qué cambiará Sincronizar todo y cuántas solicitudes necesita';

  @override
  String get syncPreviewTitle => 'Listo para sincronizar';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates actualizaciones, $adds por añadir';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'Unas $count solicitudes';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count IDs necesitan una búsqueda primero';
  }

  @override
  String get syncPreviewNothing => 'Nada que cambiar';

  @override
  String get syncStart => 'Empezar';

  @override
  String get syncRetry => 'Reintentar';

  @override
  String get syncSkip => 'Omitir este elemento';

  @override
  String get syncInclude => 'Incluir este elemento de nuevo';

  @override
  String get syncSkippedLabel => 'Omitido';

  @override
  String get syncChanges => 'Diferencias';

  @override
  String get syncChangeStatus => 'Estado';

  @override
  String get syncChangeProgress => 'Progreso';

  @override
  String get syncChangeScore => 'Puntuación';

  @override
  String get syncChangeDates => 'Fechas';

  @override
  String get syncChangeRepeat => 'Número de repeticiones';

  @override
  String get syncFailedReason => 'Por qué falló';

  @override
  String get syncSkippedHint =>
      'Los elementos omitidos no se tocan, ni siquiera tras obtener de nuevo';

  @override
  String get commentsRules => 'Normas de comentarios';

  @override
  String get commentsRulesBody =>
      'SI ROMPES UNA NORMA, TE VAS\n\n1. Nada de racismo, discriminación ni discurso de odio\n2. Nada de spam ni autopromoción\n3. Absolutamente nada de contenido NSFW\n4. Solo en inglés, sin excepciones\n5. Nada de suplantación, acoso ni insultos\n6. Nada de contenido ilegal ni falta de respeto extrema hacia ningún fandom\n7. No pidas ni compartas repositorios ni extensiones\n8. Spoilers solo con etiqueta de spoiler y aviso\n9. Nada de sexualizar ni hacer comentarios inapropiados sobre personajes menores\n10. Si está mal, ¡no lo publiques!';

  @override
  String get commentsRulesAccept => 'Entendido';

  @override
  String get commentsSortNewest => 'Más recientes';

  @override
  String get commentsSortOldest => 'Más antiguos';

  @override
  String get commentsSortHighest => 'Mejor valorados';

  @override
  String get commentsSortLowest => 'Peor valorados';

  @override
  String commentsEpisodeShort(int number) {
    return 'Ep. $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'Cap. $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'Filtrar por episodio';

  @override
  String get commentsFilterChapterTitle => 'Filtrar por capítulo';

  @override
  String get commentsFilterTagTitle =>
      'Escribe un número de episodio o capítulo';

  @override
  String get commentsFilterHint => 'Número';

  @override
  String get commentsFilterApply => 'Filtrar';

  @override
  String get commentsFilterClear => 'Ver todo';

  @override
  String get commentsPlaceholder => 'Añade un comentario…';

  @override
  String commentsReplyingTo(String name) {
    return 'Respondiendo a $name';
  }

  @override
  String get commentsSend => 'Enviar';

  @override
  String get commentsTagButton => 'Etiqueta';

  @override
  String commentsTagTitle(String label) {
    return 'Etiqueta de $label (opcional)';
  }

  @override
  String get commentsTagEpisode => 'episodio';

  @override
  String get commentsTagChapter => 'capítulo';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return 'Número de $label';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'La etiqueta no puede superar el total ($total)';
  }

  @override
  String get commentsNoTag => 'Sin etiqueta';

  @override
  String get commentsSpoiler => 'Spoiler';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'Buscar GIFs';

  @override
  String get commentsGifEmpty => 'No se encontraron GIFs';

  @override
  String get commentsEmptyText => 'El comentario no puede estar vacío';

  @override
  String get commentsBannedYou => 'Tienes prohibido comentar';

  @override
  String get commentsEdited => 'Comentario editado';

  @override
  String get commentsDeleted => 'Comentario eliminado';

  @override
  String get commentsDeletedPlaceholder => '[eliminado]';

  @override
  String get commentsReported => 'Comentario denunciado';

  @override
  String get commentsUserBanned => 'Usuario vetado';

  @override
  String get commentsReport => 'Denunciar';

  @override
  String get commentsReportAsk =>
      '¿Denunciar este comentario a los moderadores?';

  @override
  String get commentsDelete => 'Eliminar';

  @override
  String get commentsDeleteAsk => 'Este comentario se eliminará para todos.';

  @override
  String get commentsBan => 'Vetar';

  @override
  String get commentsBanAsk => '¿Vetar a este usuario para que no comente?';

  @override
  String get commentsCopy => 'Copiar';

  @override
  String get commentsViewReply => 'Ver 1 respuesta';

  @override
  String commentsViewReplies(int count) {
    return 'Ver $count respuestas';
  }

  @override
  String get commentsHideReplies => 'Ocultar respuestas';

  @override
  String get commentsLoadMore => 'Cargar más comentarios';

  @override
  String get commentsEmpty => 'Aún no hay comentarios. ¡Sé el primero!';

  @override
  String get commentsEmptyFiltered => 'No hay comentarios para este filtro';

  @override
  String get commentsSignIn =>
      'Inicia sesión en AniList para leer y escribir comentarios';

  @override
  String get commentsSignInMessage =>
      'Los comentarios se comparten entre todos los servicios y usan tu cuenta de AniList.';

  @override
  String get commentsUnavailable =>
      'Los comentarios no están disponibles para este título';

  @override
  String get commentsUnavailableMessage =>
      'No se pudo asociar con una entrada de AniList.';

  @override
  String get commentsDisabled => 'Los comentarios están desactivados';

  @override
  String get commentsDisabledMessage =>
      'Puedes volver a activarlos en Ajustes › General.';

  @override
  String get commentsOffline => 'No se pudieron cargar los comentarios';

  @override
  String get commentsSingleTitle => 'Mostrando un comentario';

  @override
  String get commentsShowAll => 'Mostrar todos los comentarios';

  @override
  String get commentsSettingsHeader => 'Comentarios';

  @override
  String get commentsSettingEnabled => 'Comentarios';

  @override
  String get commentsSettingEnabledDesc =>
      'Muestra la pestaña Comentarios en los títulos e inicia sesión en el servidor de comentarios con tu cuenta de AniList';

  @override
  String get commentsSettingAlerts => 'Notificaciones de respuestas';

  @override
  String get commentsSettingAlertsDesc =>
      'Avísame cuando alguien responda a mis comentarios';

  @override
  String get commentsNoticeReplyTitle => 'Nueva respuesta a un comentario';

  @override
  String commentsNoticeReply(String name) {
    return '$name respondió a tu comentario';
  }

  @override
  String get commentsNoticeWarningTitle => 'Has recibido una advertencia';

  @override
  String get commentsNoticeWarning => 'Sé más considerado con tus comentarios';

  @override
  String get commentsNoticeUpdateTitle => 'Actualización de Dantotsu';

  @override
  String get barcodeTitle => 'Escanear un código de barras';

  @override
  String get barcodeTooltip =>
      'Encuentra un manga o una novela por su código de barras';

  @override
  String get barcodeIntro =>
      'Apunta la cámara al código de barras de la contraportada de un tomo, o escribe su ISBN.';

  @override
  String get barcodeIntroManual =>
      'Escribe el ISBN impreso sobre el código de barras de la contraportada de un tomo.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'Ese ISBN no es válido';

  @override
  String barcodeNotFound(String isbn) {
    return 'No se encontró ningún libro para $isbn';
  }

  @override
  String get barcodeCameraDenied =>
      'La cámara no está disponible. Permite el acceso a la cámara o escribe el ISBN.';

  @override
  String get themesTitle => 'Openings y endings';

  @override
  String get themesPlayVideo => 'Reproducir vídeo';

  @override
  String get themesPlayAudio => 'Reproducir solo audio';

  @override
  String get themesOpenSite => 'Abrir en AnimeThemes';

  @override
  String get themesCredit => 'Temas de AnimeThemes';

  @override
  String get themesVersions => 'Versiones';

  @override
  String get sauceTitle => 'Encuentra la fuente';

  @override
  String get sauceIntro =>
      'Sube una página de manga o una ilustración, o pega su enlace, para descubrir de dónde viene.';

  @override
  String get sauceKeyTitle => 'Clave de API de SauceNAO';

  @override
  String get sauceKeyHint => 'Opcional, sube el límite diario de búsquedas';

  @override
  String get sauceKeyDesc =>
      'Consigue una clave gratis en saucenao.com/user.php';

  @override
  String get sauceOpen => 'Abrir fuente';

  @override
  String get sauceCredit => 'Búsqueda de imágenes por SauceNAO';

  @override
  String get sauceEmpty => 'No se encontró ninguna coincidencia';

  @override
  String get sauceTooltip =>
      'Encuentra la fuente de una página de manga o una ilustración';

  @override
  String get trendzTitle => 'Rankings de anime';

  @override
  String get trendzAnime => 'Anime';

  @override
  String get trendzFemale => 'Personajes femeninos';

  @override
  String get trendzMale => 'Personajes masculinos';

  @override
  String get trendzCouple => 'Parejas';

  @override
  String get trendzCredit => 'Rankings semanales de AniTrendz';

  @override
  String get trendzNew => 'NUEVO';

  @override
  String get trendzEmpty => 'El ranking está vacío';

  @override
  String get shareCard => 'Compartir tarjeta';

  @override
  String get shareCardList => 'Compartir tarjeta de lista';

  @override
  String get shareCardSaved => 'Tarjeta guardada';

  @override
  String get shareCardFailed => 'No se pudo crear la tarjeta';

  @override
  String get shareCardListEmpty => 'Tu lista aún no tiene nada que compartir';

  @override
  String get shareCardTop => 'Mis favoritos';

  @override
  String themesEpisodes(String eps) {
    return 'Episodios $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent % de coincidencia';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'Semana $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count votos';
  }

  @override
  String trendzPeak(String rank) {
    return 'Máximo: n.º $rank';
  }

  @override
  String trendzWeeks(String count) {
    return '$count semanas en el top diez';
  }

  @override
  String get imageSearchTitle => 'Buscar por imagen';

  @override
  String get imageSearchTooltip => 'Encuentra un anime a partir de una captura';

  @override
  String get imageSearchIntro =>
      'Elige una captura o pega un enlace de imagen y trace.moe encontrará el episodio y el momento de donde viene.';

  @override
  String get imageSearchPick => 'Elegir imagen';

  @override
  String get imageSearchLinkHint => 'Pega un enlace de imagen';

  @override
  String get imageSearchGo => 'Buscar';

  @override
  String get imageSearchEmpty => 'No se encontró ninguna coincidencia';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'Episodio $number';
  }

  @override
  String imageSearchAt(String time) {
    return 'en $time';
  }

  @override
  String get imageSearchPreview => 'Vista previa del clip';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent % de coincidencia';
  }

  @override
  String get imageSearchCredit => 'Con tecnología de trace.moe';

  @override
  String get imageSearchOpenFailed => 'No se pudo abrir este título';

  @override
  String get groups => 'Grupos';

  @override
  String get groupsYours => 'Tus grupos';

  @override
  String get groupsPopular => 'Populares';

  @override
  String get groupsNew => 'Nuevos';

  @override
  String get groupsFeatured => 'Destacados';

  @override
  String get groupsSearch => 'Buscar grupos';

  @override
  String get groupsAll => 'Todos';

  @override
  String get groupsEmpty => 'No se encontraron grupos';

  @override
  String get groupsEmptyYours => 'Aún no te has unido a ningún grupo';

  @override
  String get groupsSignIn =>
      'Inicia sesión para ver los grupos a los que te has unido';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count miembros',
      one: '1 miembro',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'Unirse';

  @override
  String get groupsJoined => 'Unido';

  @override
  String get groupsLeave => 'Salir del grupo';

  @override
  String get groupsLeaveAsk =>
      'Dejarás de ver las publicaciones de este grupo en tu feed.';

  @override
  String get groupsJoinFailed =>
      'No se pudo unir al grupo, puede que sea solo por invitación';

  @override
  String get groupsLeaveFailed => 'No se pudo salir del grupo';

  @override
  String get groupsPosts => 'Publicaciones';

  @override
  String get groupsMembersTab => 'Miembros';

  @override
  String get groupsAbout => 'Acerca de';

  @override
  String get groupsRules => 'Normas';

  @override
  String get groupsPrivacyOpen => 'Abierto';

  @override
  String get groupsPrivacyRestricted => 'Restringido';

  @override
  String get groupsPrivacyClosed => 'Cerrado';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'Admin';

  @override
  String get groupsRoleMod => 'Mod';

  @override
  String get groupsCouldntLoad => 'No se pudo cargar este grupo';

  @override
  String get groupsNewPost => 'Publicar en el grupo';

  @override
  String get groupsPostHint => 'Comparte algo con el grupo';

  @override
  String get groupsOpenInBrowser => 'Abrir en el navegador';

  @override
  String get groupsCategory => 'Categoría';

  @override
  String get groupsLanguage => 'Idioma';

  @override
  String get groupsCreated => 'Creado';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count líderes',
      one: '1 líder',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'Privacidad';

  @override
  String get notificationsAll => 'Todos';

  @override
  String get notificationsAiring => 'En emisión';

  @override
  String get notificationsMedia => 'Títulos nuevos';

  @override
  String get notificationsReplies => 'Respuestas';

  @override
  String get notificationsMentions => 'Menciones';

  @override
  String get notificationsMessages => 'Mensajes';

  @override
  String get notificationsLikes => 'Me gusta';

  @override
  String get notificationsFollows => 'Seguidores nuevos';

  @override
  String get notificationsNoServices =>
      'Ningún servicio con sesión iniciada tiene notificaciones';

  @override
  String get notificationsNoServicesMessage =>
      'Inicia sesión en un servicio que envíe notificaciones y aparecerán aquí.';

  @override
  String get notificationsEmptyKind => 'Aún no hay nada en esta categoría';

  @override
  String get notificationsCommentsEmpty => 'Sin notificaciones de comentarios';

  @override
  String get notificationsCommentsEmptyMessage =>
      'Aquí aparecen las respuestas a tus comentarios y los anuncios de Dantotsu.';

  @override
  String get notificationsSettings => 'Ajustes de notificaciones';

  @override
  String get notificationsPollTitle => 'Buscar notificaciones nuevas';

  @override
  String notificationsPollDesc(int minutes) {
    return 'Cada $minutes minutos mientras la app está abierta';
  }

  @override
  String get notificationsNotifyAbout => 'Avísame de';

  @override
  String get notificationsCommentsHeader => 'Notificaciones de comentarios';

  @override
  String systemNotificationsDescFor(String service) {
    return 'Muestra una notificación del sistema por cada notificación de $service sin leer mientras la app está abierta.';
  }

  @override
  String get notificationsTestSent => 'Notificación de prueba enviada';

  @override
  String get notificationsTestDenied =>
      'Las notificaciones no están permitidas para Dartotsu. Actívalas en los ajustes del sistema.';

  @override
  String get notificationsTestHint =>
      'Mantén pulsado para enviar una notificación de prueba';

  @override
  String get notificationsTestSample => 'Esta es una notificación de prueba';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name respondió a tu comentario en $media';
  }

  @override
  String get imageSearchNotLink => 'Eso no parece un enlace';

  @override
  String get imageSearchQuota => 'Cuota de búsqueda superada';

  @override
  String get imageSearchBusy =>
      'Demasiadas solicitudes, inténtalo de nuevo en un momento';

  @override
  String imageSearchFailed(int code) {
    return 'Falló la búsqueda ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count notificaciones nuevas';
  }

  @override
  String get reactionsTitle => 'Reacciones';

  @override
  String get reactionsNeedEntry =>
      'Añade este título a tu lista antes de reaccionar';

  @override
  String get reactionsAdd => 'Añadir una reacción';

  @override
  String get reactionsHint => '¿Qué te pareció? (corto y sin spoilers)';

  @override
  String get reactionsPost => 'Publicar';

  @override
  String get reactionsFailed => 'No se pudo actualizar la reacción';

  @override
  String get settingsWatch => 'Ver y leer';

  @override
  String get settingsWatchDesc =>
      'Listas de episodios, asociación de fuentes y detalles de episodios';

  @override
  String get watchSettingsLayout => 'Lista de episodios';

  @override
  String get watchSettingsSources => 'Fuentes';

  @override
  String get watchSettingsMetadata => 'Detalles de episodios';

  @override
  String get watchLayout => 'Diseño';

  @override
  String get watchListView => 'Lista';

  @override
  String get watchGridView => 'Cuadrícula';

  @override
  String get watchCompactView => 'Compacto';

  @override
  String get watchDefaultLayoutDesc =>
      'Cómo se muestran los episodios y capítulos hasta que lo cambies en un título';

  @override
  String get watchChunkSize => 'Tamaño de rango';

  @override
  String get watchChunkSizeDesc =>
      'Cuántos episodios o capítulos tiene cada pestaña de rango';

  @override
  String get watchShowDescription => 'Mostrar descripciones';

  @override
  String get watchShowDescriptionDesc =>
      'Muestra el resumen del episodio bajo cada título en el diseño de lista';

  @override
  String get watchShowFiller => 'Mostrar episodios de relleno';

  @override
  String get watchShowFillerDesc =>
      'Desactívalo para ocultar los episodios marcados como relleno';

  @override
  String get watchBlurUnwatched => 'Ocultar miniaturas con spoilers';

  @override
  String get watchBlurUnwatchedDesc =>
      'Difumina la miniatura de los episodios que aún no has visto';

  @override
  String get watchResumeShelf => 'Estante de continuar';

  @override
  String get watchResumeShelfDesc => 'Muestra la fila de Continuar en Inicio';

  @override
  String get watchMarkOnLongPress => 'Pulsación larga marca el progreso';

  @override
  String get watchMarkOnLongPressDesc =>
      'Mantén pulsado un episodio o capítulo para marcarlo como visto o no visto';

  @override
  String get watchMatching => 'Asociación de fuentes';

  @override
  String get watchMatchingDesc =>
      '\"Más cercana\" toma el mejor resultado de búsqueda. \"Solo exacta\" solo acepta un título casi idéntico y deja el resto para que elijas tú.';

  @override
  String get watchMatchClosest => 'Coincidencia más cercana';

  @override
  String get watchMatchExact => 'Solo coincidencia exacta';

  @override
  String get watchMetadataDesc =>
      'De dónde salen los títulos de episodios, resúmenes, miniaturas, fechas de emisión y marcas de relleno. Arrastra para fijar la prioridad; gana la primera fuente con un valor.';

  @override
  String get watchMetaAniZipDesc =>
      'Títulos de episodios, resúmenes, fotogramas y fechas de emisión';

  @override
  String get watchMetaKitsuDesc =>
      'Títulos de episodios, descripciones y miniaturas';

  @override
  String get watchMetaSimklDesc =>
      'Títulos de episodios, descripciones, fotogramas y fechas de emisión';

  @override
  String get watchMetaAniListDesc =>
      'Títulos de episodios en streaming, miniaturas y calendario de emisión';

  @override
  String get watchMetaTenraiDesc =>
      'Títulos de episodios de MyAnimeList, fechas de emisión, marcas de relleno y de resumen a través de Tenrai';

  @override
  String get watchClearMetadata => 'Actualizar detalles de episodios';

  @override
  String get watchClearMetadataDesc =>
      'Olvida los detalles de episodios en caché para que se obtengan de nuevo';

  @override
  String get watchMetadataCleared =>
      'Los detalles de episodios se obtendrán de nuevo';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count episodios',
      one: '1 episodio',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count capítulos',
      one: '1 capítulo',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'Episodio $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'Capítulo $number';
  }

  @override
  String get watchSearching => 'Buscando…';

  @override
  String watchSearchingFor(String term) {
    return 'Buscando: $term';
  }

  @override
  String watchSelected(String title) {
    return 'Seleccionado: $title';
  }

  @override
  String watchFound(String title) {
    return 'Encontrado: $title';
  }

  @override
  String get watchNothingFound => 'No se encontró nada en esta fuente';

  @override
  String get watchSearchFailed => 'Falló la búsqueda en la fuente';

  @override
  String get watchLoadFailed => 'No se pudo cargar la lista';

  @override
  String get watchSignInToTrack => 'Inicia sesión para seguir tu progreso';

  @override
  String watchInstallSource(String action) {
    return 'Instala una extensión para empezar a $action';
  }

  @override
  String get watchSourceMissing => 'Esta fuente no está instalada';

  @override
  String get watchWrongTitle => '¿Título equivocado?';

  @override
  String get watchSearchAgain => 'Buscar de nuevo';

  @override
  String watchSearchSource(String source) {
    return 'Buscar en $source';
  }

  @override
  String get watchSource => 'Fuente';

  @override
  String get watchOptions => 'Opciones';

  @override
  String get watchReverse => 'Invertir orden';

  @override
  String get watchScanlators => 'Grupos';

  @override
  String get watchResetOptions => 'Restablecer estas opciones';

  @override
  String get watchContinue => 'Continuar';

  @override
  String get watchStart => 'Empezar';

  @override
  String get watchPlay => 'Reproducir';

  @override
  String get watchRead => 'Leer';

  @override
  String get watchMarkWatched => 'Marcar como visto';

  @override
  String get watchMarkUnwatched => 'Marcar como no visto';

  @override
  String get watchMarkRead => 'Marcar como leído';

  @override
  String get watchMarkUnread => 'Marcar como no leído';

  @override
  String get watchFiller => 'Relleno';

  @override
  String get watchRecap => 'Resumen';

  @override
  String get watchNoEpisodes => 'No se encontraron episodios';

  @override
  String get watchNoChapters => 'No se encontraron capítulos';

  @override
  String get watchSourceTools => 'Herramientas de la fuente';

  @override
  String get watchSourceSettings => 'Ajustes de la fuente';

  @override
  String get watchOpenWebView => 'Abrir en vista web';

  @override
  String get watchOpenWebViewDesc =>
      'Resuelve una comprobación de Cloudflare o inicia sesión; las cookies se comparten con las solicitudes de la fuente';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cookies guardadas para $host',
      one: '1 cookie guardada para $host',
      zero: 'No hay cookies guardadas para $host',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Autorización de Cloudflare activa, $time';
  }

  @override
  String get watchClearanceMissing =>
      'Sin cookie de autorización de Cloudflare';

  @override
  String get watchClearanceSession => 'dura hasta que se cierre la app';

  @override
  String get watchAgentShared =>
      'Las solicitudes usan el user agent de la vista web, que Cloudflare comprueba';

  @override
  String get watchAgentCustom =>
      'Hay un user agent personalizado, así que una autorización de Cloudflare de la vista web podría rechazarse';

  @override
  String get watchTestConnection => 'Probar conexión';

  @override
  String get watchSolveChallenge => 'Resolver';

  @override
  String watchProbeOk(int code) {
    return 'Accesible (HTTP $code)';
  }

  @override
  String get watchProbeChallenge =>
      'Cloudflare sigue pidiendo una comprobación';

  @override
  String watchProbeBlocked(int code) {
    return 'Bloqueado por el sitio (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'No se pudo acceder al sitio';

  @override
  String get watchClearCookies => 'Borrar cookies de este sitio';

  @override
  String get watchCookiesCleared => 'Cookies borradas';

  @override
  String get watchMetaSource => 'Detalles de episodios de';

  @override
  String get watchMetaAuto => 'Automático';

  @override
  String get watchMetaOff => 'Desactivado';

  @override
  String get playerSettingsTitle => 'Ajustes del reproductor';

  @override
  String get playerSectionPlayback => 'Reproducción';

  @override
  String get playerSectionSkip => 'Saltar';

  @override
  String get playerSectionGestures => 'Controles';

  @override
  String get playerSectionSubtitles => 'Subtítulos';

  @override
  String get playerSectionShaders => 'Shaders';

  @override
  String get playerSectionEngine => 'Motor';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'Velocidad de reproducción';

  @override
  String get playerCursedSpeed => 'Velocidades extra';

  @override
  String get playerCursedSpeedDesc =>
      'Añade a la lista velocidades de hasta 10x';

  @override
  String get playerResize => 'Modo de ajuste';

  @override
  String get playerFitFit => 'Ajustar';

  @override
  String get playerFitCover => 'Cubrir';

  @override
  String get playerFitStretch => 'Estirar';

  @override
  String get playerSkipDuration => 'Duración del botón de saltar';

  @override
  String get playerSkipDurationDesc =>
      'Segundos que salta el botón de saltar fuera de openings y endings';

  @override
  String get playerSeekDuration => 'Doble toque para avanzar';

  @override
  String get playerSeekDurationDesc =>
      'Segundos que se salta con doble toque o tecla de flecha';

  @override
  String get playerAutoPlay => 'Reproducir el siguiente automáticamente';

  @override
  String get playerAutoPlayDesc =>
      'Empieza el siguiente episodio cuando acabe este';

  @override
  String get playerResume => 'Seguir donde lo dejaste';

  @override
  String get playerResumeDesc =>
      'Continúa un episodio desde su última posición';

  @override
  String get playerOrientation => 'Orientación';

  @override
  String get playerOrientationAuto => 'Seguir al dispositivo';

  @override
  String get playerOrientationLandscape => 'Horizontal';

  @override
  String get playerOrientationPortrait => 'Vertical';

  @override
  String get playerAutoSkipOpening => 'Saltar openings';

  @override
  String get playerAutoSkipEnding => 'Saltar endings';

  @override
  String get playerAutoSkipRecap => 'Saltar resúmenes';

  @override
  String get playerAutoSkipDesc =>
      'Salta en cuanto empiezan, usando AniSkip y las marcas de tiempo del stream';

  @override
  String get playerSkipOnce => 'Saltar solo una vez';

  @override
  String get playerSkipOnceDesc =>
      'No saltes la misma parte otra vez si retrocedes hasta ella';

  @override
  String get playerAdjustBrightness => 'Gesto de brillo';

  @override
  String get playerAdjustBrightnessDesc =>
      'Desliza arriba y abajo en la mitad derecha de la pantalla';

  @override
  String get playerAdjustVolume => 'Gesto de volumen';

  @override
  String get playerAdjustVolumeDesc =>
      'Desliza arriba y abajo en la mitad izquierda de la pantalla';

  @override
  String get playerHoldToSpeed => 'Mantén para acelerar';

  @override
  String get playerHoldToSpeedDesc =>
      'Mantén pulsado el vídeo para reproducir más rápido, arrastra a un lado para cambiar la velocidad';

  @override
  String get playerThumbless => 'Barra de progreso más gruesa';

  @override
  String get playerThumblessDesc => 'Una barra gruesa sin control deslizante';

  @override
  String get playerShowSubtitles => 'Mostrar subtítulos';

  @override
  String get playerShowSubtitlesDesc =>
      'Desactívalo para ocultar todas las pistas de subtítulos';

  @override
  String get playerSubtitleLanguage => 'Idioma de subtítulos preferido';

  @override
  String get playerSubtitleSize => 'Tamaño de subtítulos';

  @override
  String get playerSubtitleWeight => 'Grosor de subtítulos';

  @override
  String get playerSubtitleBottom => 'Margen inferior de subtítulos';

  @override
  String get playerSubtitleFont => 'Fuente de subtítulos';

  @override
  String get playerSubtitleColor => 'Color de subtítulos';

  @override
  String get playerSubtitleBackground => 'Fondo de subtítulos';

  @override
  String get playerSubtitleOutline => 'Contorno de subtítulos';

  @override
  String get playerLibass => 'Usar libass';

  @override
  String get playerLibassDesc =>
      'Renderiza subtítulos .ass con estilo. El tamaño, el color y la fuente de arriba dejan de aplicarse';

  @override
  String get playerShaders => 'Shaders';

  @override
  String get playerShadersEnable => 'Activar shaders';

  @override
  String get playerShadersEnableDesc =>
      'Escala y limpia la imagen con shaders GLSL como Anime4K';

  @override
  String get playerShadersOff => 'Shaders desactivados';

  @override
  String get playerShadersMissing => 'Anime4K no está instalado';

  @override
  String get playerShadersMissingDesc =>
      'Descarga el paquete de shaders Anime4K (unos 0,8 MB) para usar los modos integrados.';

  @override
  String get playerShadersDownload => 'Descargar Anime4K';

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
  String get playerShadersPreview => 'Vista previa en este fotograma';

  @override
  String get playerShadersUse => 'Usar este';

  @override
  String get playerPicture => 'Imagen';

  @override
  String get playerColors => 'Colores';

  @override
  String get playerColorDefault => 'Predeterminado';

  @override
  String get playerColorVivid => 'Vívido';

  @override
  String get playerColorPop => 'Anime pop';

  @override
  String get playerColorSoft => 'Suave';

  @override
  String get playerColorCinematic => 'Cinematográfico';

  @override
  String get playerColorBright => 'Brillante';

  @override
  String get playerColorNight => 'Noche';

  @override
  String get playerColorMono => 'Mono';

  @override
  String get playerColorCustom => 'Personalizado';

  @override
  String get playerColorBrightness => 'Brillo';

  @override
  String get playerColorContrast => 'Contraste';

  @override
  String get playerColorSaturation => 'Saturación';

  @override
  String get playerColorGamma => 'Gamma';

  @override
  String get playerColorHue => 'Tono';

  @override
  String get playerColorReset => 'Restablecer';

  @override
  String get playerColorAdjust => 'Ajustar';

  @override
  String get playerShadersOriginal => 'Original';

  @override
  String get playerShadersPreviewFailed =>
      'No se pudo capturar un fotograma para la vista previa';

  @override
  String get playerShadersSoftware =>
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Only for a black video. Shaders don\'t work with it. Applies the next time the player opens';

  @override
  String get playerShadersCustomFiles => 'Tus shaders';

  @override
  String get playerShadersCustom => 'Shaders personalizados';

  @override
  String get playerShadersImport => 'Importar .glsl';

  @override
  String get playerShadersNone =>
      'Importa tus propios archivos .glsl o .hook y márcalos para encadenarlos';

  @override
  String get playerShadersBadFile => 'Elige un archivo de shader .glsl o .hook';

  @override
  String get playerDecoder => 'Decodificador';

  @override
  String get playerDecoderAuto => 'Auto';

  @override
  String get playerDecoderAutoSafe => 'Auto (seguro)';

  @override
  String get playerDecoderSoftware => 'Software';

  @override
  String get playerDecoderHardware => 'Hardware';

  @override
  String get playerDecoderHardwarePlus => 'Hardware+';

  @override
  String get playerVideoOutput => 'Salida de vídeo';

  @override
  String get playerAudioChannels => 'Canales de audio';

  @override
  String get playerBuffer => 'Tamaño del búfer (MB)';

  @override
  String get playerBufferDesc =>
      'Memoria que el reproductor puede usar para almacenar en búfer un stream';

  @override
  String get playerUseMpvConf => 'Usar mpv.conf';

  @override
  String get playerUseMpvConfDesc =>
      'Aplica las opciones de tu mpv.conf cuando empiece la reproducción';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'Edita la configuración de mpv';

  @override
  String get playerMpvConfDesc =>
      'Una opción por línea, como --hwdec=auto en un mpv.conf normal. Los perfiles entre [corchetes] se ignoran.';

  @override
  String get playerMpvConfSaved => 'mpv.conf guardado';

  @override
  String get playerUseScripts => 'Usar scripts de mpv';

  @override
  String get playerUseScriptsDesc =>
      'Carga los plugins de la carpeta de scripts. Necesitan una compilación de libmpv con soporte para Lua o JavaScript';

  @override
  String get playerScripts => 'Scripts de mpv';

  @override
  String get playerScriptsManage => 'Añade, quita y activa plugins';

  @override
  String get playerScriptsAdd => 'Añadir script';

  @override
  String get playerScriptsDesc =>
      'Los plugins de Lua, JavaScript y nativos que pongas aquí se cargan al empezar la reproducción.';

  @override
  String get playerScriptsNone => 'Aún no hay scripts';

  @override
  String get playerScriptsBadFile =>
      'Elige un archivo .lua, .js o un plugin nativo';

  @override
  String get playerTuning => 'Ajuste avanzado de vídeo';

  @override
  String get playerTuningDesc =>
      'Anula la sincronización, el caché, el escalado y el tone mapping. Valores incorrectos pueden estropear la reproducción';

  @override
  String get playerVideoSync => 'Sincronización de vídeo';

  @override
  String get playerInterpolation => 'Interpolación de fotogramas';

  @override
  String get playerInterpolationDesc =>
      'Movimiento fluido, necesita sincronización display-resample';

  @override
  String get playerPitch => 'Corrección de tono';

  @override
  String get playerPitchDesc =>
      'Mantiene las voces naturales a otras velocidades';

  @override
  String get playerCacheSeconds => 'Caché (segundos)';

  @override
  String get playerReadahead => 'Lectura anticipada (segundos)';

  @override
  String get playerThreads => 'Hilos del decodificador';

  @override
  String get playerDeband => 'Deband';

  @override
  String get playerDebandDesc => 'Reduce las bandas de color en los degradados';

  @override
  String get playerDebandIterations => 'Iteraciones de deband';

  @override
  String get playerDebandThreshold => 'Umbral de deband';

  @override
  String get playerCorrectDownscaling => 'Reducción de escala correcta';

  @override
  String get playerSigmoid => 'Ampliación sigmoide';

  @override
  String get playerScale => 'Escalador';

  @override
  String get playerCscale => 'Escalador de croma';

  @override
  String get playerDscale => 'Reductor de escala';

  @override
  String get playerToneMapping => 'Tone mapping';

  @override
  String get playerTargetPeak => 'Pico objetivo';

  @override
  String get playerOpenFiles => 'Abrir archivos de vídeo';

  @override
  String get playerOpenFilesDesc => 'Reproduce archivos de este dispositivo';

  @override
  String get playerOpenFolder => 'Abrir una carpeta';

  @override
  String get playerOpenFolderDesc =>
      'Reproduce todos los vídeos de una carpeta como lista';

  @override
  String get playerNetworkStream => 'Stream de red';

  @override
  String get playerNetworkStreamDesc => 'Abre un enlace de vídeo directo o HLS';

  @override
  String get playerStreamUrl => 'URL del stream';

  @override
  String get playerStreamReferer => 'Referer (opcional)';

  @override
  String get playerTorrent => 'Torrent';

  @override
  String get playerTorrentDesc =>
      'Reproduce un enlace magnet o un archivo .torrent';

  @override
  String get playerMagnetLink => 'Enlace magnet o URL del torrent';

  @override
  String get playerPickTorrent => 'Elige un archivo .torrent';

  @override
  String get playerTorrentMissing =>
      'Instala primero el complemento de torrents desde Ajustes > Complementos';

  @override
  String get playerNoVideos => 'No se encontraron vídeos reproducibles';

  @override
  String get playerReset => 'Restablecer ajustes del reproductor';

  @override
  String get playerResetDesc =>
      'Devuelve todas las opciones del reproductor a sus valores predeterminados';

  @override
  String get playerResetConfirm =>
      '¿Restablecer todos los ajustes del reproductor?';

  @override
  String get playerResetDone => 'Ajustes del reproductor restablecidos';

  @override
  String get playerQuality => 'Calidad';

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
  String get playerStreams => 'Streams';

  @override
  String get playerAutoSelect => 'Elegir stream automáticamente';

  @override
  String get playerAutoSelectDesc =>
      'Elige el stream más parecido a tu última elección para este título';

  @override
  String get playerLoadingStreams => 'Buscando streams…';

  @override
  String get playerNoStreams => 'Este episodio no tiene streams';

  @override
  String get playerNoStreamsTitle => 'No se encontraron streams';

  @override
  String get playerFailed => 'Falló la reproducción';

  @override
  String get playerTorrentNeeded => 'Este stream es un torrent';

  @override
  String get playerTorrentNeededDesc =>
      'Instala el complemento de torrents para reproducir enlaces magnet y archivos .torrent';

  @override
  String get playerOpenAddons => 'Abrir complementos';

  @override
  String get playerTryAnotherStream => 'Probar otro stream';

  @override
  String get playerEpisodes => 'Episodios';

  @override
  String get playerLock => 'Bloquear controles';

  @override
  String get playerFullscreen => 'Pantalla completa';

  @override
  String get readerChapters => 'Capítulos';

  @override
  String get readerSettingsTitle => 'Ajustes del lector';

  @override
  String get readerPreviousChapter => 'Capítulo anterior';

  @override
  String get readerNextChapter => 'Capítulo siguiente';

  @override
  String get readerFirstChapter => 'Este es el primer capítulo';

  @override
  String get readerLastChapter => 'Estás al día';

  @override
  String get readerFailed => 'No se pudo abrir este capítulo';

  @override
  String get readerOpenBook => 'Open a book';

  @override
  String get readerOpenBookDesc =>
      'Read an epub (novel reader) or a PDF (manga reader) from your files';

  @override
  String get readerNoText => 'Este capítulo no tiene texto';

  @override
  String get readerPerTitle => 'Solo para este título';

  @override
  String get readerPerTitleDesc =>
      'Mantén estos ajustes del lector solo para este título';

  @override
  String get readerSectionReading => 'Lectura';

  @override
  String get readerSectionControls => 'Controles';

  @override
  String get readerSectionDisplay => 'Pantalla';

  @override
  String get readerSectionNovel => 'Novela';

  @override
  String get readerMode => 'Modo de lectura';

  @override
  String get readerModeAuto => 'Auto (by series type)';

  @override
  String get readerModeRtl => 'De derecha a izquierda';

  @override
  String get readerModeLtr => 'De izquierda a derecha';

  @override
  String get readerModeVertical => 'Páginas verticales';

  @override
  String get readerModeWebtoon => 'Webtoon';

  @override
  String get readerModeContinuous => 'Desplazamiento continuo';

  @override
  String get readerScale => 'Escala de imagen';

  @override
  String get readerScaleFit => 'Ajustar a pantalla';

  @override
  String get readerScaleWidth => 'Ajustar al ancho';

  @override
  String get readerScaleHeight => 'Ajustar al alto';

  @override
  String get readerScaleOriginal => 'Tamaño original';

  @override
  String get readerScaleSmart => 'Ajuste inteligente';

  @override
  String get readerDoublePage => 'Páginas dobles';

  @override
  String get readerDoublePageDesc =>
      'Muestra dos páginas lado a lado en horizontal';

  @override
  String get readerDoubleTapZoom => 'Doble toque para zoom';

  @override
  String get readerDoubleTapZoomDesc =>
      'Acerca y aleja una página con doble toque';

  @override
  String get readerAnimate => 'Animación de página';

  @override
  String get readerAnimateDesc => 'Anima los cambios de página';

  @override
  String get readerSidePadding => 'Relleno lateral';

  @override
  String get readerSidePaddingDesc =>
      'Espacio junto a las páginas en porcentaje';

  @override
  String get readerPageGap => 'Espacio entre páginas';

  @override
  String get readerPageGapDesc => 'Espacio entre las páginas';

  @override
  String get readerAutoNext => 'Continuar en el siguiente capítulo';

  @override
  String get readerAutoNextDesc =>
      'Carga el siguiente capítulo mientras lees el final de este';

  @override
  String get readerPreload => 'Precargar páginas';

  @override
  String get readerPreloadDesc => 'Cuántas páginas se descargan por adelantado';

  @override
  String get readerTapZones => 'Zonas de toque';

  @override
  String get readerTapDefault => 'Predeterminado';

  @override
  String get readerTapLShaped => 'En L';

  @override
  String get readerTapKindle => 'Tipo Kindle';

  @override
  String get readerTapEdge => 'Solo bordes';

  @override
  String get readerTapOff => 'Desactivado';

  @override
  String get readerInvertTaps => 'Invertir zonas de toque';

  @override
  String get readerInvertTapsDesc =>
      'Intercambia las áreas de anterior y siguiente';

  @override
  String get readerBackground => 'Fondo';

  @override
  String get readerBackgroundBlack => 'Negro';

  @override
  String get readerBackgroundGray => 'Gris';

  @override
  String get readerBackgroundWhite => 'Blanco';

  @override
  String get readerBackgroundTheme => 'Tema de la app';

  @override
  String get readerFilter => 'Filtro de color';

  @override
  String get readerFilterNone => 'Ninguno';

  @override
  String get readerFilterGrayscale => 'Escala de grises';

  @override
  String get readerFilterInvert => 'Invertir';

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
  String get readerDim => 'Atenuar';

  @override
  String get readerDimDesc => 'Oscurece las páginas';

  @override
  String get readerPageNumber => 'Número de página';

  @override
  String get readerPageNumberDesc =>
      'Muestra el número de página mientras lees';

  @override
  String get readerFullscreen => 'Pantalla completa';

  @override
  String get readerFullscreenDesc => 'Oculta las barras del sistema';

  @override
  String get readerCropBorders => 'Recortar bordes';

  @override
  String get readerCropBordersDesc =>
      'Quita los márgenes blancos o negros vacíos de las páginas';

  @override
  String get readerLongPressSave => 'Hold a page to save it';

  @override
  String get readerLongPressSaveDesc =>
      'Long press a page to open save, share and copy options';

  @override
  String get readerVolumeKeys => 'Teclas de volumen pasan páginas';

  @override
  String get readerVolumeKeysDesc =>
      'Bajar volumen avanza, subir volumen retrocede';

  @override
  String get readerBookmarks => 'Marcadores';

  @override
  String get readerBookmarkAdd => 'Añadir marcador';

  @override
  String get readerBookmarkRemove => 'Quitar marcador';

  @override
  String get readerBookmarksEmpty => 'Aún no hay marcadores';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'Página $page de $total';
  }

  @override
  String get readerAutoScroll => 'Desplazamiento automático';

  @override
  String get readerAutoScrollStop => 'Detener desplazamiento automático';

  @override
  String get readerAutoScrollSpeed => 'Velocidad del desplazamiento automático';

  @override
  String get readerAutoScrollSpeedDesc =>
      'Qué tan rápido se desplazan o pasan solas las páginas';

  @override
  String get readerKeepOn => 'Mantener pantalla encendida';

  @override
  String get readerKeepOnDesc =>
      'Evita que la pantalla se apague mientras lees';

  @override
  String get readerOrientation => 'Orientación';

  @override
  String get readerOrientationFree => 'Libre';

  @override
  String get readerOrientationPortrait => 'Vertical';

  @override
  String get readerOrientationLandscape => 'Horizontal';

  @override
  String get readerSaveProgress => 'Guardar progreso';

  @override
  String get readerSaveProgressDesc =>
      'Recuerda tu página y marca los capítulos como leídos';

  @override
  String get readerReset => 'Restablecer ajustes del lector';

  @override
  String get readerResetDesc => 'Volver a los valores predeterminados';

  @override
  String get novelSize => 'Tamaño del texto';

  @override
  String get novelFont => 'Fuente';

  @override
  String get novelLineHeight => 'Altura de línea';

  @override
  String get novelParagraph => 'Espaciado de párrafos';

  @override
  String get novelMargin => 'Márgenes';

  @override
  String get novelTheme => 'Tema del lector';

  @override
  String get novelThemeApp => 'Tema de la app';

  @override
  String get novelThemeLight => 'Claro';

  @override
  String get novelThemeSepia => 'Sepia';

  @override
  String get novelThemeDark => 'Oscuro';

  @override
  String get novelThemeBlack => 'Negro';

  @override
  String get novelJustify => 'Justificar texto';

  @override
  String get novelJustifyDesc => 'Alinea el texto a ambos bordes';

  @override
  String get trackProgressTitle => '¿Guardar progreso?';

  @override
  String trackProgressAnime(String name) {
    return '¿Seguir $name en tu lista mientras lo ves? Elige \"Solo este dispositivo\" para mantenerlo en local, o No para no guardar nada.';
  }

  @override
  String trackProgressManga(String name) {
    return '¿Seguir $name en tu lista cuando termines un capítulo? Elige \"Solo este dispositivo\" para mantenerlo en local, o No para no guardar nada.';
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
  String get trackProgressYes => 'Guardar';

  @override
  String get trackProgressReset =>
      'Se restableció el aviso de guardar progreso para este tipo, volverá a preguntar';

  @override
  String get trackProgressNo => 'No';

  @override
  String get trackProgressOff => 'Desactivado';

  @override
  String get trackProgressLocal => 'Solo este dispositivo';

  @override
  String get trackProgressSettingAnime => 'Seguir progreso de anime';

  @override
  String get trackProgressSettingManga => 'Seguir progreso de manga y novelas';

  @override
  String get trackProgressSettingDesc =>
      'Qué hacer cuando abres un episodio o terminas un capítulo';

  @override
  String get trackProgressAsk => 'Preguntar';

  @override
  String get trackProgressAlways => 'Siempre';

  @override
  String get dantotsuImport => 'Importar desde Dantotsu';

  @override
  String get dantotsuImportDesc =>
      'Lee una copia de ajustes de Dantotsu (.ani, o .sani cifrado)';

  @override
  String get dantotsuPick => 'Elige una copia de Dantotsu';

  @override
  String get dantotsuNothing => 'No se puede importar nada de este archivo';

  @override
  String get dantotsuApply => 'Importar selección';

  @override
  String dantotsuDone(int done, int total) {
    return 'Importados $done de $total';
  }

  @override
  String get dantotsuGroupAccounts => 'Cuentas';

  @override
  String get dantotsuGroupAppearance => 'Apariencia';

  @override
  String get dantotsuGroupExtensions => 'Extensiones';

  @override
  String get dantotsuGroupApp => 'App';

  @override
  String get dantotsuGroupPlayer => 'Reproductor';

  @override
  String get dantotsuAnilist => 'Inicio de sesión en AniList';

  @override
  String get dantotsuMal => 'Inicio de sesión en MyAnimeList';

  @override
  String get dantotsuDiscord => 'Token de Discord Rich Presence';

  @override
  String get dantotsuTheme => 'Tema';

  @override
  String get dantotsuReposAnime => 'Repositorios de extensiones de anime';

  @override
  String get dantotsuReposManga => 'Repositorios de extensiones de manga';

  @override
  String get dantotsuReposNovel => 'Repositorios de extensiones de novelas';

  @override
  String get dantotsuUpdates => 'Comprobación de actualizaciones';

  @override
  String get dantotsuComments => 'Comentarios';

  @override
  String get dantotsuActivity => 'Sondeo de notificaciones de AniList';

  @override
  String get dantotsuDns => 'Proveedor de DNS';

  @override
  String get dantotsuPlayer =>
      'Velocidad del reproductor y colores de subtítulos';

  @override
  String get dantotsuWarning =>
      'Este archivo contiene tokens de inicio de sesión. Mantenlo en privado.';

  @override
  String get novelIndent => 'Sangría de párrafos';

  @override
  String get novelIndentDesc =>
      'Empieza cada párrafo con sangría en la primera línea';

  @override
  String get novelLetterSpacing => 'Espaciado entre letras';

  @override
  String get novelSectionTranslate => 'Traducción';

  @override
  String get sectionExperimental => 'Experimental';

  @override
  String get kitsuGraphqlDetail => 'Páginas de detalle más rápidas (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'Carga un título con sus personajes, equipo y tu entrada en una sola solicitud';

  @override
  String get togetherTitle => 'Ver juntos';

  @override
  String get togetherIntro =>
      'Pega el enlace de sala que te mandó tu amigo. Entras al instante y el reproductor se abre cuando empiecen a ver.';

  @override
  String get togetherName => 'Tu nombre';

  @override
  String get togetherConnecting => 'Conectando…';

  @override
  String get togetherLeave => 'Salir de la sala';

  @override
  String get togetherYou => 'Tú';

  @override
  String get togetherNoChat => 'Aún no hay mensajes';

  @override
  String get togetherChatHint => 'Mensaje';

  @override
  String get togetherCopyInvite => 'Copiar invitación';

  @override
  String get togetherShareInvite => 'Share invite';

  @override
  String togetherShareText(String link) {
    return 'Watch with me on Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'Servidor y sala copiados';

  @override
  String get togetherConnectionLost => 'Conexión perdida';

  @override
  String togetherConnectedTo(String room) {
    return 'Conectado a $room';
  }

  @override
  String togetherFailed(String error) {
    return 'No se pudo conectar: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name se unió';
  }

  @override
  String togetherLeft(String name) {
    return '$name salió';
  }

  @override
  String togetherPaused(String name) {
    return '$name pausó';
  }

  @override
  String togetherResumed(String name) {
    return '$name reanudó';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name saltó a $time';
  }

  @override
  String get togetherFollowFailed =>
      'No se pudo abrir el episodio del anfitrión. Ábrelo tú.';

  @override
  String get togetherJoinRole => 'Unirse a una sala';

  @override
  String get togetherOpenHost => 'Abrir episodio del anfitrión';

  @override
  String get togetherShowChat => 'Mostrar chat en vivo';

  @override
  String get togetherWaitingHost =>
      'Esperando a que el anfitrión empiece un episodio';

  @override
  String get togetherRoomLink => 'Enlace de sala';

  @override
  String get togetherBadLink => 'Eso no es un enlace de sala';

  @override
  String get togetherHostClosed => 'El anfitrión cerró la sala';

  @override
  String get togetherNowPlaying => 'Reproduciendo ahora';

  @override
  String togetherWatchingCount(int count) {
    return '$count viendo';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user quiere pausar';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user quiere reanudar';
  }

  @override
  String get togetherChip => 'Juntos';

  @override
  String get togetherSettingsDesc =>
      'Únete a la sala de un amigo con un enlace';

  @override
  String get novelBilingual => 'Mostrar original y traducción';

  @override
  String get novelBilingualDesc =>
      'Cada párrafo muestra el texto original con su traducción debajo';

  @override
  String get novelTranslateTo => 'Traducir a';

  @override
  String get novelTranslateOff => 'Desactivado';

  @override
  String get novelSectionSpeech => 'Texto a voz';

  @override
  String get novelSpeechRate => 'Velocidad de voz';

  @override
  String get novelSpeechPitch => 'Tono de voz';

  @override
  String get novelSpeak => 'Leer en voz alta';

  @override
  String get novelSpeakStop => 'Dejar de leer en voz alta';

  @override
  String get novelTranslate => 'Traducir capítulo';

  @override
  String get novelTranslateShowOriginal => 'Mostrar original';

  @override
  String novelTranslateFailed(String error) {
    return 'Falló la traducción: $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'El texto a voz no está disponible en este dispositivo';

  @override
  String get novelSpeechVoice => 'Voz';

  @override
  String get novelSpeechVoiceDefault => 'Predeterminada del sistema';

  @override
  String get novelSpeakPrevious => 'Línea anterior';

  @override
  String get novelSpeakNext => 'Línea siguiente';

  @override
  String get novelTapPaging => 'Toca los bordes para pasar de página';

  @override
  String get novelTapPagingDesc =>
      'Toca a la izquierda o a la derecha para desplazar una página, el centro muestra los controles';

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
    return 'faltan $count min';
  }

  @override
  String get novelBold => 'Texto en negrita';

  @override
  String get novelBoldDesc => 'Usa un grosor mayor';

  @override
  String readerFinishedChapter(String chapter) {
    return 'Terminaste $chapter';
  }

  @override
  String readerNextUp(String chapter) {
    return 'Siguiente: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'Anterior: $chapter';
  }

  @override
  String get readerNoPages => 'Este capítulo no tiene páginas';

  @override
  String get readerLoadingPages => 'Cargando páginas…';

  @override
  String get readerSlowPage => 'Esta página sigue cargando…';

  @override
  String get readerPageFailed => 'No se pudo cargar esta página';

  @override
  String get playerShowComments => 'Mostrar comentarios';

  @override
  String get playerHideComments => 'Ocultar comentarios';

  @override
  String get playerSubtitles => 'Subtítulos';

  @override
  String get playerSubtitlesOff => 'Subtítulos desactivados';

  @override
  String get playerAudio => 'Audio';

  @override
  String get playerAddSubtitle => 'Añadir archivo de subtítulos';

  @override
  String get playerAddAudio => 'Añadir archivo de audio';

  @override
  String get playerChapters => 'Capítulos';

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
  String get playerNoChapters => 'Sin capítulos';

  @override
  String get playerTimestamp => 'Marca de tiempo';

  @override
  String get playerAutoPlayDelay => 'Cuenta atrás del siguiente episodio';

  @override
  String get playerWatchedAt => 'Contar como visto al llegar a';

  @override
  String playerNextIn(int seconds) {
    return 'Siguiente episodio en $seconds s';
  }

  @override
  String get playerPlayNow => 'Reproducir ya';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: se saltará automáticamente en este título';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: no se saltará automáticamente en este título';
  }

  @override
  String get playerAudioLanguage => 'Idioma de audio preferido';

  @override
  String get playerLanguageOrderHint =>
      'Separa los idiomas con comas. Se usa el primero que se encuentre.';

  @override
  String get playerPip => 'Imagen en imagen';

  @override
  String get playerAutoPip => 'Imagen en imagen al salir';

  @override
  String get playerAutoPipDesc =>
      'Sigue reproduciendo en una ventana pequeña cuando salgas de la app';

  @override
  String playerAutoPlaying(String title) {
    return 'Reproduciendo $title a continuación…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'No se pudieron instalar los shaders: $error';
  }

  @override
  String playerChapter(int number) {
    return 'Capítulo $number';
  }

  @override
  String get playerPerTitle => 'Solo para este título';

  @override
  String get playerPerTitleDesc =>
      'Mantén estas opciones para este título y deja tus valores predeterminados como están';

  @override
  String get playerSwapGestures => 'Cambiar lados del deslizamiento';

  @override
  String get playerSwapGesturesDesc =>
      'Brillo a la izquierda y volumen a la derecha';

  @override
  String get playerOpenBig => 'Abrir en vista grande';

  @override
  String get playerOpenBigDesc =>
      'Abre el reproductor a pantalla completa en vez de con la lista de episodios';

  @override
  String get playerPauseOnBlur => 'Pausar al perder el foco';

  @override
  String get playerPauseOnBlurDesc =>
      'Pausa mientras la app está tapada, como con el panel de notificaciones, y sigue al volver';

  @override
  String get playerAudioOutput => 'Salida de audio';

  @override
  String get fontAppDefault => 'Fuente de la app';

  @override
  String get fontImport => 'Importar fuente';

  @override
  String get fontSample =>
      'El veloz murciélago hindú comía feliz cardillo y kiwi';

  @override
  String get playerSubtitleDelay => 'Retraso de subtítulos';

  @override
  String get playerAudioDelay => 'Retraso de audio';

  @override
  String get playerDelayReset => 'Restablecer';

  @override
  String get playerOnlineSubtitles => 'Subtítulos en línea';

  @override
  String get playerOnlineSearchHint => 'Título y episodio';

  @override
  String get playerOnlineNone => 'No se encontraron subtítulos';

  @override
  String playerOnlineFailed(String error) {
    return 'Falló la búsqueda de subtítulos: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'No se pudo descargar este subtítulo: $error';
  }

  @override
  String get playerOnlineMatch => 'Coincide con este archivo';

  @override
  String get playerOnlineEpisode => 'Coincidencia de episodio';

  @override
  String playerOnlineDownloads(int count) {
    return '$count descargas';
  }

  @override
  String get playerSeekPreview => 'Vista previa al avanzar';

  @override
  String get playerSeekPreviewDesc =>
      'Muestra una pequeña vista previa del fotograma sobre la barra al desplazarte. Abre un segundo decodificador de baja resolución, así que usa más datos en los streams.';

  @override
  String get playerSettingsChip => 'Ajustes';

  @override
  String get playerAudioDevice => 'Dispositivo de audio';

  @override
  String get settingsDownloads => 'Descargas';

  @override
  String get settingsDownloadsDesc =>
      'Episodios sin conexión, cola y modo sin conexión';

  @override
  String get downloadsTitle => 'Descargas';

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
      'Mira la cola y todo lo guardado en este dispositivo';

  @override
  String get downloadTitle => 'Descargar';

  @override
  String get downloadAlready => 'Ya descargado o en la cola';

  @override
  String get downloadPickStream => '¿Qué stream descargar?';

  @override
  String get downloadPickSubtitle => '¿Qué subtítulo descargar?';

  @override
  String get downloadPickAudio => '¿Qué pista de audio descargar?';

  @override
  String get downloadNoAudio => 'Sin audio extra';

  @override
  String get downloadAudio => 'Audio';

  @override
  String get downloadNoSubtitle => 'Sin subtítulo';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'Este stream es una lista HLS. Para descargarlo hace falta el complemento FFmpeg.';

  @override
  String get downloadSourceMissing =>
      'La fuente de este episodio no está instalada';

  @override
  String get downloadWaitingConnection => 'Esperando conexión';

  @override
  String get downloadSubtitles => 'Subtítulos';

  @override
  String get downloadDownloaded => 'Descargado';

  @override
  String get downloadOffline => 'Sin conexión';

  @override
  String get downloadDelete => 'Eliminar descarga';

  @override
  String get downloadCancel => 'Cancelar';

  @override
  String get downloadPause => 'Pausar';

  @override
  String get downloadPaused => 'En pausa';

  @override
  String get downloadResume => 'Reanudar';

  @override
  String get downloadPauseAll => 'Pausar todo';

  @override
  String get downloadResumeAll => 'Reanudar todo';

  @override
  String get downloadQueuedState => 'Esperando en la cola';

  @override
  String get downloadResolving => 'Obteniendo el stream…';

  @override
  String get downloadUsedFallback =>
      'Ningún stream coincide, se usó el primero';

  @override
  String get downloadTabQueue => 'Cola';

  @override
  String get downloadTabDone => 'Listo';

  @override
  String get downloadTabFailed => 'Fallido';

  @override
  String get downloadEmptyQueue => 'No se está descargando nada';

  @override
  String get downloadEmptyDone => 'Aún no hay nada descargado';

  @override
  String get downloadEmptyFailed => 'No hay descargas fallidas';

  @override
  String get downloadNext => 'Siguiente episodio';

  @override
  String downloadNextN(int count) {
    return 'Siguientes $count episodios';
  }

  @override
  String downloadUnwatched(int count) {
    return 'Todos los no vistos ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'Este rango ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'Todos los episodios ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count episodios en cola',
      one: '1 episodio en cola',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name descargado';
  }

  @override
  String downloadFailedBody(String name) {
    return '$name no se pudo descargar';
  }

  @override
  String downloadStorage(String size) {
    return '$size usados por las descargas';
  }

  @override
  String get downloadQueueHeader => 'Cola';

  @override
  String get downloadParallel => 'Descargas simultáneas';

  @override
  String get downloadParallelDesc =>
      'Ejecuta una descarga a la vez o varias juntas';

  @override
  String get downloadOneByOne => 'Una por una';

  @override
  String get downloadNotifications => 'Notificaciones de descargas';

  @override
  String get downloadNotificationsDesc =>
      'Progreso en vivo donde el sistema lo permita, y si no, un aviso cuando termine una descarga';

  @override
  String get downloadNotifyLive => 'En vivo';

  @override
  String get downloadNotifyDone => 'Al terminar';

  @override
  String get downloadNotifyOff => 'Desactivadas';

  @override
  String get downloadInfoFile =>
      'Escribir un archivo de info junto a cada descarga';

  @override
  String get downloadInfoFileDesc =>
      'Guarda el stream, la calidad, el subtítulo y los tiempos de salto en un pequeño archivo .json';

  @override
  String get offlineHeader => 'Sin conexión';

  @override
  String get offlineModeDesc =>
      'Auto solo pasa a sin conexión cuando la app arranca sin conexión. Siempre se queda sin conexión hasta que lo cambies.';

  @override
  String get offlineModeOff => 'Desactivado';

  @override
  String get offlineModeAlways => 'Siempre';

  @override
  String get offlineModeOn =>
      'El modo sin conexión está activado. Los cambios se guardan aquí y se envían cuando vuelvas a tener conexión.';

  @override
  String get offlineSaved =>
      'Guardado en este dispositivo, se sincronizará cuando tengas conexión';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cambios sincronizados',
      one: '1 cambio sincronizado',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cambios esperando sincronizarse',
      one: '1 cambio esperando sincronizarse',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'Cambios esperando sincronizarse';

  @override
  String get offlinePendingNone => 'Nada en espera';

  @override
  String get offlineSyncNow => 'Sincronizar ahora';

  @override
  String get offlineDiscard => 'Descartar';

  @override
  String get downloadNotOffline =>
      'Este episodio no está descargado, así que no está disponible sin conexión';

  @override
  String get offlineModeChip => 'Sin conexión';

  @override
  String get downloadNextChapter => 'Capítulo siguiente';

  @override
  String downloadNextChapters(int count) {
    return 'Siguientes $count capítulos';
  }

  @override
  String downloadUnread(int count) {
    return 'Todos los no leídos ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'Todos los capítulos ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total páginas';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count páginas';
  }

  @override
  String get downloadFfmpegTitle => 'Hace falta el complemento FFmpeg';

  @override
  String get downloadFfmpegBody =>
      'Este stream es una lista HLS. El complemento FFmpeg une sus partes en un solo archivo mp4. Sin él, las partes se guardan en una carpeta del episodio y se reproducen desde ahí.';

  @override
  String get downloadFfmpegInstall => 'Instalar';

  @override
  String get downloadFfmpegInstalling =>
      'Instalando FFmpeg, puede tardar un rato…';

  @override
  String get downloadFinishing => 'Uniendo las partes en un solo archivo…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total partes';
  }

  @override
  String get downloadTorrentNoFile =>
      'El torrent no tiene ningún archivo de vídeo para descargar';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Descargando $count elementos',
      one: 'Descargando 1 elemento',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'Eliminar descargas vistas';

  @override
  String get downloadAutoDeleteDesc =>
      'Quita una descarga cuando tu progreso llega a ese episodio o capítulo';

  @override
  String get downloadConnections => 'Conexiones por descarga';

  @override
  String get downloadConnectionsDesc =>
      'Divide un archivo grande en partes que se obtienen a la vez. Algunos servidores lo limitan.';

  @override
  String get downloadPlayChoice => 'Reproducir desde';

  @override
  String get downloadPlayLocalDesc => 'El archivo guardado en este dispositivo';

  @override
  String get downloadPlayStream => 'Ver en línea';

  @override
  String get downloadPlayStreamDesc => 'Carga el episodio desde la fuente';

  @override
  String get offlineFeedTitle => 'Descargado en este dispositivo';

  @override
  String get offlineFeedEmpty =>
      'Descarga algo cuando tengas conexión y aparecerá aquí';

  @override
  String get offlineEnabled => 'El modo sin conexión está activado';

  @override
  String get offlineDisabled => 'El modo sin conexión está desactivado';

  @override
  String get downloadReadChoice => 'Leer desde';

  @override
  String get downloadReadLocalDesc =>
      'Las páginas guardadas en este dispositivo';

  @override
  String get downloadReadOnline => 'Leer en línea';

  @override
  String get downloadReadOnlineDesc => 'Carga el capítulo desde la fuente';

  @override
  String downloadDeleteConfirm(String name) {
    return '¿Eliminar $name de este dispositivo?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return '¿Cancelar la descarga de $name? Lo que ya se descargó se elimina.';
  }

  @override
  String get downloadFfmpegFolder => 'Conservar como carpeta';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          '¿Descartar $count cambios que nunca se enviaron? No se puede deshacer.',
      one: '¿Descartar el cambio que nunca se envió? No se puede deshacer.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Esperando Wi-Fi';

  @override
  String get downloadWaitingMetered =>
      'En pausa por conexión de datos limitados';

  @override
  String get downloadWifiOnly => 'Solo Wi-Fi';

  @override
  String get downloadWifiOnlyDesc =>
      'Las descargas esperan mientras uses datos móviles';

  @override
  String get downloadMetered => 'Pausar en conexiones limitadas';

  @override
  String get downloadMeteredDesc =>
      'También espera en Wi-Fi que tu dispositivo marque como de datos limitados';

  @override
  String get downloadSpeedLimit => 'Límite de velocidad';

  @override
  String get downloadSpeedLimitDesc => 'Limita la velocidad total de descarga';

  @override
  String get downloadUnlimited => 'Sin límite';

  @override
  String get downloadMoveToTop => 'Mover arriba';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds seeds · $peers peers';
  }

  @override
  String get downloadTorrentFile => '¿Qué archivo?';

  @override
  String get downloadTorrentAuto => 'Asociar el episodio automáticamente';

  @override
  String get downloadTorrentLoading => 'Leyendo el torrent…';

  @override
  String get watchAutoSource => 'Pasar a la siguiente fuente automáticamente';

  @override
  String get watchAutoSourceDesc =>
      'Si la fuente no encuentra el título o falla al cargar, prueba la siguiente fuente instalada';

  @override
  String get extensionTest => 'Probar extensiones';

  @override
  String get extensionTestCopy => 'Copia los fallos y sus registros';

  @override
  String get extensionTestQuery => 'Término de búsqueda';

  @override
  String get extensionTestRun => 'Ejecutar';

  @override
  String get extensionTestStop => 'Detener';

  @override
  String get extensionTestNone => 'No hay extensiones instaladas de este tipo';

  @override
  String get extensionTestNotRun => 'Aún sin probar';

  @override
  String get extensionTestSearch => 'Buscar';

  @override
  String get extensionTestDetail => 'Detalles';

  @override
  String get extensionTestUnits => 'Episodios / capítulos';

  @override
  String get extensionTestLinks => 'Streams / páginas';

  @override
  String extensionTestFailedAt(String step) {
    return 'Falló en $step';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$done de $total probadas · $passed correctas · $failed fallidas';
  }

  @override
  String get extensionTestCopyLogs => 'Copia todo con los registros completos';

  @override
  String get onboardingFeaturesTitle => 'Todo en un solo lugar';

  @override
  String get onboardingFeaturesBody =>
      'Todo lo que sigues, ves y lees, sin hacer malabares con apps.';

  @override
  String get onboardingFeatureTrack => 'Sigue todo';

  @override
  String get onboardingFeatureTrackDesc =>
      'Listas, progreso y puntuaciones en AniList, MyAnimeList, Simkl, Kitsu y MangaBaka.';

  @override
  String get onboardingFeatureWatch => 'Ver y leer';

  @override
  String get onboardingFeatureWatchDesc =>
      'Instala extensiones y ve anime en streaming o lee manga y novelas directamente en la app.';

  @override
  String get onboardingFeatureOffline => 'Llévatelo sin conexión';

  @override
  String get onboardingFeatureOfflineDesc =>
      'Descarga episodios y capítulos y sigue sin conexión.';

  @override
  String get onboardingFeatureSync => 'Mantén las listas sincronizadas';

  @override
  String get onboardingFeatureSyncDesc =>
      'Replica tu lista entre servicios, o deja que gane el que vaya más avanzado.';

  @override
  String get onboardingServices => 'Funciona con';

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
