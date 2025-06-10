// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kannada (`kn`).
class AppLocalizationsKn extends AppLocalizations {
  AppLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'ಹೆಚ್ಚು ಒಳ್ಳೆಯ ಆಪ್\nಆನಿಮೆ ಮತ್ತು ಮಾಂಗಾ ಟ್ರ್ಯಾಕ್ ಮಾಡಲು';

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
  String get login => 'ಲಾಗಿನ್';

  @override
  String loginTo(String service) {
    return '$service ಗೆ ಲಾಗಿನ್ ಆಗಿ';
  }

  @override
  String logout(String type) {
    return '$type ಲಾಗೌಟ್ ಆಗಿ';
  }

  @override
  String get confirmLogout => 'ನೀವು ಲಾಗೌಟ್ ಆಗಲು ಖಚಿತವೇ?';

  @override
  String get anime => 'ಆನಿಮೆ';

  @override
  String get manga => 'ಮಂಗಾ';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novel => 'ನವಲ';

  @override
  String get ln => 'ಲೈಟ್ ನವಲ';

  @override
  String get home => 'Home';

  @override
  String get search => 'ಹುಡುಕು';

  @override
  String get calendar => 'ದಿನಚರಿ';

  @override
  String get settings => 'ಸೆಟ್ಟಿಂಗ್ಗಳು';

  @override
  String get watch => 'ಕಾಣು';

  @override
  String get read => 'ಊದಿನು';

  @override
  String get info => 'Info';

  @override
  String get comments => 'ಕಮೆಂಟ್‌ಗಳು';

  @override
  String get addToList => 'Add To List';

  @override
  String get series => 'Series';

  @override
  String get season => 'ಋತು';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ಎಪಿಸೋಡ್‌ಗಳು',
      one: 'ಎಪಿಸೋಡ್',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ಅಧ್ಯಾಯಗಳು',
      one: 'ಅಧ್ಯಾಯ',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ಒಳಕೋಡುಗಳು',
      one: 'ಒಳಕೋಡು',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ಚಿತ್ರಗಳು',
      one: 'ಚಿತ್ರ',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'ಎಪಿಸೋಡ್‌ಗಳು';

  @override
  String get totalChapters => 'ಅಧ್ಯಾಯಗಳು';

  @override
  String get genres => 'ಪ್ರಕಾರಗಳು';

  @override
  String get scanlators => 'ಸ್ಕ್ಯಾನ್ಲೇಟರ್ಸ್';

  @override
  String list(String type) {
    return '$type ಪಟ್ಟಿ';
  }

  @override
  String get watching => 'ವೀಕ್ಷಿಸಲಾಗುತ್ತಿದೆ';

  @override
  String get reading => 'ಓದಲು';

  @override
  String get readStatus => 'ಊದಿನು';

  @override
  String get watchStatus => 'ವೀಕ್ಷಿಸಲಾಗಿದೆ';

  @override
  String planned(String type) {
    return 'ಯೋಜನೆಗೊಳಿಸಿದ $type';
  }

  @override
  String onHold(String type) {
    return 'ಹೋಲ್ಡ್ ಮೇಲೆ $type';
  }

  @override
  String get droppedAnime => 'ಡ್ರಾಪ್ ಮಾಡಲಾದ ಆನಿಮೆ';

  @override
  String get droppedManga => 'ಡ್ರಾಪ್ ಮಾಡಲಾದ ಮಾಂಗಾ';

  @override
  String noDropped(String type) {
    return 'ನೀವು ಯಾವುದೇ $type ಅನ್ನು ಡ್ರಾಪ್ ಮಾಡಿಲ್ಲ.';
  }

  @override
  String get continueReading => 'ಊದಲು ಮುಂದುವರಿಸು';

  @override
  String get continueWatching => 'ಕಾಣಲು ಮುಂದುವರಿಸು';

  @override
  String browse(String type) {
    return '$type ಬ್ರೌಸ್ ಮಾಡಿ';
  }

  @override
  String trending(String type) {
    return 'ಚಲನೆಯಲ್ಲಿರುವ $type';
  }

  @override
  String popular(String type) {
    return 'ಪ್ರಸಿದ್ಧ $type';
  }

  @override
  String get topAiring => 'ಟಾಪ್ ಎಯರಿಂಗ್';

  @override
  String topRated(String type) {
    return 'ಟಾಪ್ ರೇಟೆಡ್ $type';
  }

  @override
  String mostFavourite(String type) {
    return 'ಅತ್ಯಂತ ಇಷ್ಟಪಡುವ $type';
  }

  @override
  String get thisSeason => 'ಈ ಋತು';

  @override
  String get nextSeason => 'ಆಗಿನ ಋತು';

  @override
  String get previousSeason => 'ಹಿಂದಿನ ಋತು';

  @override
  String get recommended => 'ಶಿಫಾರಸು ಮಾಡಲಾಗಿದೆ';

  @override
  String get recommendationsEmptyMessage =>
      'ಆನಿಮೆ ಅಥವಾ ಮಾಂಗಾ ಓದಿ/ವೀಕ್ಷಿಸಿ ರೆಕೆಂಡೇಶನ್ಗಳನ್ನು ಪಡೆಯಿರಿ';

  @override
  String get recentUpdates => 'ಇತ್ತೀಚಿನ ಅಪ್ಡೇಟುಗಳು';

  @override
  String get allCaughtUpNew => 'ಎಲ್ಲವೂ ಅಪ್ಡೇಟ್ ಆಗಿದೆ, ಹೊಸದು ಏನು?';

  @override
  String favorite(String type) {
    return 'ಇಷ್ಟಪಡುವ $type';
  }

  @override
  String get favorites => 'ಇಷ್ಟಗಳು';

  @override
  String get noFavourites =>
      'ನೀವು ಯಾವುದೇ ಆನಿಮೆ/ಮಾಂಗಾ ಇಷ್ಟಪಡುತ್ತಿಲ್ಲ,\nಇದನ್ನು ಇಲ್ಲಿ ಇಡುವುದಕ್ಕಾಗಿ ಶೋಗೆ ಇಷ್ಟಪಡು.';

  @override
  String get noOnHold => 'ನೀವು ಯಾವುದೇ ಸರಣಿಯನ್ನು ಹೋಲ್ಡ್‌ನಲ್ಲಿ ಇಟ್ಟಿಲ್ಲ.';

  @override
  String manageLayout(String service, String page) {
    return '$service ಗೆ $page ಪುಟದ ವಿನ್ಯಾಸವನ್ನು ನಿರ್ವಹಿಸಿ';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'ನೀವು ಐಟಂಗಳನ್ನು ಆಕರ್ಷಿಸಿ ಮತ್ತು ಬಿಡಿಸಿ $page ಪುಟದ ವಿನ್ಯಾಸವನ್ನು ನಿರ್ವಹಿಸಬಹುದು';
  }

  @override
  String get gridView => 'ಗ್ರಿಡ್ ವೀಕ್ಷಣೆ';

  @override
  String get listView => 'List View';

  @override
  String get compactView => 'ಸಂಕುಚಿತ ವೀಕ್ಷಣೆ';

  @override
  String get layout => 'Layout';

  @override
  String get sort => 'ವರ್ಗೀಕರಿಸು';

  @override
  String get utd => 'ಮೇಲೆ ಕೆಳಗೆ';

  @override
  String get dtu => 'Down To Up';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'ಎಪಿಸೋಡ್ ವೀಕ್ಷಿಸಲಾಯಿತು';

  @override
  String get chapterRead => 'ಅಧ್ಯಾಯ ಓದಲು';

  @override
  String get outOf => 'ಯಿಂದ';

  @override
  String get totalOf => 'ಒಟ್ಟು';

  @override
  String get selected => 'ಆಯ್ಕೆ ಮಾಡಲಾಗಿದೆ';

  @override
  String get found => 'ಕಂಡುಬಂದಿದೆ';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ವಿಸ್ತರಣೆಗಳು',
      one: 'ವಿಸ್ತರಣೆ',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return 'ಲಭ್ಯವಿದೆ $type';
  }

  @override
  String installed(String type) {
    return 'ಇನ್ಸ್ಟಾಲ್ ಮಾಡಲಾಗಿದೆ $type';
  }

  @override
  String get extensionsDescription =>
      'ಹೆಚ್ಚು ಕಾರ್ಯಕ್ಷಮತೆಗಾಗಿ ವಿಸ್ತರಣೆಗಳನ್ನು ಇನ್ಸ್ಟಾಲ್ ಮಾಡಿ ಮತ್ತು ನಿರ್ವಹಿಸಿ';

  @override
  String get addAnimeRepo => 'ಅನಿಮೆ ರೆಪೊ ಸೇರಿಸಿ';

  @override
  String get addAnimeRepoDesc => 'ವಿವಿಧ ಮೂಲಗಳಿಂದ ಅನಿಮೆ ರೆಪೊ ಸೇರಿಸಿ';

  @override
  String get addMangaRepo => 'ಮಂಗಾ ರೆಪೊ ಸೇರಿಸಿ';

  @override
  String get addMangaRepoDesc => 'ವಿವಿಧ ಮೂಲಗಳಿಂದ ಮಂಗಾ ರೆಪೊ ಸೇರಿಸಿ';

  @override
  String get addNovelRepo => 'ನಾವೆಲ್ ರೆಪೊ ಸೇರಿಸಿ';

  @override
  String get addNovelRepoDesc => 'ವಿವಿಧ ಮೂಲಗಳಿಂದ ನಾವೆಲ್ ರೆಪೊ ಸೇರಿಸಿ';

  @override
  String get loadExtensionsIcon => 'ವಿಸ್ತರಣೆಗಳ ಐಕಾನ್ ಲೋಡ್ ಮಾಡಿ';

  @override
  String get loadExtensionsIconDesc =>
      'ವಿಸ್ತರಣೆಗಳ ಪುಟ ಲ್ಯಾಗ್ ಆದರೆ ನಿಷ್ಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get autoUpdate => 'ಸ್ವಯಂ ನವೀಕರಣ';

  @override
  String get autoUpdateDesc => 'ವಿಸ್ತರಣೆಗಳ ಸ್ವಯಂ ನವೀಕರಣ';

  @override
  String get installSourceToStart =>
      'ಪ್ರಾರಂಭಿಸಲು ವಿಸ್ತರಣಾ ಪುಟದಿಂದ ಮೂಲವನ್ನು ಸ್ಥಾಪಿಸಿ';

  @override
  String get author => 'Author';

  @override
  String get averageDuration => 'ಮೂಲಕಿಕ ಕಾಲಾವಧಿ';

  @override
  String get characters => 'ಪಾತ್ರಗಳು';

  @override
  String get description => 'ಸಾರಾಂಶ';

  @override
  String get synopsis => 'ಸಾರಾಂಶ';

  @override
  String get endDate => 'End Date';

  @override
  String get format => 'ಆಕಾರ';

  @override
  String get meanScore => 'Mean Score';

  @override
  String get name => 'Name';

  @override
  String get nameRomaji => 'ಹೆಸರು (ರೋಮಾಜಿ)';

  @override
  String get popularity => 'ಜನಪ್ರಿಯತೆ';

  @override
  String get relations => 'Relations';

  @override
  String get prequel => 'PREQUEL';

  @override
  String get sequel => 'SEQUEL';

  @override
  String get source => 'Source';

  @override
  String get staff => 'ಸಿಬ್ಬಂದಿ';

  @override
  String get startDate => 'Start Date';

  @override
  String get status => 'Status';

  @override
  String get studio => 'Studio';

  @override
  String get synonyms => 'ಸಮಾನಾರ್ಥಕ ಪದಗಳು';

  @override
  String get tags => 'Tags';

  @override
  String get total => 'Total';

  @override
  String get collapseText => 'ಕಡಿಮೆ ತೋರಿಸು';

  @override
  String get expandText => 'ಹೆಚ್ಚು ತೋರಿಸು';

  @override
  String get comingSoon => 'ಆಗುವುದೆಂದು ಬರುತ್ತಿದೆ';

  @override
  String get wrongTitle => 'ತಪ್ಪಾದ ಶೀರ್ಷಿಕೆ?';

  @override
  String get youTube => 'YouTube ನಲ್ಲಿ ಪ್ಲೇ ಮಾಡಲಾ?';

  @override
  String get mediaNotFound => 'ಮಾಧ್ಯಮ ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get noChapterFound => 'ಅಧ್ಯಾಯ ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ಚಟುವಟಿಕೆಗಳು',
      one: 'ಚಟುವಟಿಕೆ',
    );
    return '$_temp0';
  }

  @override
  String get language => 'ಭಾಷೆ';

  @override
  String get account => 'ಖಾತೆ';

  @override
  String get accountDescription =>
      'ನಿಮ್ಮ AniList, MAL, ಮತ್ತು Discord ಖಾತೆಗಳನ್ನು ಸುಲಭವಾಗಿ ನಿರ್ವಹಿಸಿ';

  @override
  String get common => 'ಸಾಮಾನ್ಯ';

  @override
  String get commonDescription =>
      'ಆಪ್ ಬಳಕೆಗೆ ಸುಲಭವಾದ ಸಾಮಾನ್ಯ ಸೆಟ್ಟಿಂಗ್ಗಳನ್ನು ಪ್ರವೇಶಿಸಿ';

  @override
  String get animeDescription =>
      'ನಿಮ್ಮ ಆನಿಮೆ ಪ್ರಾಮುಖ್ಯತೆಯನ್ನು ವೈಯಕ್ತಿಕಗೊಳಿಸಿ ಮತ್ತು ನಿರ್ವಹಿಸಿ';

  @override
  String get mangaDescription =>
      'ನಿಮ್ಮ ಮಂಗಾ ಅನುಭವವನ್ನು ಸಂಘಟಿಸಿ ಮತ್ತು ಅನुकूलಿಸು';

  @override
  String get about => 'ಬಗ್ಗೆ';

  @override
  String get aboutDescription =>
      'ಆಪ್ ಮತ್ತು ಅದರ ನಿರ್ಮಾಪಕರುಗಳ ಬಗ್ಗೆ ಹೆಚ್ಚಿನ ಮಾಹಿತಿ ತಿಳಿದುಕೊಳ್ಳಿ';

  @override
  String get notifications => 'ಅधಿಸೂಚನೆಗಳು';

  @override
  String get notificationsDescription =>
      'ನೀವು ಹೇಗೆ ಮತ್ತು ಯಾವಾಗ ಅಧಿಸೂಚನೆಗಳನ್ನು ಸ್ವೀಕರಿಸಬೇಕೆಂದು ಸಂರಚಿಸಿ';

  @override
  String get offlineMode => 'ಆಫ್‌ಲೈನ್ ಮೋಡ್';

  @override
  String get offlineModeDescription => 'ಇಂಟರ್ನೆಟ್ ಸಂಪರ್ಕ ಇಲ್ಲದೆ ಆಪ್ ಅನ್ನು ಬಳಸಿ';

  @override
  String get incognitoMode => 'ಇಂಕೋಗ್ನಿಟೋ ಮೋಡ್';

  @override
  String get incognitoModeDescription =>
      'ನಿಮ್ಮ ಚಟುವಟಿಕೆಯನ್ನು ಉಳಿಸದೆ ಬ್ರೌಸ್ ಮಾಡಿ';

  @override
  String get hidePrivate => 'ಪ್ರೈವೇಟ್ ಹಚ್ಚು';

  @override
  String get hidePrivateDescription => 'ಹೋಮ್ ಪುಟದಿಂದ ಖಾಸಗಿ ಸರಣಿಗಳನ್ನು ಹಚ್ಚು.';

  @override
  String get hiddenMedia => 'ಹಚ್ಚಿದ ಮೀಡಿಯಾ';

  @override
  String get noHiddenMediaFound => 'ಯಾವುದೇ ಹಚ್ಚಿದ ಮೀಡಿಯಾ ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get playerSettingsTitle => 'ಪ್ಲೇಯರ್ ಸೆಟ್ಟಿಂಗ್ಗಳು';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'ವೇಗ';

  @override
  String get speedDescription => 'ಪ್ಲೇಯರ್‌ಗಾಗಿ ಡಿಫಾಲ್ಟ್ ವೇಗ';

  @override
  String get cursedSpeed => 'ಶಾಪಿತ ವೇಗ';

  @override
  String get cursedSpeedDescription => 'ಜೀವನದಲ್ಲಿ ತುಂಬಾ ಬ್ಯುಸಿ ಆಗಿರುವವರಿಗಾಗಿ';

  @override
  String get resizeMode => 'ವಿಸ್ತರಣೆ ಮೋಡ್';

  @override
  String get resizeModeDescription => 'ಪ್ಲೇಯರ್‌ಗಾಗಿ ಡಿಫಾಲ್ಟ್ ವಿಸ್ತರಣೆ ಮೋಡ್';

  @override
  String get skipButton => 'ಸ್ಕಿಪ್ ಬಟನ್';

  @override
  String get skipButtonDescription => 'ಸ್ಕಿಪ್ ಬಟನ್ ಕಾಲಾವಧಿ';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'ಉಪಶೀರ್ಷಿಕೆಗಳು';

  @override
  String get showSubtitles => 'ಉಪಶೀರ್ಷಿಕೆಗಳನ್ನು ತೋರಿಸಿ';

  @override
  String get showSubtitlesDescription =>
      'ಡಿಫಾಲ್ಟ್‌ನಾಗಿ ಉಪಶೀರ್ಷಿಕೆಗಳನ್ನು ತೋರಿಸಿ';

  @override
  String get subtitlePreview => 'ಉಪಶೀರ್ಷಿಕೆ ಪೂರ್ವದರ್ಶನ';

  @override
  String get fontColor => 'ಫಾಂಟ್ ಬಣ್ಣ';

  @override
  String get fontColorDescription => 'ಉಪಶೀರ್ಷಿಕೆಯ ಫಾಂಟ್ ಬಣ್ಣ';

  @override
  String get fontFamily => 'ಫಾಂಟ್ ಕುಟುಂಬ';

  @override
  String get fontFamilyDescription => 'ಉಪಶೀರ್ಷಿಕೆಯ ಫಾಂಟ್ ಕುಟುಂಬ';

  @override
  String get fontSize => 'ಫಾಂಟ್ ಗಾತ್ರ';

  @override
  String get fontSizeDescription => 'ಉಪಶೀರ್ಷಿಕೆಯ ಫಾಂಟ್ ಗಾತ್ರ';

  @override
  String get fontWeight => 'ಫಾಂಟ್ ತೂಕ';

  @override
  String get fontWeightDescription => 'ಉಪಶೀರ್ಷಿಕೆಯ ಫಾಂಟ್ ತೂಕ';

  @override
  String get backgroundColor => 'ಹಿನ್ನೆಲೆಯ ಬಣ್ಣ';

  @override
  String get backgroundColorDescription => 'ಉಪಶೀರ್ಷಿಕೆಯ ಹಿನ್ನೆಲೆಯ ಬಣ್ಣ';

  @override
  String get outlineColor => 'ಊಟ್ಲೈನ್ ಬಣ್ಣ';

  @override
  String get outlineColorDescription => 'ಉಪಶೀರ್ಷಿಕೆಯ ಊಟ್ಲೈನ್ ಬಣ್ಣ';

  @override
  String get bottomPadding => 'ಕೆಳಗಿನ ಪ್ಯಾಡಿಂಗ್';

  @override
  String get bottomPaddingDescription => 'ಉಪಶೀರ್ಷಿಕೆಯ ಕೆಳಗಿನ ಪ್ಯಾಡಿಂಗ್';

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
  String get theme => 'ಥೀಮ್';

  @override
  String get themeDescription =>
      'ನಿಮ್ಮ ಆಪ್‍ನ ಅಪರೂಪವನ್ನು ಮತ್ತು ಆನಂದವನ್ನು ಕಸ್ಟಮೈಸ್ ಮಾಡಿ';

  @override
  String get darkMode => 'ಡಾರ್ಕ್ ಮೋಡ್';

  @override
  String get enableDarkMode => 'ಡಾರ್ಕ್ ಮೋಡ್ ಅನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription => 'ನಿಮ್ಮ ವಾಲ್‌ಪೇಪರ್‌ನಂತಹ ಬಣ್ಣವನ್ನು ಬಳಸಿ';

  @override
  String get customTheme => 'ಕಸ್ಟಮ್ ಥೀಮ್';

  @override
  String get customThemeDescription => 'ನೀವು ನಿಮ್ಮ ಬಣ್ಣವನ್ನು ಥೀಮಿಗಾಗಿ ಬಳಸಬಹುದು';

  @override
  String get oledThemeVariant => 'OLED ಥೀಮ್ ವ್ಯಾರಿಯಂಟ್';

  @override
  String get oledThemeVariantDescription => 'OLED ಮೋಡ್ ಸಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get colorPicker => 'ಬಣ್ಣ ಆರಿಸುವಿ';

  @override
  String get pickColor => 'ನನಸು ಮೆತ್ತಲು';

  @override
  String get colorPickerDescription => 'ಒಂದು ಬಣ್ಣ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get colorPickerDefault => 'ಪೂರ್ವನಿಯೋಜಿತ';

  @override
  String get colorPickerCustom => 'ಕಸ್ಟಮ್';

  @override
  String get customPath => 'ಕಸ್ಟಮ್ ಮಾರ್ಗ';

  @override
  String get customPathDescription =>
      'ಫೈಲ್‌ಗಳನ್ನು ಉಳಿಸಲು ಕಸ್ಟಮ್ ಮಾರ್ಗವನ್ನು ಹೊಂದಿಸಿ\nತೆಗೆದುಹಾಕಲು ದೀರ್ಘವಾಗಿ ಒತ್ತಿರಿ';

  @override
  String get selectDirectory => 'ಡೈರೆಕ್ಟರಿಯನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get selectMediaService => 'ಮಾಧ್ಯಮ ಸೇವೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get logFile => 'ಲಾಗ್ ಕಡತ';

  @override
  String get logFileDescription => 'ಲಾಗ್ ಫೈಲ್ ಅನ್ನು ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get restoreSettings => 'ಸೆಟ್ಟಿಂಗ್ಗಳನ್ನು ಪುನಃಸ್ಥಾಪಿಸಿ';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => 'ವೆಬ್ ವೀಕ್ಷಣೆ';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer =>
      'Dartotsu ನ ಸಂರಕ್ಷಣಕನನ್ನು ಬೆಂಬಲಿಸಲು ಇಚ್ಛಿಸುತ್ತಿದ್ದೀರಾ?\nದಾನ ಮಾಡಲು ಪರಿಗಣಿಸಿ';

  @override
  String get donationGoal => 'ಈ ಕ್ಷಣಕ್ಕೆ ದಾನ ಗುರಿ ಇಲ್ಲ';

  @override
  String get options => 'Options';

  @override
  String get ok => 'ಓಕೆ';

  @override
  String get cancel => 'ನಿರಾಕರಿಸು';

  @override
  String get yes => 'ಹೌದು';

  @override
  String get no => 'ಇಲ್ಲ';
}
