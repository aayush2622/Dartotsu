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
      'La NOUVELLE meilleure application pour\nsuivre les anime et manga';

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
  String get login => 'Se connecter';

  @override
  String loginTo(String service) {
    return 'Se connecter à $service';
  }

  @override
  String logout(String type) {
    return 'Se déconnecter $type';
  }

  @override
  String get confirmLogout => 'Êtes-vous sûr de vouloir vous déconnecter ?';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Manga';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novel => 'Roman';

  @override
  String get ln => 'Roman Léger';

  @override
  String get home => 'Accueil';

  @override
  String get search => 'Rechercher';

  @override
  String get calendar => 'Calendrier';

  @override
  String get settings => 'Paramètres';

  @override
  String get watch => 'Montre';

  @override
  String get read => 'Lire';

  @override
  String get info => 'Informations';

  @override
  String get comments => 'Commentaires';

  @override
  String get addToList => 'Ajouter à la liste';

  @override
  String get series => 'Série';

  @override
  String get season => 'Saison';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Épisodes',
      one: 'Épisode',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Chapitres',
      one: 'Chapitre',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Volumes',
      one: 'Volume',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Films',
      one: 'Film',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'Épisodes';

  @override
  String get totalChapters => 'Chapitres';

  @override
  String get genres => 'Genres';

  @override
  String get scanlators => 'Scanlators';

  @override
  String list(String type) {
    return 'Liste de $type';
  }

  @override
  String get watching => 'Regarder';

  @override
  String get reading => 'Lecture';

  @override
  String get readStatus => 'Lire';

  @override
  String get watchStatus => 'Regardé';

  @override
  String planned(String type) {
    return '$type Prévu';
  }

  @override
  String onHold(String type) {
    return 'En Pause $type';
  }

  @override
  String get droppedAnime => 'Anime Abandonné';

  @override
  String get droppedManga => 'Manga Abandonné';

  @override
  String noDropped(String type) {
    return 'Vous n\'avez pas encore abandonné de $type.';
  }

  @override
  String get continueReading => 'Continuer à Lire';

  @override
  String get continueWatching => 'Continuer à Regarder';

  @override
  String browse(String type) {
    return 'Parcourir $type';
  }

  @override
  String trending(String type) {
    return '$type Tendance';
  }

  @override
  String popular(String type) {
    return 'Populaire $type';
  }

  @override
  String get topAiring => 'Top Diffusion';

  @override
  String topRated(String type) {
    return '$type Top Noté';
  }

  @override
  String mostFavourite(String type) {
    return 'Le plus Favori $type';
  }

  @override
  String get thisSeason => 'Cette Saison';

  @override
  String get nextSeason => 'Saison Suivante';

  @override
  String get previousSeason => 'Saison Précédente';

  @override
  String get recommended => 'Recommandé';

  @override
  String get recommendationsEmptyMessage =>
      'Regardez/Lisez un Anime ou Manga pour obtenir des recommandations';

  @override
  String get recentUpdates => 'Mises à jour récentes';

  @override
  String get allCaughtUpNew =>
      'Tout est à jour, qu\'est-ce qu\'il y a de nouveau ?';

  @override
  String favorite(String type) {
    return 'Favori $type';
  }

  @override
  String get favorites => 'Favoris';

  @override
  String get noFavourites =>
      'Il semble que vous n\'aimiez rien, \nEssayez d\'aimer une série pour la garder ici.';

  @override
  String get noOnHold => 'Il semble que vous n\'ayez rien mis en pause.';

  @override
  String manageLayout(String service, String page) {
    return 'Gérer la mise en page de la page $page pour $service';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'Vous pouvez gérer la mise en page de la page $page en faisant glisser et déposer les éléments';
  }

  @override
  String get gridView => 'Vue Grille';

  @override
  String get listView => 'Vue en liste';

  @override
  String get compactView => 'Vue Compacte';

  @override
  String get layout => 'Mise en page';

  @override
  String get sort => 'Trier';

  @override
  String get utd => 'De Haut en Bas';

  @override
  String get dtu => 'À jour';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'Épisode Vu';

  @override
  String get chapterRead => 'Chapitre Lu';

  @override
  String get outOf => 'hors';

  @override
  String get totalOf => 'Somme de';

  @override
  String get selected => 'Sélection';

  @override
  String get found => 'Trouvé';

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
  String available(String type) {
    return '$type Disponible';
  }

  @override
  String installed(String type) {
    return '$type Installé';
  }

  @override
  String get extensionsDescription =>
      'Installez et gérez des extensions pour des fonctionnalités supplémentaires';

  @override
  String get addAnimeRepo => 'Ajouter Anime Repo';

  @override
  String get addAnimeRepoDesc => 'Ajouter Anime Repo de diverses sources';

  @override
  String get addMangaRepo => 'Ajouter Manga Repo';

  @override
  String get addMangaRepoDesc => 'Ajouter Manga Repo from various sources';

  @override
  String get addNovelRepo => 'Ajouter Novel Repo';

  @override
  String get addNovelRepoDesc => 'Ajouter Novel Repo de diverses sources';

  @override
  String get loadExtensionsIcon => 'Icône Charger les extensions';

  @override
  String get loadExtensionsIconDesc =>
      'Désactiver si la page des extensions lags';

  @override
  String get autoUpdate => 'Mise à jour automatique';

  @override
  String get autoUpdateDesc => 'Extensions de mise à jour automatique';

  @override
  String get installSourceToStart =>
      'Installer une source de la page d\'extension pour commencer';

  @override
  String get author => 'Auteur';

  @override
  String get averageDuration => 'Durée Moyenne';

  @override
  String get characters => 'Personnages';

  @override
  String get description => 'Synopsis';

  @override
  String get synopsis => 'Synopsis';

  @override
  String get endDate => 'Date de fin';

  @override
  String get format => 'Format';

  @override
  String get meanScore => 'Note moyenne';

  @override
  String get name => 'Nom';

  @override
  String get nameRomaji => 'Nom (Romaji)';

  @override
  String get popularity => 'Popularité';

  @override
  String get relations => 'Relations';

  @override
  String get prequel => 'Préquelle';

  @override
  String get sequel => 'Suite';

  @override
  String get source => 'Source';

  @override
  String get staff => 'Équipe';

  @override
  String get startDate => 'Date de début';

  @override
  String get status => 'Statut';

  @override
  String get studio => 'Studio';

  @override
  String get synonyms => 'Synonymes';

  @override
  String get tags => 'Tags';

  @override
  String get total => 'Total';

  @override
  String get collapseText => 'montrer moins';

  @override
  String get expandText => 'montrer plus';

  @override
  String get comingSoon => 'À VENIR';

  @override
  String get wrongTitle => 'Wrong Title ?';

  @override
  String get youTube => 'Jouez sur YouTube ?';

  @override
  String get mediaNotFound => 'Médias non trouvés';

  @override
  String get noChapterFound => 'Aucun chapitre trouvé';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Activités',
      one: 'Activité',
    );
    return '$_temp0';
  }

  @override
  String get language => 'Langue';

  @override
  String get account => 'Compte';

  @override
  String get accountDescription =>
      'Gérez facilement vos comptes AniList, MAL et Discord';

  @override
  String get common => 'Commun';

  @override
  String get commonDescription =>
      'Accédez aux paramètres généraux pour une utilisation fluide de l\'application';

  @override
  String get animeDescription =>
      'Personnalisez et gérez vos préférences d\'anime';

  @override
  String get mangaDescription =>
      'Organisez et personnalisez votre expérience manga';

  @override
  String get about => 'À propos';

  @override
  String get aboutDescription =>
      'En savoir plus sur l\'application et ses créateurs';

  @override
  String get notifications => 'Notifications';

  @override
  String get notificationsDescription =>
      'Configurez comment et quand vous recevez des notifications';

  @override
  String get offlineMode => 'Mode hors ligne';

  @override
  String get offlineModeDescription =>
      'Utilisez l\'application sans connexion internet';

  @override
  String get incognitoMode => 'Mode incognito';

  @override
  String get incognitoModeDescription =>
      'Naviguez sans enregistrer votre activité';

  @override
  String get hidePrivate => 'Masquer privé';

  @override
  String get hidePrivateDescription =>
      'Masquer les séries privées de la page d\'accueil.';

  @override
  String get hiddenMedia => 'Média Caché';

  @override
  String get noHiddenMediaFound => 'Aucun média caché trouvé';

  @override
  String get playerSettingsTitle => 'Paramètres du lecteur';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'Vitesse';

  @override
  String get speedDescription => 'Vitesse par défaut pour le lecteur';

  @override
  String get cursedSpeed => 'Vitesse maudite';

  @override
  String get cursedSpeedDescription =>
      'Pour ceux qui sont trop occupés par la vie';

  @override
  String get resizeMode => 'Mode de redimensionnement';

  @override
  String get resizeModeDescription =>
      'Mode de redimensionnement par défaut pour le lecteur';

  @override
  String get skipButton => 'Bouton de saut';

  @override
  String get skipButtonDescription => 'Durée du bouton de saut';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'Sous-titres';

  @override
  String get showSubtitles => 'Afficher les sous-titres';

  @override
  String get showSubtitlesDescription => 'Afficher les sous-titres par défaut';

  @override
  String get subtitlePreview => 'Aperçu des sous-titres';

  @override
  String get fontColor => 'Couleur de la police';

  @override
  String get fontColorDescription => 'Couleur de la police des sous-titres';

  @override
  String get fontFamily => 'Famille de police';

  @override
  String get fontFamilyDescription => 'Famille de police des sous-titres';

  @override
  String get fontSize => 'Taille de la police';

  @override
  String get fontSizeDescription => 'Taille de la police des sous-titres';

  @override
  String get fontWeight => 'Épaisseur de la police';

  @override
  String get fontWeightDescription => 'Épaisseur de la police des sous-titres';

  @override
  String get backgroundColor => 'Couleur de fond';

  @override
  String get backgroundColorDescription => 'Couleur de fond du sous-titre';

  @override
  String get outlineColor => 'Couleur du contour';

  @override
  String get outlineColorDescription => 'Couleur du contour des sous-titres';

  @override
  String get bottomPadding => 'Espacement inférieur';

  @override
  String get bottomPaddingDescription => 'Espacement inférieur du sous-titre';

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
  String get theme => 'Thème';

  @override
  String get themeDescription =>
      'Personnalisez l\'apparence et l\'ambiance de votre application';

  @override
  String get darkMode => 'Mode sombre';

  @override
  String get enableDarkMode => 'Activer le mode sombre';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription =>
      'Utilisez la même couleur que votre fond d\'écran';

  @override
  String get customTheme => 'Thème personnalisé';

  @override
  String get customThemeDescription =>
      'Utilisez votre propre couleur pour le thème';

  @override
  String get oledThemeVariant => 'Variante de thème OLED';

  @override
  String get oledThemeVariantDescription => 'Activer le mode OLED';

  @override
  String get colorPicker => 'Sélecteur de couleur';

  @override
  String get pickColor => 'Choisir une couleur';

  @override
  String get colorPickerDescription => 'Choisissez une couleur';

  @override
  String get colorPickerDefault => 'Par défaut';

  @override
  String get colorPickerCustom => 'Personnalisé';

  @override
  String get customPath => 'Voie personnalisée';

  @override
  String get customPathDescription =>
      'Définir un chemin personnalisé pour enregistrer des fichiers\nLongue pression pour supprimer';

  @override
  String get selectDirectory => 'Sélectionnez un répertoire';

  @override
  String get selectMediaService => 'Sélectionnez Service Médias';

  @override
  String get logFile => 'Fichier de connexion';

  @override
  String get logFileDescription => 'Partager le fichier journal';

  @override
  String get restoreSettings => 'Restaurer les paramètres';

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
      'Vous voulez soutenir le mainteneur de Dartotsu ?\nEnvisagez de faire un don';

  @override
  String get donationGoal => 'Pas de but de donation pour le moment';

  @override
  String get options => 'Options';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Annuler';

  @override
  String get yes => 'Oui';

  @override
  String get no => 'Non';
}
