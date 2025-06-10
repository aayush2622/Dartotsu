// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => 'The NEW Best App For\nTracking Anime & Manga';

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
  String get login => 'Login';

  @override
  String loginTo(String service) {
    return 'Login to $service';
  }

  @override
  String logout(String type) {
    return 'Logout $type';
  }

  @override
  String get confirmLogout => 'Are you sure you want to logout?';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Manga';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novel => 'Novel';

  @override
  String get ln => 'Light Novel';

  @override
  String get home => 'Home';

  @override
  String get search => 'Search';

  @override
  String get calendar => 'Calendar';

  @override
  String get settings => 'Settings';

  @override
  String get watch => 'Watch';

  @override
  String get read => 'Read';

  @override
  String get info => 'Info';

  @override
  String get comments => 'Comments';

  @override
  String get addToList => 'Add To List';

  @override
  String get series => 'Series';

  @override
  String get season => 'Season';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Episodes',
      one: 'Episode',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Chapters',
      one: 'Chapter',
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
      other: 'Movies',
      one: 'Movie',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'Episodes';

  @override
  String get totalChapters => 'Chapters';

  @override
  String get genres => 'Genres';

  @override
  String get scanlators => 'Scanlators';

  @override
  String list(String type) {
    return '$type List';
  }

  @override
  String get watching => 'Watching';

  @override
  String get reading => 'Reading';

  @override
  String get readStatus => 'Read';

  @override
  String get watchStatus => 'Watched';

  @override
  String planned(String type) {
    return 'Planned $type';
  }

  @override
  String onHold(String type) {
    return 'On Hold $type';
  }

  @override
  String get droppedAnime => 'Dropped Anime';

  @override
  String get droppedManga => 'Dropped Manga';

  @override
  String noDropped(String type) {
    return 'You haven\'t dropped any $type yet.';
  }

  @override
  String get continueReading => 'Continue Reading';

  @override
  String get continueWatching => 'Continue Watching';

  @override
  String browse(String type) {
    return 'Browse $type';
  }

  @override
  String trending(String type) {
    return 'Trending $type';
  }

  @override
  String popular(String type) {
    return 'Popular $type';
  }

  @override
  String get topAiring => 'Top Airing';

  @override
  String topRated(String type) {
    return 'Top Rated $type';
  }

  @override
  String mostFavourite(String type) {
    return 'Most Favourite $type';
  }

  @override
  String get thisSeason => 'This Season';

  @override
  String get nextSeason => 'Next Season';

  @override
  String get previousSeason => 'Previous Season';

  @override
  String get recommended => 'Recommended';

  @override
  String get recommendationsEmptyMessage =>
      'Watch/Read some Anime or Manga to get Recommendations';

  @override
  String get recentUpdates => 'Recent Updates';

  @override
  String get allCaughtUpNew => 'All caught up, what\'s New?';

  @override
  String favorite(String type) {
    return 'Favorite $type';
  }

  @override
  String get favorites => 'Favorites';

  @override
  String get noFavourites =>
      'Looks like you don\'t like anything,\nTry liking a show to keep it here.';

  @override
  String get noOnHold => 'Looks like you haven\'t put anything on hold.';

  @override
  String manageLayout(String service, String page) {
    return 'Manage $page page Layout for $service';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'You can manage the layout for $page page by dragging and dropping the items';
  }

  @override
  String get gridView => 'Grid View';

  @override
  String get listView => 'List View';

  @override
  String get compactView => 'Compact View';

  @override
  String get layout => 'Layout';

  @override
  String get sort => 'Sort';

  @override
  String get utd => 'Up To Down';

  @override
  String get dtu => 'Down To Up';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'Episode Watched';

  @override
  String get chapterRead => 'Chapter Read';

  @override
  String get outOf => 'out of';

  @override
  String get totalOf => 'Total of';

  @override
  String get selected => 'Selected';

  @override
  String get found => 'Found';

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
    return 'Available $type';
  }

  @override
  String installed(String type) {
    return 'Installed $type';
  }

  @override
  String get extensionsDescription =>
      'Install and manage extensions for added functionality';

  @override
  String get addAnimeRepo => 'Add Anime Repo';

  @override
  String get addAnimeRepoDesc => 'Add Anime Repo from various sources';

  @override
  String get addMangaRepo => 'Add Manga Repo';

  @override
  String get addMangaRepoDesc => 'Add Manga Repo from various sources';

  @override
  String get addNovelRepo => 'Add Novel Repo';

  @override
  String get addNovelRepoDesc => 'Add Novel Repo from various sources';

  @override
  String get loadExtensionsIcon => 'Load Extensions icon';

  @override
  String get loadExtensionsIconDesc => 'Disable if extensions page lags';

  @override
  String get autoUpdate => 'Auto Update';

  @override
  String get autoUpdateDesc => 'Auto Update Extensions';

  @override
  String get installSourceToStart =>
      'Install a source from extension page to start';

  @override
  String get author => 'Author';

  @override
  String get averageDuration => 'Average Duration';

  @override
  String get characters => 'Characters';

  @override
  String get description => 'Synopsis';

  @override
  String get synopsis => 'Synopsis';

  @override
  String get endDate => 'End Date';

  @override
  String get format => 'Format';

  @override
  String get meanScore => 'Mean Score';

  @override
  String get name => 'Name';

  @override
  String get nameRomaji => 'Name (Romaji)';

  @override
  String get popularity => 'Popularity';

  @override
  String get relations => 'Relations';

  @override
  String get prequel => 'PREQUEL';

  @override
  String get sequel => 'SEQUEL';

  @override
  String get source => 'Source';

  @override
  String get staff => 'Staff';

  @override
  String get startDate => 'Start Date';

  @override
  String get status => 'Status';

  @override
  String get studio => 'Studio';

  @override
  String get synonyms => 'Synonyms';

  @override
  String get tags => 'Tags';

  @override
  String get total => 'Total';

  @override
  String get collapseText => 'show less';

  @override
  String get expandText => 'show more';

  @override
  String get comingSoon => 'Coming SOON';

  @override
  String get wrongTitle => 'Wrong Title?';

  @override
  String get youTube => 'Play on YouTube?';

  @override
  String get mediaNotFound => 'Media not found';

  @override
  String get noChapterFound => 'No chapter found';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Activities',
      one: 'Activity',
    );
    return '$_temp0';
  }

  @override
  String get language => 'Language';

  @override
  String get account => 'Account';

  @override
  String get accountDescription =>
      'Manage your AniList, MAL, and Discord accounts effortlessly';

  @override
  String get common => 'Common';

  @override
  String get commonDescription =>
      'Access general settings for seamless app usage';

  @override
  String get animeDescription =>
      'Personalize and manage your anime preferences';

  @override
  String get mangaDescription => 'Organize and tailor your manga experience';

  @override
  String get about => 'About';

  @override
  String get aboutDescription => 'Learn more about the app and its creators';

  @override
  String get notifications => 'Notifications';

  @override
  String get notificationsDescription =>
      'Configure how and when you receive notifications';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get offlineModeDescription =>
      'Use the app without an internet connection';

  @override
  String get incognitoMode => 'Incognito Mode';

  @override
  String get incognitoModeDescription => 'Browse without saving your activity';

  @override
  String get hidePrivate => 'Hide Private';

  @override
  String get hidePrivateDescription => 'Hide private series from Home page.';

  @override
  String get hiddenMedia => 'Hidden Media';

  @override
  String get noHiddenMediaFound => 'No hidden media found';

  @override
  String get playerSettingsTitle => 'Player Settings';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'Speed';

  @override
  String get speedDescription => 'Default speed for player';

  @override
  String get cursedSpeed => 'Cursed Speed';

  @override
  String get cursedSpeedDescription => 'For people who are too busy with life';

  @override
  String get resizeMode => 'Resize mode';

  @override
  String get resizeModeDescription => 'Default resize mode for player';

  @override
  String get skipButton => 'Skip Button';

  @override
  String get skipButtonDescription => 'Skip button duration';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'Subtitles';

  @override
  String get showSubtitles => 'Show Subtitles';

  @override
  String get showSubtitlesDescription => 'Show subtitles by default';

  @override
  String get subtitlePreview => 'Subtitle Preview';

  @override
  String get fontColor => 'Font Color';

  @override
  String get fontColorDescription => 'Subtitle font color';

  @override
  String get fontFamily => 'Font Family';

  @override
  String get fontFamilyDescription => 'Subtitle font family';

  @override
  String get fontSize => 'Font Size';

  @override
  String get fontSizeDescription => 'Subtitle font size';

  @override
  String get fontWeight => 'Font Weight';

  @override
  String get fontWeightDescription => 'Subtitle font weight';

  @override
  String get backgroundColor => 'Background Color';

  @override
  String get backgroundColorDescription => 'Subtitle background color';

  @override
  String get outlineColor => 'Outline Color';

  @override
  String get outlineColorDescription => 'Subtitle outline color';

  @override
  String get bottomPadding => 'Bottom Padding';

  @override
  String get bottomPaddingDescription => 'Subtitle bottom padding';

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
  String get theme => 'Theme';

  @override
  String get themeDescription =>
      'Customize the appearance and vibe of your app';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get enableDarkMode => 'Enable Dark Mode';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription => 'Use the same color as your wallpaper';

  @override
  String get customTheme => 'Custom theme';

  @override
  String get customThemeDescription => 'Use your own color for the theme';

  @override
  String get oledThemeVariant => 'OLED theme Variant';

  @override
  String get oledThemeVariantDescription => 'Enable OLED Mode';

  @override
  String get colorPicker => 'Color Picker';

  @override
  String get pickColor => 'Pick a color';

  @override
  String get colorPickerDescription => 'Choose a color';

  @override
  String get colorPickerDefault => 'Default';

  @override
  String get colorPickerCustom => 'Custom';

  @override
  String get customPath => 'Custom Path';

  @override
  String get customPathDescription =>
      'Set a custom path to save files\nLong press to remove';

  @override
  String get selectDirectory => 'Select a directory';

  @override
  String get selectMediaService => 'Select Media Service';

  @override
  String get logFile => 'Log File';

  @override
  String get logFileDescription => 'Share the log file';

  @override
  String get restoreSettings => 'Restore Settings';

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
      'Want to support Dartotsu\'s Maintainer?\nConsider Donating';

  @override
  String get donationGoal => 'No donation goal atm';

  @override
  String get options => 'Options';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Cancel';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'No';
}
