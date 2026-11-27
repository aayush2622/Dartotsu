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
  String get trakt => 'Trakt';

  @override
  String get kitsu => 'Kitsu';

  @override
  String get comick => 'Comick';

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
  String get appLockBiometric => 'Desbloquear con biometría';

  @override
  String get appLockBiometricDesc =>
      'Utilice su huella digital o su rostro en lugar de escribir el código de acceso';

  @override
  String get appLockBiometricReason => 'Desbloquear Dartotsu';

  @override
  String get appLockDelay => 'Bloquear cuando esté inactivo';

  @override
  String get appLockDelayAlways => 'siempre';

  @override
  String get appLockDelayNever => 'nunca';

  @override
  String appLockDelayAfter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutos',
      one: '1 minuto',
    );
    return 'Después $_temp0';
  }

  @override
  String get appLockUseBiometric => 'Utilice la biometría';

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
      other: '$count actualizaciones disponibles',
      one: '1 actualización disponible',
    );
    return '$_temp0';
  }

  @override
  String get updateAll => 'Actualizar todo';

  @override
  String extensionsUpdated(int done, int total) {
    return '$done de $total extensiones actualizadas';
  }

  @override
  String get updateConflictTitle => 'Actualización no instalada';

  @override
  String updateConflictBody(String names) {
    return '$names no se pudo instalar sobre la versión existente. Esto normalmente significa que la copia instalada fue firmada de manera diferente. ¿Desinstalarlo e instalar la nueva versión?';
  }

  @override
  String get updateConflictAction => 'Desinstalar y reinstalar';

  @override
  String get noSourceSettings => 'La fuente no tiene ajustes';

  @override
  String get addPluginRepository => 'Añadir repositorio de plugins';

  @override
  String get pluginIndexUrlHint => 'URL del índice de plugins';

  @override
  String get addRepository => 'Añadir repositorio';

  @override
  String get importRepositoryFile => 'Importar un archivo';

  @override
  String get pluginRepoUpdated => 'Repositorio de plugins actualizado';

  @override
  String get pluginRepoUpdateFailed =>
      'No se pudo actualizar el repositorio de plugins';

  @override
  String get ok => 'bien';

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
  String get manageServices => 'Servicios de medios';

  @override
  String get manageServicesDesc =>
      'Reordena los servicios y elige cuáles se muestran en el selector';

  @override
  String get manageServicesHint =>
      'Arrastra para reordenar, apaga los que no usas';

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
  String get settingsGeneral => 'generales';

  @override
  String get settingsGeneralDesc => 'Idioma y comportamiento';

  @override
  String get settingsNetwork => 'Red';

  @override
  String get settingsNetworkDesc => 'User agent, certificates, DNS and proxy';

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
  String get stories => 'Historias';

  @override
  String get watchOrder => 'Orden de reloj';

  @override
  String get watchOrderOpenSite => 'Abierto en chiaki.site';

  @override
  String get watchOrderUnavailable =>
      'No se encontró ningún orden de visualización para este título.';

  @override
  String get watchOrderOpenFailed => 'No se pudo abrir ese título';

  @override
  String get watchOrderCurrent => 'tu estas aqui';

  @override
  String get watchOrderCredit => 'Ver pedidos por chiaki.site';

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
  String get settingsSync => 'Configuración de sincronización';

  @override
  String get settingsSyncDesc =>
      'Mantenga su configuración igual en todos los dispositivos. Se almacenan en una esencia privada en su cuenta de GitHub.';

  @override
  String get settingsSyncSwitch => 'Sincronización al cambiar';

  @override
  String get settingsSyncModeGithub => 'GitHub';

  @override
  String get settingsSyncSignIn => 'Iniciar sesión con GitHub';

  @override
  String get settingsSyncSignInDesc =>
      'La configuración se almacena en una esencia privada en su cuenta.';

  @override
  String get settingsSyncToken => 'Utilice un token de acceso personal';

  @override
  String get settingsSyncTokenDesc =>
      'Cree uno en github.com/settings/tokens con solo el permiso esencial';

  @override
  String get settingsSyncTokenField => 'ficha';

  @override
  String settingsSyncSignedIn(Object user) {
    return 'Iniciado sesión como $user';
  }

  @override
  String get settingsSyncSignOut => 'Cerrar sesión';

  @override
  String settingsSyncCode(Object code) {
    return 'Ingrese $code en GitHub';
  }

  @override
  String get settingsSyncCodeDesc =>
      'La página de GitHub se abrió en su navegador. Toque para copiar el código o toque y mantenga presionado para cancelar.';

  @override
  String get settingsSyncSignInFailed => 'No se pudo iniciar sesión en GitHub';

  @override
  String get dcPreview => 'Vista previa';

  @override
  String get dcSampleWatching => 'mirando';

  @override
  String get dcSampleReading => 'leyendo';

  @override
  String get dcSampleBrowsing => 'Navegando';

  @override
  String get dcSampleLive => 'Ahora mismo';

  @override
  String get dcLiveNothing =>
      'No se muestra nada en este momento. Abre un título, inicia un episodio o un capítulo y aparece aquí.';

  @override
  String get dcMemberList => 'En la lista de miembros';

  @override
  String get dcAccount => 'cuenta';

  @override
  String get dcSignIn => 'Iniciar sesión con discordia';

  @override
  String get dcSignOut => 'Cerrar sesión';

  @override
  String get dcDesktopHint =>
      'Sin conectarse, Discord muestra \"Watching Dartotsu\" a través de la aplicación de escritorio. Conecte Discord para nombrar la actividad después de su título, incluso en dispositivos móviles.';

  @override
  String get dcMobileHint =>
      'Conecta Discord para mostrar lo que estás viendo o leyendo. Utiliza la página de autorización de Discord, no el token de su cuenta.';

  @override
  String get dcConnect => 'Conectar discordia';

  @override
  String get dcConnectDesc =>
      'Abre la página de autorización de Discord y agrega Dartotsu en Aplicaciones autorizadas. Discord pide actualizar su presencia. Solo se guarda un token de actualización, no el token de su cuenta.';

  @override
  String get dcConnectFailed => 'No se pudo conectar Discord';

  @override
  String get dcConnectedSnack => 'Discordia conectada';

  @override
  String get dcDisconnect => 'Desconectar';

  @override
  String get dcDisconnectedSnack => 'Discordia desconectada';

  @override
  String get dcUseToken => 'Utilice una ficha en su lugar';

  @override
  String get dcRouteDesktop =>
      'A través de la aplicación de escritorio Discord';

  @override
  String get dcRouteHeadless => 'A través de tu cuenta';

  @override
  String get dcRouteGateway => 'A través de tu cuenta, en vivo';

  @override
  String get dcRouteLinked => 'Aplicación conectada';

  @override
  String get dcRouteNone => 'No conectado';

  @override
  String get dcStatusNeedsToken =>
      'Necesita una ficha de Discord. Conectar la aplicación no establece su estado en línea.';

  @override
  String get dcAccountOnly => 'Necesita una cuenta iniciada';

  @override
  String get dcStatusSection => 'Estado';

  @override
  String get dcControlStatus => 'Controlar mi estado';

  @override
  String get dcControlStatusDesc =>
      'Mantiene una conexión en vivo con Discord mientras Rich Presence está activado, para que Dartotsu pueda establecer su estado.';

  @override
  String get dcStatusOnline => 'En línea';

  @override
  String get dcStatusIdle => 'inactivo';

  @override
  String get dcStatusDnd => 'no molestar';

  @override
  String get dcStatusInvisible => 'Invisibles';

  @override
  String get dcCustomStatus => 'Estado personalizado';

  @override
  String get dcCustomStatusHint => '¿Qué estás haciendo?';

  @override
  String get dcActivitySection => 'Actividad';

  @override
  String get dcShowWatching => 'Mostrar mientras miras';

  @override
  String get dcShowReading => 'Mostrar mientras lee';

  @override
  String get dcListening => 'escuchando';

  @override
  String get dcCompeting => 'Competir';

  @override
  String get dcActivityName => 'Nombre de la actividad';

  @override
  String get dcNameApp => 'Dartotsu';

  @override
  String get dcNameTitle => 'Título';

  @override
  String get dcNameCustom => 'personalizado';

  @override
  String get dcCustomNameHint =>
      'Nombre que se muestra después de \"Observando\"';

  @override
  String get dcStatusText => 'Texto de estado';

  @override
  String get dcStatusTextDesc =>
      'Lo que muestra la lista de miembros junto a tu nombre';

  @override
  String get dcDisplayName => 'Nombre';

  @override
  String get dcDisplayState => 'Estado';

  @override
  String get dcDisplayDetails => 'Detalles';

  @override
  String get dcTextSection => 'Texto';

  @override
  String get dcDetails => 'línea superior';

  @override
  String get dcState => 'En pocas palabras';

  @override
  String get dcTemplateHint => 'Vacío usa el valor predeterminado';

  @override
  String get dcVariables => 'Toque para insertar un valor';

  @override
  String get dcImagesSection => 'Imágenes';

  @override
  String get dcLargeImage => 'Imagen grande';

  @override
  String get dcLargeAuto => 'Automático';

  @override
  String get dcLargeCover => 'Portada';

  @override
  String get dcLargeLogo => 'Logotipo';

  @override
  String get dcSmallImage => 'Imagen pequeña';

  @override
  String get dcSmallAuto => 'Logotipo';

  @override
  String get dcSmallNone => 'Ninguno';

  @override
  String get dcTimerStyle => 'Estilo de temporizador';

  @override
  String get dcTimerAuto => 'Automático';

  @override
  String get dcTimerElapsed => 'Transcurrido';

  @override
  String get dcTimerRemaining => 'restante';

  @override
  String get dcButtonsSection => 'Botones';

  @override
  String get dcButtonMedia => 'Enlace al título';

  @override
  String get dcButtonApp => 'Enlace a Dartotsu';

  @override
  String get dcButtonCustom => 'Botón personalizado';

  @override
  String get dcButtonLabel => 'Etiqueta';

  @override
  String get dcButtonUrl => 'Enlace';

  @override
  String get dcPrivacySection => 'Privacidad';

  @override
  String get dcPrivateText => 'Texto privado';

  @override
  String get dcPrivateHint => 'algo privado';

  @override
  String get dcTokenWarning =>
      'Iniciar sesión utiliza el token de su cuenta. Las reglas de Discord desaconsejan esto, así que úselo bajo su propio riesgo.';

  @override
  String get dcConnected => 'Conectado';

  @override
  String get dcConnection => 'Conexión';

  @override
  String get dcMethodDesktop => 'Aplicación de escritorio de discordia';

  @override
  String get dcMethodDesktopDesc =>
      'Se utiliza automáticamente cuando no hay nada más conectado. Discord tiene que estar abierto en esta computadora.';

  @override
  String get dcMethodToken => 'token de cuenta';

  @override
  String get dcInUse => 'En uso';

  @override
  String get dcRecommended => 'Recomendado';

  @override
  String get dcConnecting => 'Conectando…';

  @override
  String get dcDisconnected => 'No conectado';

  @override
  String dcSignedInAs(String name) {
    return 'Iniciado sesión como $name';
  }

  @override
  String get settingsSyncOn => 'encendido';

  @override
  String get settingsSyncCustom => 'personalizado';

  @override
  String get settingsSyncChangedHeader => 'Configuraciones cambiadas';

  @override
  String get settingsSyncNoneChanged =>
      'Aún no has cambiado ninguno de estos, por lo que no hay nada que sincronizar.';

  @override
  String get settingsSyncChangedOnly =>
      'Sólo se almacenan los ajustes que haya cambiado. Todo lo demás usa su configuración predeterminada en cada dispositivo. El icono de la nube muestra lo que ya hay en el servidor.';

  @override
  String get settingsSyncOffCategory =>
      'No sincronizar. Estos permanecen en este dispositivo y la copia del servidor se deja como está.';

  @override
  String get settingsSyncPartsNote =>
      'Por dispositivo. Desactivado mantiene el valor propio de cada dispositivo, por lo que un teléfono y un televisor pueden diferir.';

  @override
  String get settingsSyncPartSubtitles => 'Tamaño y colores de los subtítulos.';

  @override
  String get settingsSyncPartSubtitlesDesc =>
      'Tamaño, peso, colores y posición.';

  @override
  String get settingsSyncPartPictureColors => 'Colores de la imagen';

  @override
  String get settingsSyncPartPictureColorsDesc =>
      'Brillo, contraste, saturación, gamma, tono y HDR';

  @override
  String get settingsSyncPartPalette => 'Colores del tema';

  @override
  String get settingsSyncPartPaletteDesc =>
      'Tema, color de acento y negro OLED';

  @override
  String get settingsSyncCatOther => 'Ver, leer y servicios.';

  @override
  String get settingsSyncTitles => 'Ver progreso y títulos.';

  @override
  String settingsSyncTitlesCount(Object records, Object resume) {
    return '$records títulos y $resume entradas de currículum en el servidor';
  }

  @override
  String get settingsSyncTitlesNone => 'Aún no se ha subido nada';

  @override
  String get settingsSyncTitlesNote =>
      'Mire y lea posiciones, la estantería de currículums, sus listas locales, marcadores, aspectos destacados y opciones por título. Las coincidencias de origen y las transmisiones permanecen en cada dispositivo porque dependen de sus extensiones. Los títulos se cargan como máximo cada 45 segundos.';

  @override
  String get settingsSyncConnect => 'No conectado';

  @override
  String get settingsSyncConnectDesc =>
      'Inicie sesión con GitHub para mantener la misma configuración en todos los dispositivos.';

  @override
  String get settingsSyncFailedTitle => 'Error de sincronización';

  @override
  String get settingsSyncPaused => 'En pausa';

  @override
  String get settingsSyncPausedDesc =>
      'Mientras esto esté desactivado, no se carga ni descarga nada.';

  @override
  String get settingsSyncUpToDate => 'actualizado';

  @override
  String get settingsSyncRetry => 'Reintentar';

  @override
  String get settingsSyncAccount => 'cuenta GitHub';

  @override
  String get settingsSyncAccountDesc =>
      'Sus datos van a una esencia privada en su propia cuenta.';

  @override
  String get settingsSyncWaiting => 'Esperando que lo apruebes en GitHub';

  @override
  String get settingsSyncCopyCode => 'Toca el código para copiarlo';

  @override
  String get settingsSyncCancel => 'Cancelar';

  @override
  String get settingsSyncStatSettings => 'Configuración';

  @override
  String get settingsSyncStatTitles => 'Títulos';

  @override
  String get settingsSyncStatShelf => 'Currículum';

  @override
  String settingsSyncUploaded(Object time, Object device) {
    return 'Subido $time desde $device';
  }

  @override
  String settingsSyncChanged(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cambió',
      one: '1 cambiado',
      zero: 'Nada ha cambiado todavía',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncSecrets => 'Cuentas y contraseñas';

  @override
  String get settingsSyncSecretsDesc =>
      'Sincronice sus inicios de sesión (AniList, MAL, Kitsu, Simkl, MangaBaka, MangaUpdates), claves API y bloqueo de aplicaciones entre sus dispositivos. Están cifrados con una frase de contraseña que permanece en sus dispositivos, por lo que GitHub nunca los ve.';

  @override
  String get settingsSyncSecretsOn =>
      'Las cuentas están sincronizadas y encriptadas';

  @override
  String get settingsSyncSecretsOnDesc =>
      'Cerrar sesión en un dispositivo no significa cerrar sesión en los demás.';

  @override
  String get settingsSyncSecretsBroken =>
      'La frase de contraseña ya no coincide con la del servidor. Ingrese nuevamente para seguir sincronizando cuentas.';

  @override
  String get settingsSyncPassphraseSet => 'Establecer una frase de contraseña';

  @override
  String get settingsSyncPassphraseEnter => 'Ingrese su contraseña';

  @override
  String get settingsSyncPassphraseField => 'frase de contraseña';

  @override
  String get settingsSyncPassphraseConfirm => 'Repita la frase de contraseña';

  @override
  String get settingsSyncPassphraseNew =>
      'Elija una frase de contraseña de al menos 6 caracteres. No se almacena en ningún otro lugar excepto en sus dispositivos y no se puede recuperar. Si lo olvida, elimine la copia del servidor y comience de nuevo.';

  @override
  String get settingsSyncPassphraseExisting =>
      'Ingrese la frase de contraseña que eligió en su otro dispositivo. Las cuentas de este dispositivo serán reemplazadas por las sincronizadas.';

  @override
  String get settingsSyncPassphraseWrong => 'Frase de contraseña incorrecta';

  @override
  String get settingsSyncPassphraseMismatch =>
      'Las frases de contraseña no coinciden';

  @override
  String get settingsSyncPassphraseShort => 'Utilice al menos 6 caracteres';

  @override
  String get settingsSyncSecretsStop => 'Dejar de sincronizar cuentas';

  @override
  String get settingsSyncSecretsDelete => 'Eliminar de GitHub';

  @override
  String get settingsSyncSecretsDeleteMessage =>
      'Esto elimina el archivo de cuentas cifradas de su esencia. Otros dispositivos mantienen sus inicios de sesión y pueden establecer una nueva frase de contraseña.';

  @override
  String get settingsSyncWhat => 'Qué sincronizar';

  @override
  String get settingsSyncServer => 'en el servidor';

  @override
  String get settingsSyncServerEmpty => 'Aún no se ha subido nada';

  @override
  String settingsSyncServerInfo(Object count, Object time, Object device) {
    return 'Configuración de $count, cargada $time desde $device';
  }

  @override
  String get settingsSyncThisDevice => 'este dispositivo';

  @override
  String settingsSyncCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count configuración en el servidor',
      one: '1 configuración en el servidor',
      zero: 'Nada en el servidor',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncNow => 'Sincronizar ahora';

  @override
  String get settingsSyncRunning => 'Sincronizando…';

  @override
  String get settingsSyncNever => 'Aún no sincronizado';

  @override
  String settingsSyncLast(Object time) {
    return 'Última sincronización $time';
  }

  @override
  String settingsSyncFailed(Object error) {
    return 'Error de sincronización: $error';
  }

  @override
  String get settingsSyncScope =>
      'Solo se sincronizan las configuraciones que funcionan igual en todas partes. Las cuentas, tokens, carpetas, extensiones, notificaciones, Discord, actualizaciones y tamaño de ventana permanecen en cada dispositivo.';

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
  String get autoUpdateRuntimes =>
      'Actualizar los tiempos de ejecución de las extensiones automáticamente';

  @override
  String get autoUpdateRuntimesDesc =>
      'Descargue nuevas versiones de Aniyomi, CloudStream y otras versiones de tiempo de ejecución en segundo plano. Desactivado, aparece un icono de actualización junto al administrador.';

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
  String get backupPasswordRequired =>
      'Contraseña (requerida para los datos de la cuenta)';

  @override
  String get backupProtectedNeedsPassword =>
      'Establezca una contraseña para hacer una copia de seguridad de los datos de la cuenta o desmárquela';

  @override
  String get backupProtectedSkipped =>
      'Esta copia de seguridad no tiene contraseña, por lo que se omitieron los datos de su cuenta.';

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
  String get backupCatCommon => 'generales';

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
  String get logDelete => 'Eliminar archivos de registro';

  @override
  String get logDeleteDesc =>
      'Borre los registros de aplicaciones guardados para liberar espacio';

  @override
  String logDeleted(String size) {
    return 'Eliminado $size de registros';
  }

  @override
  String get missingSequel => 'Secuela perdida';

  @override
  String get rising => 'en ascenso';

  @override
  String get stacks => 'pilas';

  @override
  String get stacksAll => 'Todos';

  @override
  String get stacksFeatured => 'Destacado';

  @override
  String get stacksMine => 'tuyo';

  @override
  String get stacksSaved => 'Guardado';

  @override
  String get stacksFollowing => 'Siguiendo';

  @override
  String get stacksEmpty => 'Aún no hay pilas aquí';

  @override
  String get stacksSignIn => 'Inicia sesión en MangaBaka para ver tus pilas';

  @override
  String get stacksScopeNeeded =>
      'Tus pilas necesitan un nuevo permiso. Inicie sesión en MangaBaka nuevamente para permitirlo.';

  @override
  String get stacksSignInAgain => 'Iniciar sesión nuevamente';

  @override
  String get stacksCouldntLoad => 'No se pudieron cargar las pilas';

  @override
  String stackSeriesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Serie $count',
      one: '1 serie',
    );
    return '$_temp0';
  }

  @override
  String stackSavesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count guarda',
      one: '1 guardado',
    );
    return '$_temp0';
  }

  @override
  String stackBy(String name) {
    return 'por $name';
  }

  @override
  String get stackSpoilers => 'Spoilers';

  @override
  String get stackEmptyEntries => 'Esta pila está vacía';

  @override
  String get stackSave => 'Guardar pila';

  @override
  String get stackUnsave => 'Quitar de guardado';

  @override
  String get stackSavedToast => 'Guardado en tus pilas';

  @override
  String get stackRemovedToast => 'Eliminado de tus pilas guardadas';

  @override
  String userStacks(String name) {
    return 'Pilas por $name';
  }

  @override
  String get newsTitle => 'Noticias';

  @override
  String get newsEmpty => 'No hay noticias ahora mismo';

  @override
  String get newsCouldntLoad => 'No se pudo cargar la noticia';

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
  String get followCoverMediaOnly => 'Sólo para medios';

  @override
  String get followCoverMediaOnlyDesc =>
      'Solo sigue la portada en las páginas de medios, en el resto se mantienen los colores normales.';

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
  String get proxy => 'apoderado';

  @override
  String get proxyProtocol => 'Tipo';

  @override
  String get proxyHost => 'Anfitrión';

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
  String get imageTitlePage => 'Página';

  @override
  String get imageTitleBanner => 'pancarta';

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
  String get supportDeveloper => 'Apoya al desarrollador';

  @override
  String get buyMeCoffee => 'Cómprame un café';

  @override
  String get upiId => 'ID de UPI';

  @override
  String get upiCopied => 'ID de UPI copiado';

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
  String get onboardingLanguageBody =>
      'Elige el idioma en el que se muestra Dartotsu. Puedes cambiarlo más tarde en Configuración.';

  @override
  String get onboardingPaletteTitle => 'Hazla tuya';

  @override
  String get onboardingPaletteBody =>
      'Elige una paleta. Todos los acentos, de las tarjetas al reproductor, la siguen.';

  @override
  String get themeModeAuto => 'Automático';

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
    return 'Capítulo $n';
  }

  @override
  String get calendarExpected => 'esperado';

  @override
  String get castReceiverFailed => 'El Chromecast no inició su reproductor';

  @override
  String get castPlaybackFailed =>
      'El dispositivo no pudo reproducir esta transmisión.';

  @override
  String get shortcutNothingToContinue => 'Nada para continuar todavía';

  @override
  String shortcutNoCalendar(String service) {
    return '$service no tiene calendario';
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
  String get comickLoginFailed => 'Error al iniciar sesión en Comick';

  @override
  String get tagline => 'Lema';

  @override
  String get trending => 'Tendencia';

  @override
  String get anticipated => 'Anticipado';

  @override
  String get watchlist => 'Lista de vigilancia';

  @override
  String get recommendedShows => 'Espectáculos recomendados';

  @override
  String get recommendedMovies => 'Películas recomendadas';

  @override
  String get boxOffice => 'Taquilla';

  @override
  String get popularMovies => 'Películas populares';

  @override
  String get popularShows => 'Espectáculos populares';

  @override
  String get anticipatedMovies => 'Películas esperadas';

  @override
  String get anticipatedShows => 'Espectáculos anticipados';

  @override
  String get trendingShows => 'Programas de tendencia';

  @override
  String get mostWatchedThisWeek => 'Lo más visto esta semana';

  @override
  String get sortMostViewed => 'Lo más visto';

  @override
  String get sortMostFollowed => 'Los más seguidos';

  @override
  String get sortLatestUpdates => 'Últimas actualizaciones';

  @override
  String get translationStatusLabel => 'Traducción';

  @override
  String get weeklySchedule => 'Horario semanal';

  @override
  String get mostFollowed => 'Más seguido';

  @override
  String get latestUpdates => 'Últimas actualizaciones';

  @override
  String get trendingAnime => 'Anime de tendencia';

  @override
  String get topRatedAnime => 'Animes mejor valorados';

  @override
  String get mostFollowedAnime => 'Animes más seguidos';

  @override
  String get comickProfile => 'perfil cómico';

  @override
  String get refreshFromComick => 'Actualizar desde Comick';

  @override
  String get mangaBakaProfile => 'Perfil de MangaBaka';

  @override
  String get refreshFromMangaBaka => 'Actualizar desde MangaBaka';

  @override
  String get mangaUpdatesLoginTitle => 'Iniciar sesión en MangaUpdates';

  @override
  String get mangaUpdatesProfile => 'MangaActualizaciones perfil';

  @override
  String get mangaUpdatesAnimeStart => 'Comienza la adaptación al anime';

  @override
  String get mangaUpdatesAnimeEnd => 'Finaliza la adaptación al anime';

  @override
  String get refreshFromMangaUpdates => 'Actualizar desde MangaUpdates';

  @override
  String get usernameOnly => 'Nombre de usuario';

  @override
  String get releases => 'Lanzamientos';

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
  String get hideNsfwSourcesDesc =>
      'Oculte las fuentes marcadas como 18+ de los feeds y del selector de fuentes. Quedan instalados.';

  @override
  String get hideNsfwDesc =>
      'Mantén los títulos para adultos fuera de los feeds y la búsqueda, y ve tus propias entradas para adultos en Medios ocultos.';

  @override
  String get kitsuAccountOptions => 'Opciones de la cuenta de Kitsu';

  @override
  String get mangaBakaAccountOptions => 'Opciones de tu cuenta de MangaBaka';

  @override
  String get comickAccountOptions => 'Opciones de cuenta Comick';

  @override
  String get comickClientId => 'ID de cliente de Comick';

  @override
  String get comickClientIdDesc =>
      'ID de cliente personalizado registrado en comick.dev';

  @override
  String get traktClientId => 'Trakt Client ID';

  @override
  String get traktClientIdDesc =>
      'Sign in with your own Trakt app instead of the built-in one';

  @override
  String get traktCreateApp => 'Create a Trakt app';

  @override
  String get traktCreateAppDesc => 'Opens your apps on trakt.tv';

  @override
  String traktRedirectHelp(String uris) {
    return 'On trakt.tv/oauth/applications create an app and add these Redirect URIs, one per line:\n\n$uris\n\nThen paste its Client ID here, save and sign in again.';
  }

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
  String get traktReadOnly => 'Trakt obtuvo acceso de solo lectura';

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
  String get followsMutual => 'Mutuo';

  @override
  String get followsNotMutual => 'No mutuo';

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
  String get voiceActors => 'Actores de voz';

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
  String get prequel => 'Precuela';

  @override
  String get sequel => 'Secuela';

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
  String get traktProfile => 'Perfil de ruta';

  @override
  String get refreshFromSimkl => 'Actualizar desde Simkl';

  @override
  String get refreshFromTrakt => 'Actualizar desde Trakt';

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
  String get traktAttribution =>
      'Datos e ilustraciones proporcionados por Trakt. Ver en Trakt';

  @override
  String get listsLiked => 'Me gustó';

  @override
  String get listsYours => 'tuyo';

  @override
  String get traktVip => 'vip';

  @override
  String get traktVipMember => 'Miembro VIP de Trakt';

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
  String get simklMoviesOnly => 'Solo películas y series';

  @override
  String get simklMoviesOnlyDesc =>
      'Reemplaza la pestaña Anime: primero Películas, luego Programas con un par de filas de anime';

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
  String get trailerQuality => 'Calidad del remolque';

  @override
  String get titleCopied => 'Título copiado';

  @override
  String get linkCopied => 'Enlace copiado';

  @override
  String get watchTrailer => 'Ver tráiler';

  @override
  String get copyTitle => 'Copiar título';

  @override
  String get detailStale =>
      'No se pudo contactar con AniList. Esta es información guardada y puede estar desactualizada.';

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
  String get allCustomLists => 'Todas las listas personalizadas';

  @override
  String get simklTitleLanguage => 'Idioma del título del anime.';

  @override
  String get titleLanguageEnglish => 'ingles';

  @override
  String get titleLanguageRomaji => 'Romaji';

  @override
  String get simklListsTrending => 'Tendencia';

  @override
  String get simklListsMostLiked => 'Lo que más me gustó';

  @override
  String get simklListsMostFollowed => 'Los más seguidos';

  @override
  String get simklListsOfficial => 'Oficial';

  @override
  String simklListTitles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count títulos',
      one: '1 título',
    );
    return '$_temp0';
  }

  @override
  String get people => 'gente';

  @override
  String get mostComments => 'La mayoría de los comentarios';

  @override
  String get alphabetical => 'Alfabéticamente';

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
  String get notInList => 'No en la lista';

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
  String get cardNormal => 'normales';

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
  String get animePlanetRank => 'Rango';

  @override
  String get animePlanetMagazine => 'Revista';

  @override
  String get animePlanetRefreshLists => 'Actualiza tus listas';

  @override
  String get animePlanetRefreshListsDesc =>
      'Lee tus listas de Anime-Planet nuevamente';

  @override
  String get animePlanetLocalNote =>
      'Inicia sesión para guardar los cambios en tu cuenta de Anime-Planet. Hasta entonces permanecen en este dispositivo.';

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
  String get anime => 'animado';

  @override
  String get manga => 'manga';

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
  String get sectionSocial => 'sociales';

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
  String get firstTab => 'Primera pestaña';

  @override
  String get firstTabDesc =>
      'Qué extensiones muestra la primera pestaña. Elija manga aquí y novela en la pestaña de lectura para eliminar anime de la barra';

  @override
  String get novelExtensions => 'Extensiones novedosas';

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
    return '$count animado';
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
  String get openings => 'Aperturas';

  @override
  String get endings => 'Terminaciones';

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
  String get year => 'Año';

  @override
  String get filterAny => 'Cualquiera';

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
  String get unfinished => 'Sin terminar';

  @override
  String get planned => 'Planeado';

  @override
  String get trailers => 'Tráileres';

  @override
  String get ratings => 'Valoraciones';

  @override
  String get originalTitle => 'Originales';

  @override
  String get titleLabel => 'Título';

  @override
  String get votes => 'Votos';

  @override
  String get watchedStat => 'Visto';

  @override
  String get runtime => 'Duración';

  @override
  String get director => 'Directora';

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
  String get died => 'Murió';

  @override
  String get birthplace => 'Lugar de nacimiento';

  @override
  String get department => 'Departamento';

  @override
  String get website => 'Sitio web';

  @override
  String get established => 'Fundación';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'manhua';

  @override
  String get novels => 'Novelas';

  @override
  String get thisMonth => 'Este mes';

  @override
  String get movies => 'Películas';

  @override
  String get shows => 'Series';

  @override
  String get moviesWatched => 'Películas vistas';

  @override
  String get showsWatched => 'Programas vistos';

  @override
  String get moviesCollected => 'Películas recopiladas';

  @override
  String get showsCollected => 'Espectáculos recopilados';

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
    return '$title · Locales';
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
  String splitSection(String section, String kind) {
    return '$section · $kind';
  }

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
    return '¿Agregar este repositorio?\n\n$url\n\nAgregue únicamente repositorios de fuentes en las que confíe.';
  }

  @override
  String get errorGettingAnilistData => 'Error al obtener datos de AniList.';

  @override
  String get navInfo => 'INFORMACIÓN';

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
  String get feed => 'alimentar';

  @override
  String get stats => 'Estadísticas';

  @override
  String get received => 'Recibidos';

  @override
  String get sent => 'Enviados';

  @override
  String get global => 'Mundial';

  @override
  String get couldntLoadPage => 'No se pudo cargar esta página';

  @override
  String get couldntLoadAllDetails =>
      'No se pudieron cargar todos los detalles';

  @override
  String get series => 'Serie';

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
  String updatePluginTitle(String name) {
    return 'Actualizar $name';
  }

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
  String syncServiceOn(String name) {
    return 'Sincronizar con $name';
  }

  @override
  String get syncDelete => 'Eliminar lo que no tiene el servicio principal';

  @override
  String get syncDeleteDesc =>
      'Elimine entradas de los otros servicios que no estén en la lista principal. Solo se eliminan las entradas que pueden coincidir con un título, por lo que cosas como películas y series de Simkl permanecen';

  @override
  String get syncDeleteTitle => '¿Eliminar entradas?';

  @override
  String syncDeleteConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count entradas',
      one: '1 entrada',
    );
    return '$_temp0 que no estén en su lista principal serán eliminados de los demás servicios. Esto no se puede deshacer.';
  }

  @override
  String get syncDeleteAction => 'Borrar';

  @override
  String get syncToDelete => 'para eliminar';

  @override
  String get syncDeletedNote => 'será eliminado';

  @override
  String syncWillRemove(int count, String name) {
    return '$count se eliminará de $name';
  }

  @override
  String get syncOnlyForward => 'Conservar el mayor progreso';

  @override
  String get syncOnlyForwardDesc =>
      'No bajes el progreso de un servicio que ya va más adelantado';

  @override
  String get animePlanetWontWatch => 'no miraré';

  @override
  String get animePlanetWontRead => 'no leerá';

  @override
  String get animePlanetAlreadyOnList => 'Ya en esta lista';

  @override
  String get animePlanetNewList => 'Nuevo nombre de lista';

  @override
  String get syncPrivate => 'Entradas privadas';

  @override
  String get syncPrivateDesc =>
      'Qué hacer con las entradas que mantienes privadas. Un servicio con opción privada los vuelve privados; otros los mostrarían públicamente';

  @override
  String get syncPrivateModeAsk => 'preguntar';

  @override
  String get syncPrivateModeSync => 'Sincronizarlos';

  @override
  String get syncPrivateModeSkip => 'Saltarlos';

  @override
  String get syncPrivateTitle => 'Entradas privadas';

  @override
  String syncPrivateAsk(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Las entradas $count son privadas',
      one: '1 entrada es privada',
    );
    return '$_temp0. Los servicios con opción privada (AniList, Kitsu, MangaBaka) las obtendrán como privadas; los demás servicios no tienen opción privada y los mostrarían públicamente. ¿Sincronizarlos? Tu respuesta se recuerda; cámbielo en Opciones de sincronización.';
  }

  @override
  String get syncPrivateInclude => 'Sincronizarlos';

  @override
  String get syncPrivateSkip => 'Saltarlos';

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
  String syncRemoved(String services) {
    return 'Eliminado de $services';
  }

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
  String get commentsSpoiler => 'spoiler';

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
  String get trendzAnime => 'animado';

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
  String get groupsRoleAdmin => 'administrador';

  @override
  String get groupsRoleMod => 'Modificación';

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
  String get sourceTags => 'Etiquetas';

  @override
  String get sourceTagsHint =>
      'Etiqueta para qué sirve esta fuente. Un título enumera primero las fuentes etiquetadas y luego las no etiquetadas. Más de 18 fuentes solo se muestran para títulos para adultos.';

  @override
  String get sourceTagAnime => 'animado';

  @override
  String get sourceTagMovies => 'Películas y series';

  @override
  String get sourceTagAdult => '18+';

  @override
  String get sourceHiddenByTags => 'Oculto por etiquetas';

  @override
  String get watchOptions => 'Opciones';

  @override
  String get watchSelect => 'Select';

  @override
  String get watchSelectAll => 'Select all';

  @override
  String watchSelectedCount(int count) {
    return '$count selected';
  }

  @override
  String get watchNoneDownloaded => 'None of the selected items are downloaded';

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
  String get watchFailTimeout => 'El cheque no terminó a tiempo.';

  @override
  String get watchFailBlocked =>
      'El sitio bloqueó este dispositivo (acceso denegado). Un cheque no ayudará';

  @override
  String get watchFailTurnstile =>
      'Esta verificación necesita un toque que el solucionador de fondo no puede hacer';

  @override
  String get watchFailLoad =>
      'La página no se cargó. Verifique la conexión y la dirección del sitio.';

  @override
  String get watchFailRejected =>
      'El sitio rechazó la autorización que acaba de otorgar. Inténtalo de nuevo o borra las cookies.';

  @override
  String get watchFailDismissed => 'El cheque se cerró antes de terminar.';

  @override
  String get watchFailCooldown =>
      'Cerraste el cheque hace un momento. Pulsa Resolver para volver a intentarlo.';

  @override
  String get watchFailQuiet =>
      'El cheque te necesita y la aplicación funcionaba sola';

  @override
  String get watchFailWebView =>
      'La vista web en segundo plano no pudo iniciarse';

  @override
  String get watchFailUnavailable => 'No hay pantalla para mostrar el cheque.';

  @override
  String get watchStatusReady => 'Listo';

  @override
  String get watchStatusChallenge => 'Se necesita verificación de Cloudflare';

  @override
  String get watchStatusBlocked => 'Bloqueado por el sitio';

  @override
  String get watchStatusOffline => 'No puedo llegar al sitio';

  @override
  String get watchStatusUntested => 'Aún no probado';

  @override
  String get watchStatusTesting => 'Probando la conexión...';

  @override
  String get watchStatusSolving => 'Pasando el control de Cloudflare...';

  @override
  String watchSolvedBackground(int seconds) {
    return 'Verificación de Cloudflare aprobada en segundo plano ($seconds s)';
  }

  @override
  String get watchSolvedByUser => 'Se aprobó la verificación de Cloudflare';

  @override
  String watchClearanceIssued(String time) {
    return 'ganado $time';
  }

  @override
  String get watchClearanceStale =>
      'La autorización se obtuvo con otro agente de usuario, por lo que no se envía. Pruebe la conexión para obtener una nueva.';

  @override
  String get watchSectionConnection => 'Conexión';

  @override
  String get watchSectionSession => 'Sesión';

  @override
  String get watchSectionTools => 'Herramientas';

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
  String get playerSectionShaders => 'Sombreadores';

  @override
  String get playerSectionEngine => 'Motor';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'Velocidad de reproducción';

  @override
  String get localSource => 'Archivos locales';

  @override
  String get localMissing =>
      'Este archivo o carpeta ya no está en su carpeta local';

  @override
  String get playerStickyStage => 'vídeo pegajoso';

  @override
  String get playerStickyStageDesc =>
      'Mantenga el video fijo en la parte superior mientras se desplaza por los episodios y comentarios a continuación.';

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
  String get playerAutoRotate => 'Rotate to fullscreen';

  @override
  String get playerAutoRotateDesc =>
      'Turning the phone sideways opens the fullscreen player. Off keeps the player page upright';

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
  String get playerDisableSkips => 'Desactivar saltos';

  @override
  String get playerDisableSkipsDesc =>
      'No se permiten AniSkip ni marcas de tiempo de transmisión, marcas de capítulo ni envíos de omisión en el reproductor.';

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
  String get playerSubtitleOutlineWidth => 'Ancho del contorno del subtítulo';

  @override
  String get playerSubtitlePreview => 'Vista previa de subtítulos';

  @override
  String get playerSubtitlePreviewText => 'Texto de vista previa de subtítulos';

  @override
  String get playerLibass => 'Usar libass';

  @override
  String get playerLibassDesc =>
      'Renderiza subtítulos .ass con estilo. El tamaño, el color y la fuente de arriba dejan de aplicarse';

  @override
  String get playerShaders => 'Sombreadores';

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
  String get playerPictureSave => 'Guardar este marco';

  @override
  String get playerPictureOriginal => 'Originales';

  @override
  String get playerPictureOriginalDesc =>
      'El fotograma tal como lo tiene el vídeo, sin shaders ni colores.';

  @override
  String get playerPictureProcessed => 'Con sombreadores y colores.';

  @override
  String get playerPictureProcessedDesc => 'El marco como lo ves ahora.';

  @override
  String get playerPictureSaved => 'Cuadro guardado';

  @override
  String get playerPictureSaveFailed => 'No se pudo guardar el marco';

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
  String get playerColorPop => 'pop animado';

  @override
  String get playerColorSoft => 'Suave';

  @override
  String get playerColorCinematic => 'Cinematográfico';

  @override
  String get playerColorBright => 'Brillante';

  @override
  String get playerColorNight => 'Noche';

  @override
  String get playerColorMono => 'monocromático';

  @override
  String get playerColorCustom => 'Personalizado';

  @override
  String get playerColorBrightness => 'Brillo';

  @override
  String get playerColorContrast => 'Contraste';

  @override
  String get playerColorSaturation => 'Saturación';

  @override
  String get playerColorGamma => 'gama';

  @override
  String get playerColorHue => 'Tono';

  @override
  String get playerColorReset => 'Restablecer';

  @override
  String get playerColorAdjust => 'Ajustar';

  @override
  String get playerShadersOriginal => 'Originales';

  @override
  String get playerShadersPreviewFailed =>
      'No se pudo capturar un fotograma para la vista previa';

  @override
  String get playerShadersSoftware =>
      'Los sombreadores necesitan renderizado por hardware y el reproductor utiliza renderizado por software. Desactive la representación del software en la configuración del Reproductor.';

  @override
  String get playerSoftwareRender => 'Representación de software';

  @override
  String get playerSoftwareRenderDesc =>
      'Sólo para un vídeo negro. Los sombreadores no funcionan con él. Aplica la próxima vez que se abra el reproductor.';

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
  String get playerDecoderAuto => 'Automático';

  @override
  String get playerDecoderAutoSafe => 'Auto (seguro)';

  @override
  String get playerDecoderSoftware => 'programas';

  @override
  String get playerDecoderHardware => 'Ferretería';

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
  String get playerDeband => 'Debandar';

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
  String get playerToneMapping => 'Mapeo de tonos';

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
  String get playerTorrent => 'torrente';

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
  String get streamGroupSub => 'Subtítulo';

  @override
  String get streamGroupHardSub => 'Submarino duro';

  @override
  String get streamGroupSoftSub => 'Sub suave';

  @override
  String get streamGroupDub => 'Doblar';

  @override
  String get streamGroupRaw => 'crudo';

  @override
  String get streamGroupOther => 'Otro';

  @override
  String streamsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count transmisiones',
      one: '1 corriente',
    );
    return '$_temp0';
  }

  @override
  String get playerStreams => 'Corrientes';

  @override
  String get playerStreamFailedNext =>
      'Esa transmisión no se reproduce. Intentando la siguiente.';

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
  String get readerOpenBook => 'abrir un libro';

  @override
  String get readerOpenBookDesc =>
      'Lea un epub (lector de novelas) o un PDF (lector de manga) de sus archivos';

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
  String get readerModeAuto => 'Auto (por tipo de serie)';

  @override
  String get readerModeRtl => 'De derecha a izquierda';

  @override
  String get readerModeLtr => 'De izquierda a derecha';

  @override
  String get readerModeVertical => 'Páginas verticales';

  @override
  String get readerModeWebtoon => 'webtoon';

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
  String get readerFilterSepia => 'sepia';

  @override
  String get readerFilterQuality => 'Calidad del filtro de imagen';

  @override
  String get readerFilterQualityNone => 'Ninguno (vecino más cercano)';

  @override
  String get readerFilterQualityLow => 'Bajo (Bilineal)';

  @override
  String get readerFilterQualityMedium => 'Medio (Trilineal)';

  @override
  String get readerFilterQualityHigh => 'Alto (Bicúbico)';

  @override
  String get readerFilterQualityLanczos => 'Lanczos (Óxido de alta calidad)';

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
  String get readerLongPressSave =>
      'Mantenga presionada una página para guardarla';

  @override
  String get readerLongPressSaveDesc =>
      'Mantenga presionada una página para abrir las opciones de guardar, compartir y copiar';

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
  String get readerResetConfirm =>
      '¿Restablecer cada configuración del lector a su valor predeterminado?';

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
  String get novelThemeSepia => 'sepia';

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
    return '¿Guarda tu progreso en $name en tu lista en este dispositivo mientras miras?';
  }

  @override
  String trackProgressMangaLocal(String name) {
    return '¿Guardar su progreso en $name en su lista en este dispositivo cuando termine un capítulo?';
  }

  @override
  String get downloadClearQueue => 'Limpiar cola';

  @override
  String downloadClearQueueConfirm(int count) {
    return '¿Cancelar todas las descargas $count en la cola? Se elimina lo que ya se descargó.';
  }

  @override
  String downloadSelectedCount(int count) {
    return '$count seleccionado';
  }

  @override
  String get downloadSelectAll => 'Seleccionar todo';

  @override
  String get downloadDeleteSelected => 'Eliminar seleccionado';

  @override
  String downloadDeleteSelectedConfirm(int count) {
    return '¿Eliminar $count descargas? Sus archivos se eliminan del dispositivo.';
  }

  @override
  String get castTitle => 'Transmitir al dispositivo';

  @override
  String get castSearching => 'Buscando dispositivos en su red...';

  @override
  String get castNoDevices =>
      'No se encontraron dispositivos. Asegúrese de que el televisor o Chromecast esté en el mismo Wi-Fi y luego busque nuevamente.';

  @override
  String get castRefresh => 'Buscar de nuevo';

  @override
  String get castFailed => 'No se pudo comenzar a transmitir';

  @override
  String get castStop => 'dejar de transmitir';

  @override
  String castNowCasting(String name) {
    return 'Transmitiendo a $name';
  }

  @override
  String get castProtocolChromecast => 'Chromecast';

  @override
  String get castProtocolDlna => 'DLNA/TV inteligente';

  @override
  String get castProtocolRoku => 'roku';

  @override
  String get castRokuNote => 'Roku no puede informar ni cambiar la posición';

  @override
  String get castControls => 'Controles';

  @override
  String get castVolume => 'volumen de la televisión';

  @override
  String castSkipPart(String name) {
    return 'Saltar $name';
  }

  @override
  String get trackProgressRememberSeries => 'Recuerda para esta serie.';

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
  String get dantotsuGroupApp => 'Aplicación';

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
  String get themePickerTitle => 'Tema';

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
  String togetherLinkConfirm(String room) {
    return '¿Únete a la sala $room? El presentador elige lo que se reproduce y el reproductor se abre solo cuando empieza a mirar.';
  }

  @override
  String get togetherJoin => 'Unirse';

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
  String get togetherShareInvite => 'Compartir invitación';

  @override
  String togetherShareText(String link) {
    return 'Mira conmigo en Dartotsu: $link';
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
  String get novelPaged => 'Pasar página';

  @override
  String get novelPagedDesc =>
      'Divide el capítulo en páginas y desliza o toca para pasarlas en lugar de desplazarte';

  @override
  String novelPageOf(int current, int total) {
    return 'Página $current de $total';
  }

  @override
  String get novelPaginating => 'Diseñar páginas';

  @override
  String get novelTools => 'Contenidos, búsqueda y destacados';

  @override
  String get novelContents => 'Contenidos';

  @override
  String get novelContentsEmpty => 'Este capítulo no tiene títulos.';

  @override
  String get novelSearch => 'Buscar';

  @override
  String get novelSearchHint => 'Buscar en este capítulo';

  @override
  String get novelSearchNone => 'No hay coincidencias';

  @override
  String novelSearchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count coincidencias',
      one: '1 partido',
    );
    return '$_temp0';
  }

  @override
  String get novelHighlights => 'Lo más destacado';

  @override
  String get novelHighlightsEmpty =>
      'Seleccione un texto y toque Resaltar para mantenerlo aquí';

  @override
  String get novelHighlight => 'Resaltar';

  @override
  String get novelHighlightNote => 'Nota';

  @override
  String get novelHighlightNoteHint => 'Añadir una nota';

  @override
  String get novelHighlightRemove => 'Quitar resaltado';

  @override
  String get novelHighlightFailed =>
      'No se pudo hacer coincidir esa selección con el texto.';

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
  String get playerSkipSubmit => 'Enviar tiempos de salto';

  @override
  String get playerSkipSubmitDesc =>
      'Marque dónde comienza y termina la apertura, el final o el resumen de este episodio y compártalo con AniSkip, para que todos tengan el botón de omitir.';

  @override
  String get playerSkipStart => 'Empezar';

  @override
  String get playerSkipEnd => 'Fin';

  @override
  String get playerSkipUseNow => 'Usar posición actual';

  @override
  String get playerSkipSend => 'Enviar a AniSkip';

  @override
  String get playerSkipSent => 'Saltar tiempos enviados a AniSkip, gracias';

  @override
  String playerSkipFailed(String error) {
    return 'AniSkip rechazó los tiempos de salto: $error';
  }

  @override
  String get playerUnsupported =>
      'El reproductor de video no se puede ejecutar en este dispositivo (su versión de Android es demasiado antigua para la biblioteca de reproductores incluida). Toque para copiar los detalles.';

  @override
  String get playerSkipNoMal =>
      'Este título no tiene ID de MyAnimeList, AniSkip no puede aceptarlo.';

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
  String get playerPipPlay => 'Jugar';

  @override
  String get playerPipPause => 'Pausa';

  @override
  String get playerPipBack => 'Rebobinar';

  @override
  String get playerPipForward => 'Adelante';

  @override
  String get playerPipRestore => 'Volver al jugador';

  @override
  String get playerPipActive => 'Jugando en una ventana pequeña';

  @override
  String get listDateAdded => 'Agregado a la lista';

  @override
  String get listDateLastWatched => 'visto por última vez';

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
  String get widgetContinue => 'Continuar';

  @override
  String get widgetReleases => 'Lanzamiento pronto';

  @override
  String get widgetMore => 'También en progreso';

  @override
  String get widgetNothing => 'Nada para continuar todavía';

  @override
  String get downloadStorageTitle => 'Almacenamiento';

  @override
  String downloadStorageSummary(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count descargas',
      one: '1 descarga',
    );
    return '$_temp0 · $size';
  }

  @override
  String downloadStorageWatched(String size) {
    return '$size ya visto o leído';
  }

  @override
  String get downloadFreeUp => 'Liberar espacio';

  @override
  String downloadFreeUpConfirm(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count descargas vistas',
      one: '1 descarga vista',
    );
    return 'Borrar $_temp0 y libre $size?';
  }

  @override
  String downloadFreed(String size) {
    return 'Liberado $size';
  }

  @override
  String get downloadDeleteWatched => 'Eliminar visto';

  @override
  String get downloadDeleteAll => 'eliminar todo';

  @override
  String downloadDeleteAllConfirm(String title) {
    return '¿Eliminar todas las descargas de $title?';
  }

  @override
  String get downloadNothingWatched =>
      'No se descarga nada de lo que has terminado';

  @override
  String get downloadStorageEmpty => 'Ninguna descarga está usando espacio.';

  @override
  String get downloadsOpenDesc =>
      'Mira la cola y todo lo guardado en este dispositivo';

  @override
  String get downloadTitle => 'Descargar';

  @override
  String get downloadMetaOnly => 'Solo metadatos';

  @override
  String get downloadMetaFailed => 'No se pudo crear la carpeta de título';

  @override
  String downloadMetaSaved(String path) {
    return 'Guardado. Pon tus archivos en $path';
  }

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
  String get downloadDashDrm => 'Esta transmisión está protegida por DRM';

  @override
  String get downloadDashNoVideo => 'El manifiesto DASH no tiene vídeo.';

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
  String get downloadCustom => 'Custom amount…';

  @override
  String downloadCustomPrompt(int max) {
    return 'How many from here? (1–$max)';
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
    return '$seeds semillas · $peers pares';
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
    return 'Te avisarán cuando $source tenga algo nuevo';
  }

  @override
  String get sourceNotifyOff => 'Desactivar notificaciones';

  @override
  String get sourceNotifyNeedsSource => 'Elija primero una fuente que coincida';

  @override
  String sourceNotifyAllOut(int count) {
    return 'Todo ($count) ya está disponible, no hay nada que esperar.';
  }

  @override
  String get sourceNotifyTooltipOn => 'Detener notificaciones de lanzamiento';

  @override
  String get sourceNotifyTooltipOff => 'Notificarme sobre nuevos lanzamientos';

  @override
  String sourceFoundEpisode(String number, String source) {
    return 'El episodio $number saldrá el $source';
  }

  @override
  String sourceFoundEpisodes(String from, String to, String source) {
    return 'Los episodios $from–$to saldrán el $source';
  }

  @override
  String sourceFoundChapter(String number, String source) {
    return 'El capítulo $number saldrá el $source';
  }

  @override
  String sourceFoundChapters(String from, String to, String source) {
    return 'Los capítulos $from–$to saldrán el $source';
  }

  @override
  String sourceFoundSummary(int count) {
    return 'Los títulos $count tienen algo nuevo.';
  }

  @override
  String get navSources => 'Fuentes';

  @override
  String sourceInactiveOpen(String manager) {
    return 'Esta fuente pertenece a $manager, que no es el servicio de extensión activo.';
  }

  @override
  String get sourceAlertsHeader => 'Notificaciones de lanzamiento';

  @override
  String get sourceAlertsSwitch => 'Consultar títulos suscritos';

  @override
  String get sourceAlertsSwitchDesc =>
      'Una vez cada vez que se abre la aplicación, para los títulos que activaste la campana';

  @override
  String get sourceSkipUnstarted => 'Saltar títulos que no has comenzado';

  @override
  String get sourceSkipUnstartedDesc =>
      'Aún no se ha visto ni leído nada, pero los episodios ya existen.';

  @override
  String get sourceSkipUnseen => 'Saltar mientras tengas episodios no vistos';

  @override
  String get sourceSkipUnseenDesc =>
      'Todavía tienes episodios publicados para ponerte al día.';

  @override
  String get sourceManage => 'Suscripciones';

  @override
  String sourceManageDesc(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count títulos',
      one: '1 título',
      zero: 'Sin títulos',
    );
    return '$_temp0';
  }

  @override
  String get sourceCheckNow => 'Compruébalo ahora';

  @override
  String get sourceCheckNowDesc => 'Ignora el horario y las reglas de omisión.';

  @override
  String get sourceChecking => 'Comprobando…';

  @override
  String sourceCheckResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Los títulos $count tienen algo nuevo.',
      one: '1 título tiene algo nuevo',
      zero: 'Nada nuevo',
    );
    return '$_temp0';
  }

  @override
  String get sourceEmpty => 'Aún no hay suscripciones';

  @override
  String get sourceEmptyMessage =>
      'Toque la campana encima de los episodios de un título para recibir información sobre los nuevos.';

  @override
  String get sourceAll => 'Todos';

  @override
  String sourceInactive(String manager) {
    return 'Inactivo: $manager';
  }

  @override
  String sourceMissingDesc(String source) {
    return '$source no está instalado en este servicio de extensión';
  }

  @override
  String get sourceUnreachable => 'La fuente no responde.';

  @override
  String get sourceFinished => 'Terminado';

  @override
  String get sourceSkippedCompleted => 'Saltado: completado';

  @override
  String get sourceSkippedUnstarted => 'Saltado: no iniciado';

  @override
  String get sourceSkippedUnseen => 'Saltado: episodios no vistos';

  @override
  String get sourceWaiting => 'Esperando el próximo lanzamiento';

  @override
  String sourceNextCheck(String when) {
    return 'Siguiente verificación $when';
  }

  @override
  String get sourceSoon => 'pronto';

  @override
  String sourceInHours(int count) {
    return 'en ${count}h';
  }

  @override
  String sourceInDays(int count) {
    return 'en ${count}d';
  }

  @override
  String sourceLatest(String number) {
    return 'Último: $number';
  }

  @override
  String get sourceMute => 'Silenciar';

  @override
  String get sourceUnmute => 'Dejar de silenciar';

  @override
  String get sourceMuted => 'silenciado';

  @override
  String get sourceUnsubscribe => 'Darse de baja';

  @override
  String get sourcePickAnother => 'Elige otra fuente';

  @override
  String get sourceOpenExtensions => 'Extensiones abiertas';

  @override
  String get sourceNoticesEmpty => 'Aún no hay avisos de lanzamiento';

  @override
  String get sourceNoticesEmptyMessage =>
      'Aquí aparecen nuevos episodios y capítulos de tus títulos suscritos.';

  @override
  String get sourceOpenTitle => 'título abierto';

  @override
  String get extensionsLoading => 'Cargando extensiones…';

  @override
  String get updateWhatsNew => '¿Qué hay de nuevo?';

  @override
  String get updateLater => 'Más tarde';

  @override
  String get updateSkipVersion => 'Saltar esta versión';

  @override
  String get updatePreparing => 'Preparando…';

  @override
  String get updateDownloading => 'Descargando';

  @override
  String get updateInstalling => 'Instalando…';

  @override
  String updateSizeOf(String done, String total) {
    return '$done de $total';
  }

  @override
  String updateSpeed(String speed) {
    return '$speed/s';
  }

  @override
  String updateReleased(String date) {
    return 'Liberado $date';
  }

  @override
  String get updateNoAsset =>
      'Esta versión no tiene descarga para su dispositivo';

  @override
  String get updateUpToDate => 'Estás en la última versión.';

  @override
  String get updateIosHint =>
      'Las versiones de iOS no están en la App Store. Tome el .ipa de la página de lanzamiento y cárguelo con AltStore o SideStore';

  @override
  String get updateOpenedBrowser => 'Revisa tu navegador';

  @override
  String get updateTryAgain => 'Inténtalo de nuevo';

  @override
  String get settingsNotifications => 'Notificaciones';

  @override
  String get settingsNotificationsDesc =>
      'Alertas para sus listas, nuevos episodios y capítulos, y respuestas a comentarios';

  @override
  String get settingsAboutUpdates => 'Acerca de y actualizaciones';

  @override
  String get settingsAboutUpdatesDesc =>
      'Actualizaciones de aplicaciones, versión, registros, enlaces y soporte';

  @override
  String get settingsGroupAccount => 'tu cuenta';

  @override
  String get settingsGroupContent => 'Contenido';

  @override
  String get settingsGroupApp => 'Aplicación';

  @override
  String get settingsAnimeDesc =>
      'Reproductor, subtítulos, omisiones, lista de episodios y detalles del episodio.';

  @override
  String get settingsMangaDesc =>
      'Modo lector, controles, visualización y seguimiento de capítulos.';

  @override
  String get settingsNovelDesc =>
      'Texto, paso de página, traducción y lectura en voz alta.';

  @override
  String get settingsLocalPlay => 'juego local';

  @override
  String get settingsLocalPlayDesc =>
      'Reproduzca archivos, carpetas, transmisiones de red y torrents, o abra un libro';

  @override
  String get settingsLocalPlayVideo => 'Vídeo';

  @override
  String get settingsLocalPlayBooks => 'Libros';

  @override
  String get settingsWatchSections => 'Secciones';

  @override
  String get settingsSectionLists => 'Listas de episodios y capítulos';

  @override
  String get settingsSectionProgress => 'Seguimiento del progreso';

  @override
  String get updateChannelDesc =>
      'Estable es la versión probada. La versión preliminar y la alfa obtienen nuevas funciones antes, pero pueden fallar';

  @override
  String get checkNowDesc => 'Busque una versión más nueva de inmediato';

  @override
  String get generalSectionBasics => 'Lenguaje y comportamiento';

  @override
  String get generalSectionSecurity => 'Seguridad';

  @override
  String get generalSectionPrivacy => 'Privacidad';

  @override
  String notificationsOtherService(String service) {
    return 'Cambie a $service para abrir esto';
  }

  @override
  String get secPlayerPlayback =>
      'Velocidad predeterminada, reproducción automática, ajuste de vídeo, orientación e imagen en imagen';

  @override
  String get secPlayerSkip =>
      'Saltar aperturas, finales y resúmenes automáticamente';

  @override
  String get secPlayerControls =>
      'Desliza, mantén presionado y toca gestos y busca una vista previa';

  @override
  String get secPlayerSubtitles =>
      'Idiomas, apariencia y representación de subtítulos.';

  @override
  String get secPlayerShaders => 'Mejora de anime y tus propios sombreadores.';

  @override
  String get secPlayerEngine =>
      'Decodificador, salida de vídeo y audio, buffering. Solo cámbielos si la reproducción tiene problemas';

  @override
  String get secPlayerMpv => 'mpv.conf, scripts y ajuste avanzado';

  @override
  String get secAnimeList => 'Episodios de relleno y miniaturas no vistas';

  @override
  String get secProgress =>
      'Cuando su progreso visto o leído se guarda en su lista';

  @override
  String get secAnimeDetails =>
      'De dónde provienen los títulos, miniaturas y resúmenes de los episodios';

  @override
  String get secReaderReading =>
      'Modo lectura, paso de página, zoom y siguiente capítulo.';

  @override
  String get secReaderControls =>
      'Toque zonas, teclas de volumen y desplazamiento automático';

  @override
  String get secReaderDisplay =>
      'Fondo, brillo, pantalla completa y número de página.';

  @override
  String get secNovelText =>
      'Fuente, tamaño, espaciado, márgenes y paso de página.';

  @override
  String get secNovelTranslate => 'Traduce capítulos mientras lees';

  @override
  String get secNovelSpeech => 'Voz, velocidad y tono para leer en voz alta.';

  @override
  String get secNotifyAbout => 'Elija qué tipos de actividad envían una alerta';

  @override
  String get layoutTitle => 'Diseño';

  @override
  String get layoutDesc => 'Elige, mueve y oculta los botones de las barras.';

  @override
  String get layoutHint =>
      'Arrastre un botón para moverlo (manténgalo presionado primero en una pantalla táctil). Toca uno para cortarlo, moverlo u ocultarlo.';

  @override
  String layoutDropInto(String zone) {
    return 'Acércate: $zone';
  }

  @override
  String layoutCutting(String name) {
    return 'Moviendo $name. Presione un botón de pegar para colocarlo.';
  }

  @override
  String get layoutTitleFixed => 'Título';

  @override
  String get layoutZoneTopStart => 'Barra superior, antes del título.';

  @override
  String get layoutZoneTopEnd => 'Barra superior, después del título.';

  @override
  String get layoutZoneBottomStart => 'Barra inferior izquierda';

  @override
  String get layoutZoneBottomEnd => 'Barra inferior derecha';

  @override
  String get layoutZoneSecondRow => 'Oculto: segunda fila en vista normal';

  @override
  String get layoutZoneOverflow => 'Oculto: en el menú más';

  @override
  String get layoutEmptyZone => 'Suelta botones aquí';

  @override
  String get layoutCut => 'cortar';

  @override
  String get layoutPaste => 'Pegar aquí';

  @override
  String get layoutHide => 'Ocultar';

  @override
  String layoutMoveTo(String zone) {
    return 'Mover a $zone';
  }

  @override
  String get layoutReset => 'Restablecer los valores predeterminados';

  @override
  String get layoutMore => 'Más';

  @override
  String get sourceWhyAction => '¿Por qué no hay alerta?';

  @override
  String get sourceWhyStatus => 'Estado';

  @override
  String get sourceWhyLastCheck => 'Última comprobación';

  @override
  String get sourceWhyNever => 'todavía no';

  @override
  String get sourceWhyNextCheck => 'Próximo cheque';

  @override
  String get sourceWhyNewest => 'Lo más nuevo en la fuente';

  @override
  String get sourceWhyProgress => 'Tu progreso';

  @override
  String get sourceWhyListStatus => 'Estado de la lista';

  @override
  String get sourceWhyFailures => 'Cheques fallidos seguidos';

  @override
  String get sourceWhyLastRelease => 'Última versión nueva vista';

  @override
  String get sourceWhyVerdictNew =>
      'Aquí aparece una nueva versión tan pronto como la fuente la incluye y se ejecuta la siguiente verificación.';

  @override
  String get sourceWhyVerdictAhead =>
      'La fuente ya está por delante de tu progreso, por lo que te lo informaron una vez. Léelo o mantente atento para recibir la próxima alerta.';

  @override
  String get sourceWhyVerdictSkipped =>
      'Este título se omite según las reglas anteriores. Cámbielos en la configuración de notificaciones o use Comprobar ahora para ejecutarlo de todos modos.';

  @override
  String get sourceWhyVerdictBroken =>
      'No se puede acceder a la fuente o se ha eliminado, por lo que no se está comprobando nada.';

  @override
  String get sourceWhyVerdictMuted => 'Esta suscripción está silenciada.';

  @override
  String get externalPlayerTitle => 'Abrir transmisión en otro lugar';

  @override
  String get externalCopyUrl => 'Copiar enlace de transmisión';

  @override
  String get externalCopied => 'Enlace de transmisión copiado';

  @override
  String get externalChooser => 'Abrir en otra aplicación';

  @override
  String get externalVlc => 'Abrir en VLC';

  @override
  String get externalMpv => 'Abierto en mpv';

  @override
  String get externalWebVideoCast => 'Transmisión de vídeo web';

  @override
  String get castViaAppHint =>
      'Envíe la transmisión a la aplicación Web Video Cast';

  @override
  String get externalFailed =>
      'No se pudo abrir la transmisión. ¿Está instalado el reproductor?';

  @override
  String get addonInstalled => 'Instalado';

  @override
  String get loadFailedActivity => 'No se pudo cargar la actividad';

  @override
  String get loadFailedFavourites =>
      'No se pudieron cargar favoritos. Reintentar';

  @override
  String get loadFailedStats => 'No se pudieron cargar las estadísticas';

  @override
  String get loadFailedReplies => 'No se pudieron cargar las respuestas';

  @override
  String get cantBeUndone => 'Esto no se puede deshacer.';

  @override
  String get searchTags => 'Buscar etiquetas';

  @override
  String get spoilerTapToView => 'Spoiler, toca para ver';

  @override
  String get mediaVideo => 'Vídeo';

  @override
  String get notificationSomeone => 'alguien';

  @override
  String get notificationATitle => 'un título';

  @override
  String get notificationAddedDetail => 'Fue agregado a AniList';

  @override
  String get updateNoReleases => 'No se encontraron lanzamientos';

  @override
  String get updateInvalidResponse => 'Respuesta de actualización no válida';

  @override
  String get commentsRateLimited => 'Tarifa limitada';

  @override
  String get commentsConnectFailed => 'No se pudo conectar';

  @override
  String get dnsNoRecords => 'No se devolvieron registros A';

  @override
  String get importTokenRejected => 'Token rechazado';

  @override
  String get developerRoleLead => 'Desarrollador principal';

  @override
  String get developerRoleModerator => 'Moderador de discordia';

  @override
  String extensionManagerTitle(String type) {
    return '$type gerente';
  }

  @override
  String extensionsOfType(String type) {
    return '$type extensiones';
  }

  @override
  String extensionSettingsTitle(String name) {
    return 'Configuración $name';
  }

  @override
  String extensionNoSettings(String name) {
    return '$name no proporciona ninguna configuración.';
  }

  @override
  String notificationAired(String episode, String title) {
    return 'Se emitió el episodio $episode de $title';
  }

  @override
  String notificationAiredDetail(String episode) {
    return 'Episodio $episode emitido';
  }

  @override
  String notificationAdded(String title) {
    return '$title fue agregado a AniList';
  }

  @override
  String updateNotFound(String message) {
    return 'El servidor de actualización no pudo encontrar esa versión: $message';
  }

  @override
  String get installStepJre => 'tiempo de ejecución de Java';

  @override
  String get installStepCore => 'Núcleo de tiempo de ejecución';

  @override
  String installStepsProgress(int current, int total) {
    return 'Paso $current de $total';
  }

  @override
  String get stepWaiting => 'esperando';

  @override
  String get stepChecking => 'Comprobando…';

  @override
  String get stepUpToDate => 'actualizado';

  @override
  String stepUpToDateWith(String detail) {
    return 'Actualizado · $detail';
  }

  @override
  String get stepWillInstall => 'será instalado';

  @override
  String get stepWillUpdate => 'Se actualizará';

  @override
  String stepWillUpdateTo(String version) {
    return 'Se actualizará a $version';
  }

  @override
  String get stepInstalled => 'Instalado';

  @override
  String get stepNotNeeded => 'No es necesario aquí';

  @override
  String get stepFailed => 'Fallido';

  @override
  String stepFailedWith(String reason) {
    return 'Error: $reason';
  }

  @override
  String get installNeedsRuntime =>
      'Se ejecuta en el tiempo de ejecución de Java y en el núcleo del tiempo de ejecución compartido. Se instalan primero y se actualizan si cambian.';

  @override
  String get installRuntimeNewer =>
      'El tiempo de ejecución en el que se ejecuta este administrador tiene una actualización.';

  @override
  String get removeJvmTitle => '¿Eliminar el tiempo de ejecución de Java?';

  @override
  String get removeJvmMessage =>
      'Los administradores de extensiones de escritorio dejan de funcionar hasta que se vuelven a instalar. Se descarga nuevamente la próxima vez que instale o abra uno.';

  @override
  String get runtimePreparing => 'Preparando el tiempo de ejecución...';

  @override
  String get calendarAll => 'Todos';

  @override
  String get calendarAnime => 'animado';

  @override
  String get calendarManga => 'manga';

  @override
  String get readerCloudflare =>
      'Abrir en el navegador (verificación de Cloudflare)';

  @override
  String get badgeBoardHint =>
      'Arrastre una insignia a una esquina de la primera tarjeta o arrastre una insignia que ya esté en ella para moverla. Las insignias intercambian lugares, por lo que ninguna se superpone. Toca una insignia a continuación para activarla o desactivarla.';

  @override
  String get statusAuto => 'Automático';

  @override
  String get unreadCounter => 'Contador no leído';

  @override
  String get unreadCounterDesc =>
      'Muestra cuántos episodios o capítulos quedan en los carteles.';

  @override
  String get settingsShortcuts => 'Atajos de teclado';

  @override
  String get settingsShortcutsDesc => 'Ver, cambiar y apagar cada llave';

  @override
  String get shortcutGroupApp => 'Aplicación';

  @override
  String get shortcutGroupPlayer => 'Reproductor de vídeo';

  @override
  String get shortcutGroupReader => 'Lector';

  @override
  String get shortcutsEnableApp => 'Atajos de aplicaciones';

  @override
  String get shortcutsEnablePlayer => 'Atajos de jugador';

  @override
  String get shortcutsEnableReader => 'Atajos de lector';

  @override
  String get shortcutsEnableDesc =>
      'Activar o desactivar todas las teclas de este grupo';

  @override
  String get shortcutNotSet => 'No establecido';

  @override
  String get shortcutAddKey => 'Agregar una clave';

  @override
  String get shortcutResetOne => 'Restablecer los valores predeterminados';

  @override
  String get shortcutClearKeys => 'Quitar todas las llaves';

  @override
  String get shortcutResetAll => 'Restablecer todos los atajos';

  @override
  String get shortcutResetAllDesc =>
      'Vuelva a poner cada clave en su valor predeterminado';

  @override
  String get shortcutPress => 'Pulsa la tecla o combinación que desees';

  @override
  String get shortcutPressHint =>
      'Cada combinación sólo puede pertenecer a una acción, por lo que al tomar una se mueve.';

  @override
  String get shortcutSeekPercent => 'Saltar a un punto del vídeo.';

  @override
  String get shortcutSeekPercentKeys => '0 – 9';

  @override
  String get shortcutAppBack => 'volver';

  @override
  String get shortcutAppFullscreen => 'Alternar pantalla completa';

  @override
  String get shortcutAppGlass => 'Alternar modo de cristal';

  @override
  String get shortcutAppMaterialYou => 'Alternar material usted';

  @override
  String get shortcutAppDark => 'Alternar modo oscuro';

  @override
  String get shortcutAppOled => 'Alternar OLED negro';

  @override
  String get shortcutAppSearch => 'abrir búsqueda';

  @override
  String get shortcutAppSettings => 'Abrir configuración';

  @override
  String get shortcutAppDownloads => 'Abrir descargas';

  @override
  String get shortcutAppNotifications => 'Notificaciones abiertas';

  @override
  String get shortcutAppIncognito => 'Alternar incógnito';

  @override
  String get shortcutAppShortcuts => 'Mostrar atajos de teclado';

  @override
  String get shortcutPlayerPlayPause => 'Reproducir o pausar';

  @override
  String get shortcutPlayerSeekForward => 'buscar adelante';

  @override
  String get shortcutPlayerSeekBack => 'buscar de regreso';

  @override
  String get shortcutPlayerSeekForwardLong => 'Buscar adelante 30 segundos';

  @override
  String get shortcutPlayerSeekBackLong => 'Recuperar 30 segundos';

  @override
  String get shortcutPlayerFrameForward => 'Siguiente fotograma';

  @override
  String get shortcutPlayerFrameBack => 'Fotograma anterior';

  @override
  String get shortcutPlayerVolumeUp => 'Subir volumen';

  @override
  String get shortcutPlayerVolumeDown => 'Bajar volumen';

  @override
  String get shortcutPlayerMute => 'Silenciar';

  @override
  String get shortcutPlayerFullscreen => 'Pantalla completa';

  @override
  String get shortcutPlayerNext => 'Próximo episodio';

  @override
  String get shortcutPlayerPrevious => 'Episodio anterior';

  @override
  String get shortcutPlayerSkip => 'Saltar introducción o final';

  @override
  String get shortcutPlayerPanel => 'Lista de episodios';

  @override
  String get shortcutPlayerSpeedUp => 'Reproducción más rápida';

  @override
  String get shortcutPlayerSpeedDown => 'Reproducción más lenta';

  @override
  String get shortcutPlayerSpeedReset => 'velocidad normal';

  @override
  String get shortcutPlayerSubtitleToggle =>
      'Subtítulos activados o desactivados';

  @override
  String get shortcutPlayerSubtitleCycle => 'Siguiente pista de subtítulos';

  @override
  String get shortcutPlayerAudioCycle => 'Pista de audio siguiente';

  @override
  String get shortcutPlayerStreamCycle => 'Próxima transmisión';

  @override
  String get shortcutPlayerFit => 'Cambiar ajuste de vídeo';

  @override
  String get shortcutReaderRight => 'Página a la derecha';

  @override
  String get shortcutReaderLeft => 'Página a la izquierda';

  @override
  String get shortcutReaderNextPage => 'Página siguiente';

  @override
  String get shortcutReaderPreviousPage => 'Pagina anterior';

  @override
  String get shortcutReaderControls => 'Mostrar u ocultar controles';

  @override
  String get shortcutReaderNextChapter => 'Siguiente capítulo';

  @override
  String get shortcutReaderPreviousChapter => 'capitulo anterior';

  @override
  String shortcutTaken(String action) {
    return 'Tomado de $action';
  }

  @override
  String get incognitoTurnedOn => 'Modo incógnito activado';

  @override
  String get incognitoTurnedOff => 'Modo incógnito desactivado';

  @override
  String get onHoldAnime => 'anime en espera';

  @override
  String get onHoldManga => 'manga en espera';

  @override
  String get droppedAnime => 'anime abandonado';

  @override
  String get droppedManga => 'Manga abandonado';

  @override
  String get generalSectionDesktop => 'Escritorio';

  @override
  String get closeAction => 'Cuando la ventana está cerrada';

  @override
  String get closeActionQuit => 'Salir de la aplicación';

  @override
  String get closeActionWhenBusy =>
      'Sigue corriendo en la bandeja mientras algo se está ejecutando.';

  @override
  String get closeActionAlways => 'Sigue corriendo siempre en la bandeja.';

  @override
  String get closeActionNoTray =>
      'La bandeja del sistema no está disponible aquí, por lo que la aplicación se cierra cuando se cierra';

  @override
  String get gamepadNav => 'Navegación del mando';

  @override
  String get gamepadNavDesc =>
      'Muévete por la aplicación y controla al jugador con un mando de juego.';

  @override
  String get trayShow => 'Mostrar Dartotsu';

  @override
  String get trayQuit => 'dejar de fumar';

  @override
  String get trayIdle => 'Nada corriendo';

  @override
  String trayDownloading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Descargando $count elementos',
      one: 'Descargando elemento $count',
    );
    return '$_temp0';
  }

  @override
  String get traySyncing => 'Sincronizando tus listas';

  @override
  String get trayUpdating => 'Actualizando la aplicación';

  @override
  String get trayPlaying => 'Jugando en una ventana pequeña';

  @override
  String get traySearch => 'Buscar';

  @override
  String get trayPauseDownloads => 'Pausar descargas';

  @override
  String get trayResumeDownloads => 'Reanudar descargas';

  @override
  String get playerDownloadTitle => 'Descargando el reproductor';

  @override
  String get playerDownloadBody =>
      'Dartotsu recupera su motor de vídeo una vez. La reproducción comienza tan pronto como esté lista.';

  @override
  String get playerDownloadStarting => 'Iniciando la descarga…';

  @override
  String get playerDownloadFailedTitle =>
      'No se pudo conseguir el reproductor.';

  @override
  String get playerDownloadFailedBody =>
      'Comprueba tu conexión y vuelve a intentarlo. La descarga continúa donde se detuvo.';

  @override
  String get playerDownloadRetry => 'Inténtalo de nuevo';

  @override
  String get playerDownloadCopy => 'Copiar detalles';

  @override
  String get removePlayerTitle => '¿Quitar el reproductor?';

  @override
  String get removePlayerMessage =>
      'Los videos no se pueden reproducir hasta que se descargue nuevamente el reproductor.';

  @override
  String get trailerLoading => 'Cargando el trailer…';

  @override
  String get trailerFailed =>
      'No se pudo reproducir el avance aquí, abriéndolo en el navegador.';
}
