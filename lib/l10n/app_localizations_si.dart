// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sinhala Sinhalese (`si`).
class AppLocalizationsSi extends AppLocalizations {
  AppLocalizationsSi([String locale = 'si']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'අලුත්ම හොඳම ඇප් එක\nඅනිමේ සහ මංගා අනුගමනය කිරීම සඳහා';

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
  String get login => 'ඉන්ටර්නෙට් පිවිසීම';

  @override
  String loginTo(String service) {
    return '$service වෙත පුරනය වන්න';
  }

  @override
  String logout(String type) {
    return '$type පිටවීම';
  }

  @override
  String get confirmLogout => 'ඔබට පිටවීමට නිසැකද?';

  @override
  String get anime => 'අනිමේ';

  @override
  String get manga => 'මංගා';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novel => 'කතාව';

  @override
  String get ln => 'සැරසිලි කතාව';

  @override
  String get home => 'Home';

  @override
  String get search => 'සොයන්න';

  @override
  String get calendar => 'නැරඹුම්';

  @override
  String get settings => 'සැකසුම්';

  @override
  String get watch => 'පරික්ෂා කරන්න';

  @override
  String get read => 'පැහැදිලි කරන්න';

  @override
  String get info => 'Info';

  @override
  String get comments => 'අවබෝධ';

  @override
  String get addToList => 'Add To List';

  @override
  String get series => 'Series';

  @override
  String get season => 'ගෙදර';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'කතාන්තර',
      one: 'කතාන්තරය',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'අධිෂ්ඨාන',
      one: 'අධිෂ්ඨානය',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ප්‍රමාණ',
      one: 'ප්‍රමාණය',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'චිත්‍රපට',
      one: 'චිත්‍රපටය',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'කතාන්තර';

  @override
  String get totalChapters => 'අධිෂ්ඨාන';

  @override
  String get genres => 'ප්‍රකාර';

  @override
  String get scanlators => 'ස්කෑන් කර්මකරු';

  @override
  String list(String type) {
    return '$type ලැයිස්තුව';
  }

  @override
  String get watching => 'නැරඹීම';

  @override
  String get reading => 'කියවීම';

  @override
  String get readStatus => 'පැහැදිලි කරන්න';

  @override
  String get watchStatus => 'නැරඹින ලදි';

  @override
  String planned(String type) {
    return '$type සැලසුම් කර ඇත';
  }

  @override
  String onHold(String type) {
    return '$type තවත් රැඳී';
  }

  @override
  String get droppedAnime => 'ඉවත් කරන ලද ඇනිමේ';

  @override
  String get droppedManga => 'ඉවත් කරන ලද මංගා';

  @override
  String noDropped(String type) {
    return 'ඔබ කිසිඳු $type ඉවත් කර නොමැත.';
  }

  @override
  String get continueReading => 'පැහැදිලි කිරීම දිගටම කරන්න';

  @override
  String get continueWatching => 'පරික්ෂා කිරීම දිගටම කරන්න';

  @override
  String browse(String type) {
    return '$type බ්‍රව්ස් කරන්න';
  }

  @override
  String trending(String type) {
    return '$type ජනප්‍රිය වේ';
  }

  @override
  String popular(String type) {
    return '$type ජනප්‍රිය';
  }

  @override
  String get topAiring => 'ඉහළ අයර්';

  @override
  String topRated(String type) {
    return '$type ඉහළව අගය කරන';
  }

  @override
  String mostFavourite(String type) {
    return '$type ඉතාමත් කැමති';
  }

  @override
  String get thisSeason => 'මෙම සමය';

  @override
  String get nextSeason => 'ඉදිරි සමය';

  @override
  String get previousSeason => 'පෙර සමය';

  @override
  String get recommended => 'යෝජනා කරන ලදී';

  @override
  String get recommendationsEmptyMessage =>
      'නවීන මංගා හෝ ඇනිමේ කියවන්න/නරඹන්න, යෝජනා ලබා ගන්න';

  @override
  String get recentUpdates => 'අවසන් යාවත්කාලීන';

  @override
  String get allCaughtUpNew => 'සියල්ල අවසන්, නවතම කුමක්ද?';

  @override
  String favorite(String type) {
    return '$type ආදරණීය';
  }

  @override
  String get favorites => 'ප්‍රියතම';

  @override
  String get noFavourites =>
      'ඔබේ කැමති කිසිම දෙයක් නොමැත,\nඔබ කැමති කුමක් හෝ විකල්ප කිරීමෙන් එය මෙහි තබා ගන්න.';

  @override
  String get noOnHold => 'ඔබට කිසිඳු දෙයක් තවදුරටත් නවතා නොමැත.';

  @override
  String manageLayout(String service, String page) {
    return '$service සඳහා $page පිටුවේ රූපය කළමනාකරණය කරන්න';
  }

  @override
  String manageLayoutDescription(String page) {
    return '$page පිටුවේ රූපය කළමනාකරණය කිරීමට ඔබට අයිතම ගස් ව්‍යුහකිරීම සහ හොඳට මාරු කිරීම කළ හැක';
  }

  @override
  String get gridView => 'අගුළු නිරීක්ෂණය';

  @override
  String get listView => 'List View';

  @override
  String get compactView => 'සම්පීඩිත නිරීක්ෂණය';

  @override
  String get layout => 'Layout';

  @override
  String get sort => 'වර්ගීකෘත කරන්න';

  @override
  String get utd => 'ඉහළින් පහළට';

  @override
  String get dtu => 'Down To Up';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'පරික්ෂා කරන ලද කතාන්තර';

  @override
  String get chapterRead => 'පැහැදිලි කරන ලද අධිෂ්ඨානය';

  @override
  String get outOf => 'තුළ';

  @override
  String get totalOf => 'මුළු';

  @override
  String get selected => 'තෝරාගන්නා ලදි';

  @override
  String get found => 'හමු විය';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'අනුවාද',
      one: 'අනුවාදය',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return '$type ලබා ගත හැක';
  }

  @override
  String installed(String type) {
    return '$type ස්ථාපිත කර ඇත';
  }

  @override
  String get extensionsDescription =>
      'අමතර කාර්යයන් සඳහා විශේෂාංග ඉස්ථාපනය සහ කළමනාකරණය කරන්න';

  @override
  String get addAnimeRepo => 'Anime ගබඩා එක් කරන්න';

  @override
  String get addAnimeRepoDesc => 'විවිධ මූලාශ්‍ර වලින් Anime ගබඩා එක් කරන්න';

  @override
  String get addMangaRepo => 'Manga ගබඩා එක් කරන්න';

  @override
  String get addMangaRepoDesc => 'විවිධ මූලාශ්‍ර වලින් Manga ගබඩා එක් කරන්න';

  @override
  String get addNovelRepo => 'නවකතා ගබඩා එක් කරන්න';

  @override
  String get addNovelRepoDesc => 'විවිධ මූලාශ්‍ර වලින් නවකතා ගබඩා එක් කරන්න';

  @override
  String get loadExtensionsIcon => 'දීර්ඝකරණ අයිකනය පූරණය කරන්න';

  @override
  String get loadExtensionsIconDesc => 'දීර්ඝකරණ පිටුව මන්දගාමී නම් අබල කරන්න';

  @override
  String get autoUpdate => 'ස්වයංක්‍රීය යාවත්කාලීන';

  @override
  String get autoUpdateDesc => 'දීර්ඝකරණ ස්වයංක්‍රීයව යාවත්කාලීන කරන්න';

  @override
  String get installSourceToStart =>
      'ආරම්භ කිරීමට දිගුකිරීමේ පිටුවෙන් මූලාශ්‍රයක් ස්ථාපනය කරන්න';

  @override
  String get author => 'Author';

  @override
  String get averageDuration => 'මධ්‍යම කාලය';

  @override
  String get characters => 'පිළිබඳ පෙනුම';

  @override
  String get description => 'සංක්ෂේපය';

  @override
  String get synopsis => 'සංක්ෂේපය';

  @override
  String get endDate => 'End Date';

  @override
  String get format => 'රුපය';

  @override
  String get meanScore => 'Mean Score';

  @override
  String get name => 'Name';

  @override
  String get nameRomaji => 'නම (රෝමජි)';

  @override
  String get popularity => 'ප්‍රසිද්ධිය';

  @override
  String get relations => 'Relations';

  @override
  String get prequel => 'PREQUEL';

  @override
  String get sequel => 'SEQUEL';

  @override
  String get source => 'Source';

  @override
  String get staff => 'සේවකයෝ';

  @override
  String get startDate => 'Start Date';

  @override
  String get status => 'Status';

  @override
  String get studio => 'Studio';

  @override
  String get synonyms => 'සමාන පද';

  @override
  String get tags => 'Tags';

  @override
  String get total => 'Total';

  @override
  String get collapseText => 'තවත් නොපෙන්වන්න';

  @override
  String get expandText => 'තවත් පෙන්වන්න';

  @override
  String get comingSoon => 'ඉක්මනින් පැමිණෙයි';

  @override
  String get wrongTitle => 'වැරදි ශීර්ෂයද?';

  @override
  String get youTube => 'YouTube මත වාදනය කරන්නද?';

  @override
  String get mediaNotFound => 'මාධ්‍ය හමු නොවීය';

  @override
  String get noChapterFound => 'පරිච්ඡේදය හමු නොවීය';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ක්‍රියා',
      one: 'ක්‍රියාව',
    );
    return '$_temp0';
  }

  @override
  String get language => 'භාෂාව';

  @override
  String get account => 'ගිණුම';

  @override
  String get accountDescription =>
      'ඔබගේ AniList, MAL සහ Discord ගිණුම් පහසුවෙන් කළමනාකරණය කරන්න';

  @override
  String get common => 'සාමාන්‍ය';

  @override
  String get commonDescription =>
      'ආරම්භක ඇප් පරිශීලනය සඳහා සාමාන්‍ය සැකසුම් ප්‍රවේශය';

  @override
  String get animeDescription =>
      'ඔබගේ අනිමේ ප්‍රතිලාභයන් පෞද්ගලීකරණය සහ කළමනාකරණය කරන්න';

  @override
  String get mangaDescription =>
      'ඔබගේ මංගා අත්දැකීම් පෞද්ගලිකව කළමනාකරණය කරන්න';

  @override
  String get about => 'ගැටලුව';

  @override
  String get aboutDescription =>
      'ඇප් එක සහ එහි නිර්මාණකරුවන් ගැන වැඩි විස්තර ඉගෙන ගන්න';

  @override
  String get notifications => 'ඇගයීම්';

  @override
  String get notificationsDescription =>
      'ඔබට දැනුම් දීම් ලබා ගැනීමේ ක්‍රමය හා කාලය සැකසීම';

  @override
  String get offlineMode => 'ඉන්ටර්නෙට් තාවකාලික මාධ්‍ය';

  @override
  String get offlineModeDescription =>
      'අන්තර්ජාලයේ සම්බන්ධතාවයකින් තොරව ඇප් භාවිතා කරන්න';

  @override
  String get incognitoMode => 'අනන්‍යතා මාධ්‍ය';

  @override
  String get incognitoModeDescription => 'ඔබගේ ක්‍රියාකාරකම් ගබඩා නොකරන්න';

  @override
  String get hidePrivate => 'පෞද්ගලිකව hidden කරන්න';

  @override
  String get hidePrivateDescription =>
      'නිවස පිටුවෙන් පෞද්ගලික මාලාවන් සඟවාදැක්වන්න.';

  @override
  String get hiddenMedia => 'සඟවා ඇති මාධ්‍ය';

  @override
  String get noHiddenMediaFound => 'සඟවා ඇති මාධ්‍ය එකක් හමු නොවීය';

  @override
  String get playerSettingsTitle => 'දෘෂ්ටි ප්‍රතිසංස්කරණ සැකසුම';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'වේගය';

  @override
  String get speedDescription => 'දෘෂ්ටි ප්‍රථම මට්ටමේ වේගය';

  @override
  String get cursedSpeed => 'ශපයන වේගය';

  @override
  String get cursedSpeedDescription => 'ඉන්න එපා කාලය සොයාගෙන ඉන්නේ';

  @override
  String get resizeMode => 'ආකාර ප්‍රතිසංස්කරණ මාධ්‍ය';

  @override
  String get resizeModeDescription => 'දෘෂ්ටි ප්‍රතිසංස්කරණ ප්‍රමාණය';

  @override
  String get skipButton => 'ඉක්මනින් බොත්තම';

  @override
  String get skipButtonDescription => 'ඉක්මනින් බොත්තම කාලය';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'පෙරළි';

  @override
  String get showSubtitles => 'උපසිරැසි පෙන්වන්න';

  @override
  String get showSubtitlesDescription => 'පෙරනිමියෙන් උපසිරැසි පෙන්වන්න';

  @override
  String get subtitlePreview => 'පෙරළි පූර්ව දර්ශනය';

  @override
  String get fontColor => 'අකුරු වර්ණය';

  @override
  String get fontColorDescription => 'සැබැදි අකුරු වර්ණය';

  @override
  String get fontFamily => 'අකුරු පවුල';

  @override
  String get fontFamilyDescription => 'සැබැදි අකුරු පවුල';

  @override
  String get fontSize => 'අකුරු ප්‍රමාණය';

  @override
  String get fontSizeDescription => 'සැබැදි අකුරු ප්‍රමාණය';

  @override
  String get fontWeight => 'අකුරු බර';

  @override
  String get fontWeightDescription => 'සැබැදි අකුරු බර';

  @override
  String get backgroundColor => 'පසුබැසි වර්ණය';

  @override
  String get backgroundColorDescription => 'සැබැදි පසුබැසි වර්ණය';

  @override
  String get outlineColor => 'පරිශ්‍රමි වර්ණය';

  @override
  String get outlineColorDescription => 'සැබැදි පරිශ්‍රමි වර්ණය';

  @override
  String get bottomPadding => 'පහළ පෑඩින්ග්';

  @override
  String get bottomPaddingDescription => 'සැබැදි පෑඩින්ග්';

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
  String get theme => 'තේමාව';

  @override
  String get themeDescription => 'ඔබගේ ඇප් වල පිළිවෙල හා හැඩය අභිරුචි කිරීම';

  @override
  String get darkMode => 'අඳුරු මාධ්‍ය';

  @override
  String get enableDarkMode => 'අඳුරු මාධ්‍ය සක්‍රිය කරන්න';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription => 'ඔබගේ වॉलපේපර් එකේ වර්ණයක් භාවිතා කරන්න';

  @override
  String get customTheme => 'අභිරුචි මතය';

  @override
  String get customThemeDescription => 'ඔබගේම වර්ණයෙන් මතය භාවිතා කරන්න';

  @override
  String get oledThemeVariant => 'OLED මාධ්‍ය වර්ණ විකල්පය';

  @override
  String get oledThemeVariantDescription => 'OLED මාධ්‍ය සක්‍රිය කරන්න';

  @override
  String get colorPicker => 'වර්ණ තෝරන්න';

  @override
  String get pickColor => 'රටාවක් තෝරන්න';

  @override
  String get colorPickerDescription => 'වර්ණයක් තෝරන්න';

  @override
  String get colorPickerDefault => 'පෙරනිමි';

  @override
  String get colorPickerCustom => 'අභිරුචි';

  @override
  String get customPath => 'අභිරුචි මාර්ගය';

  @override
  String get customPathDescription =>
      'ගොනු සුරැකීමට අභිරුචි මාර්ගයක් සකසන්න\nඉවත් කිරීමට දිගු ඔබන්න';

  @override
  String get selectDirectory => 'නාමාවලියක් තෝරන්න';

  @override
  String get selectMediaService => 'මාධ්ය සේවාව තෝරන්න';

  @override
  String get logFile => 'ලඝු ගොනුව';

  @override
  String get logFileDescription => 'ලොග් ගොනුව බෙදා ගන්න';

  @override
  String get restoreSettings => 'සැකසුම් නැවත සකස් කරන්න';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => 'වෙබ් දැක්ම';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer =>
      'Dartotsu හි සත්කාරකයාට සහාය දෙන්න?\nඅරමුදල් ලබා ගැනීම පConsider කරන්න';

  @override
  String get donationGoal => 'මෙම මොහොතේ අරමුදල් රැස් කිරීමේ ඉලක්කයක් නොමැත';

  @override
  String get options => 'Options';

  @override
  String get ok => 'හරි';

  @override
  String get cancel => 'අවලංගු කරන්න';

  @override
  String get yes => 'ඔව්';

  @override
  String get no => 'නැත';
}
