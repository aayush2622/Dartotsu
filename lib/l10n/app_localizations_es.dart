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
  String get appTagline =>
      'La NUEVA Mejor Aplicación Para\nRastrear Anime y Manga';

  @override
  String get anilist => 'AniList';

  @override
  String get mal => 'MyAnimeList';

  @override
  String get kitsu => 'Kitsu';

  @override
  String get simkl => 'Simkl';

  @override
  String get discord => 'Discord';

  @override
  String get login => 'Iniciar Sesión';

  @override
  String loginTo(String service) {
    return 'Iniciar sesión en $service';
  }

  @override
  String logout(String type) {
    return 'Cerrar sesión $type';
  }

  @override
  String get confirmLogout => '¿Estás seguro de que quieres cerrar sesión?';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Manga';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novel => 'Novela';

  @override
  String get ln => 'Novela Ligera';

  @override
  String get home => 'Home';

  @override
  String get search => 'Buscar';

  @override
  String get calendar => 'Calendario';

  @override
  String get settings => 'Ajustes';

  @override
  String get watch => 'Ver';

  @override
  String get read => 'Leer';

  @override
  String get info => 'Info';

  @override
  String get comments => 'Comentarios';

  @override
  String get addToList => 'Añadir a la lista';

  @override
  String get series => 'Serie';

  @override
  String get season => 'Temporada';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Episodios',
      one: 'Episodio',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Capítulos',
      one: 'Capítulo',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Volúmenes',
      one: 'Volumen',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Películas',
      one: 'Película',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'Episodios';

  @override
  String get totalChapters => 'Capítulos';

  @override
  String get genres => 'Géneros';

  @override
  String get scanlators => 'Scanlators';

  @override
  String list(String type) {
    return 'Lista de $type';
  }

  @override
  String get watching => 'Mirando';

  @override
  String get reading => 'Lectura';

  @override
  String get readStatus => 'Leer';

  @override
  String get watchStatus => 'Vigilado';

  @override
  String planned(String type) {
    return 'Planeado $type';
  }

  @override
  String onHold(String type) {
    return 'En espera $type';
  }

  @override
  String get droppedAnime => 'Anime abandonado';

  @override
  String get droppedManga => 'Manga abandonado';

  @override
  String noDropped(String type) {
    return 'No has dejado ningún $type aún.';
  }

  @override
  String get continueReading => 'Seguir leyendo';

  @override
  String get continueWatching => 'Seguir viendo';

  @override
  String browse(String type) {
    return 'Explorar $type';
  }

  @override
  String trending(String type) {
    return '$type en tendencia';
  }

  @override
  String popular(String type) {
    return 'Popular $type';
  }

  @override
  String get topAiring => 'Mejor emisión';

  @override
  String topRated(String type) {
    return 'Mejor valorado $type';
  }

  @override
  String mostFavourite(String type) {
    return 'Más favorito $type';
  }

  @override
  String get thisSeason => 'Esta temporada';

  @override
  String get nextSeason => 'Próxima temporada';

  @override
  String get previousSeason => 'Temporada anterior';

  @override
  String get recommended => 'Recomendado';

  @override
  String get recommendationsEmptyMessage =>
      'Mira/Lee algo de Anime o Manga para obtener recomendaciones';

  @override
  String get recentUpdates => 'Actualizaciones recientes';

  @override
  String get allCaughtUpNew => 'Todo al día, ¿qué hay de nuevo?';

  @override
  String favorite(String type) {
    return 'Favorito $type';
  }

  @override
  String get favorites => 'Favoritos';

  @override
  String get noFavourites =>
      'Parece que no te gusta nada,\nPrueba a marcar un show como favorito para mantenerlo aquí.';

  @override
  String get noOnHold => 'Parece que no has puesto nada en espera.';

  @override
  String manageLayout(String service, String page) {
    return 'Gestionar el diseño de la página $page para $service';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'Puedes gestionar el diseño de la página $page arrastrando y soltando los elementos';
  }

  @override
  String get gridView => 'Vista en cuadrícula';

  @override
  String get listView => 'Lista Ver';

  @override
  String get compactView => 'Vista compacta';

  @override
  String get layout => 'A ti';

  @override
  String get sort => 'Ordenar';

  @override
  String get utd => 'De Arriba a Abajo';

  @override
  String get dtu => 'Hacia arriba';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'Episodio visto';

  @override
  String get chapterRead => 'Capítulo leído';

  @override
  String get outOf => 'fuera de';

  @override
  String get totalOf => 'Suma de';

  @override
  String get selected => 'Seleccionado';

  @override
  String get found => 'Encontró';

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
  String available(String type) {
    return 'Disponible $type';
  }

  @override
  String installed(String type) {
    return 'Instalado $type';
  }

  @override
  String get extensionsDescription =>
      'Instala y administra extensiones para funcionalidad adicional';

  @override
  String get addAnimeRepo => 'Añadir Anime Repo';

  @override
  String get addAnimeRepoDesc => 'Añadir Anime Repo de diversas fuentes';

  @override
  String get addMangaRepo => 'Añadir Manga Repo';

  @override
  String get addMangaRepoDesc => 'Añadir Manga Repo from various sources';

  @override
  String get addNovelRepo => 'Agregar nuevo repositorio';

  @override
  String get addNovelRepoDesc =>
      'Añadir un nuevo repositorio desde varias fuentes';

  @override
  String get loadExtensionsIcon => 'Cargar Extensiones icono';

  @override
  String get loadExtensionsIconDesc => 'Desactivar si extensiones página lags';

  @override
  String get autoUpdate => 'Actualización automática';

  @override
  String get autoUpdateDesc => 'Extensiones de actualización automática';

  @override
  String get installSourceToStart =>
      'Instalar una fuente de página de extensión para empezar';

  @override
  String get author => 'Autor';

  @override
  String get averageDuration => 'Duración promedio';

  @override
  String get characters => 'Personajes';

  @override
  String get description => 'Sinopsis';

  @override
  String get synopsis => 'Sinopsis';

  @override
  String get endDate => 'Fecha final';

  @override
  String get format => 'Formato';

  @override
  String get meanScore => 'Significado';

  @override
  String get name => 'Nombre';

  @override
  String get nameRomaji => 'Nombre (Romaji)';

  @override
  String get popularity => 'Popularidad';

  @override
  String get relations => 'Relaciones';

  @override
  String get prequel => 'PREQUEL';

  @override
  String get sequel => 'SEQUEL';

  @override
  String get source => 'Fuente';

  @override
  String get staff => 'Personal';

  @override
  String get startDate => 'Fecha de inicio';

  @override
  String get status => 'Situación';

  @override
  String get studio => 'Studio';

  @override
  String get synonyms => 'Sinónimos';

  @override
  String get tags => 'Etiquetas';

  @override
  String get total => 'Total';

  @override
  String get collapseText => 'ver menos';

  @override
  String get expandText => 'ver más';

  @override
  String get comingSoon => 'Próximamente';

  @override
  String get wrongTitle => '¿Título equivocado?';

  @override
  String get youTube => '¿Jugar en YouTube?';

  @override
  String get mediaNotFound => 'Medios no encontrados';

  @override
  String get noChapterFound => 'No hay capítulo encontrado';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Actividades',
      one: 'Actividad',
    );
    return '$_temp0';
  }

  @override
  String get language => 'Idioma';

  @override
  String get account => 'Cuenta';

  @override
  String get accountDescription =>
      'Administra tus cuentas de AniList, MAL y Discord sin esfuerzo';

  @override
  String get common => 'Común';

  @override
  String get commonDescription =>
      'Accede a ajustes generales para un uso fluido de la aplicación';

  @override
  String get animeDescription =>
      'Personaliza y administra tus preferencias de anime';

  @override
  String get mangaDescription =>
      'Organiza y personaliza tu experiencia de manga';

  @override
  String get about => 'Acerca de';

  @override
  String get aboutDescription =>
      'Aprende más sobre la aplicación y sus creadores';

  @override
  String get notifications => 'Notificaciones';

  @override
  String get notificationsDescription =>
      'Configura cómo y cuándo recibes notificaciones';

  @override
  String get offlineMode => 'Modo Sin Conexión';

  @override
  String get offlineModeDescription =>
      'Usa la aplicación sin conexión a internet';

  @override
  String get incognitoMode => 'Modo Incógnito';

  @override
  String get incognitoModeDescription => 'Navegar sin guardar tu actividad';

  @override
  String get hidePrivate => 'Ocultar Privado';

  @override
  String get hidePrivateDescription =>
      'Ocultar series privadas en la página de inicio.';

  @override
  String get hiddenMedia => 'Medios ocultos';

  @override
  String get noHiddenMediaFound => 'No se encontraron medios ocultos';

  @override
  String get playerSettingsTitle => 'Ajustes del Reproductor';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'Velocidad';

  @override
  String get speedDescription => 'Velocidad predeterminada para el reproductor';

  @override
  String get cursedSpeed => 'Velocidad Maldita';

  @override
  String get cursedSpeedDescription =>
      'Para personas demasiado ocupadas con la vida';

  @override
  String get resizeMode => 'Modo de redimensionamiento';

  @override
  String get resizeModeDescription =>
      'Modo de redimensionamiento predeterminado para el reproductor';

  @override
  String get skipButton => 'Botón de Saltar';

  @override
  String get skipButtonDescription => 'Duración del botón de saltar';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'Subtítulos';

  @override
  String get showSubtitles => 'Mostrar Subtítulos';

  @override
  String get showSubtitlesDescription => 'Mostrar subtítulos por defecto';

  @override
  String get subtitlePreview => 'Vista Previa de Subtítulos';

  @override
  String get fontColor => 'Color de Fuente';

  @override
  String get fontColorDescription => 'Color de fuente de los subtítulos';

  @override
  String get fontFamily => 'Familia de Fuente';

  @override
  String get fontFamilyDescription => 'Familia de fuente de los subtítulos';

  @override
  String get fontSize => 'Tamaño de Fuente';

  @override
  String get fontSizeDescription => 'Tamaño de fuente de los subtítulos';

  @override
  String get fontWeight => 'Peso de Fuente';

  @override
  String get fontWeightDescription => 'Peso de fuente de los subtítulos';

  @override
  String get backgroundColor => 'Color de Fondo';

  @override
  String get backgroundColorDescription => 'Color de fondo de los subtítulos';

  @override
  String get outlineColor => 'Color de Contorno';

  @override
  String get outlineColorDescription => 'Color de contorno de los subtítulos';

  @override
  String get bottomPadding => 'Relleno Inferior';

  @override
  String get bottomPaddingDescription => 'Relleno inferior de los subtítulos';

  @override
  String get readerSettings => 'Reader Settings';

  @override
  String get readerSettingsDesc => 'Change reader settings';

  @override
  String get spacedPages => 'Spaced Pages';

  @override
  String get spacedPagesDesc => 'Add space between pages';

  @override
  String get hideScrollbar => 'Hide Scrollbar';

  @override
  String get hideScrollbarDesc => 'Hide scrollbar while reading';

  @override
  String get hidePageNumber => 'Hide Page Number';

  @override
  String get hidePageNumberDesc => 'Hide page number while reading';

  @override
  String get theme => 'Tema';

  @override
  String get themeDescription =>
      'Personaliza la apariencia y el ambiente de tu aplicación';

  @override
  String get darkMode => 'Modo Oscuro';

  @override
  String get enableDarkMode => 'Activar Modo Oscuro';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription =>
      'Usar el mismo color que tu fondo de pantalla';

  @override
  String get customTheme => 'Tema personalizado';

  @override
  String get customThemeDescription => 'Usa tu propio color para el tema';

  @override
  String get oledThemeVariant => 'Variante de Tema OLED';

  @override
  String get oledThemeVariantDescription => 'Activar Modo OLED';

  @override
  String get colorPicker => 'Selector de Color';

  @override
  String get pickColor => 'Seleccionar un color';

  @override
  String get colorPickerDescription => 'Elige un color';

  @override
  String get colorPickerDefault => 'Default';

  @override
  String get colorPickerCustom => 'Aduanas';

  @override
  String get customPath => 'Sendero personalizado';

  @override
  String get customPathDescription =>
      'Establecer una ruta personalizada para guardar archivos\nLong press to remove';

  @override
  String get selectDirectory => 'Seleccione un directorio';

  @override
  String get selectMediaService => 'Seleccionar servicio de medios';

  @override
  String get logFile => 'Archivo de registro';

  @override
  String get logFileDescription => 'Compartir el archivo de registro';

  @override
  String get restoreSettings => 'Restaurar Ajustes';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => 'Web View';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer =>
      '¿Quieres apoyar al Mantenedor de Dartotsu?\nConsidera Donar';

  @override
  String get donationGoal => 'Sin meta de donación por el momento';

  @override
  String get options => 'Opciones';

  @override
  String get ok => 'Aceptar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get yes => 'Sí';

  @override
  String get no => 'No';
}
