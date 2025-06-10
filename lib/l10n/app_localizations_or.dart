// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Oriya (`or`).
class AppLocalizationsOr extends AppLocalizations {
  AppLocalizationsOr([String locale = 'or']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => 'ନୂତନ ସର୍ବୋତ୍ତମ ଆପ୍ ପାଇଁ\nଅନିମେ ଏବଂ ମଙ୍ଗା ଟ୍ରାକିଂ';

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
  String get login => 'ଲଗଇନ୍';

  @override
  String loginTo(String service) {
    return '$service ରେ ପ୍ରବେଶ କରନ୍ତୁ';
  }

  @override
  String logout(String type) {
    return '$type ବାହାର କରନ୍ତୁ';
  }

  @override
  String get confirmLogout => 'ଆପଣ ନିଶ୍ଚିତ ଯେ ବାହାର ହେବାକୁ ଚାହୁଁଛନ୍ତି?';

  @override
  String get anime => 'ଅନିମେ';

  @override
  String get manga => 'ମଙ୍ଗା';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novel => 'ଉପନ୍ୟାସ';

  @override
  String get ln => 'ଲାଇଟ ଉପନ୍ୟାସ';

  @override
  String get home => 'Home';

  @override
  String get search => 'ଖୋଜନ୍ତୁ';

  @override
  String get calendar => 'କ୍ୟାଲେଣ୍ଡର';

  @override
  String get settings => 'ସେଟିଂସ୍';

  @override
  String get watch => 'ଦେଖନ୍ତୁ';

  @override
  String get read => 'ପଢନ୍ତୁ';

  @override
  String get info => 'Info';

  @override
  String get comments => 'ମନ୍ତବ୍ୟ';

  @override
  String get addToList => 'Add To List';

  @override
  String get series => 'Series';

  @override
  String get season => 'ଋତୁ';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ଅଂଶଗୁଡିକ',
      one: 'ଅଂଶ',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ଅଧ୍ୟାୟଗୁଡିକ',
      one: 'ଅଧ୍ୟାୟ',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ଖଣ୍ଡଗୁଡିକ',
      one: 'ଖଣ୍ଡ',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ଚଳଚ୍ଚିତ୍ରଗୁଡିକ',
      one: 'ଚଳଚ୍ଚିତ୍ର',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'ମୋଟ ଅଂଶ';

  @override
  String get totalChapters => 'ମୋଟ ଅଧ୍ୟାୟ';

  @override
  String get genres => 'ପ୍ରକାର';

  @override
  String get scanlators => 'ସ୍କ୍ୟାନ୍ଲେଟରସ୍';

  @override
  String list(String type) {
    return '$type ତାଲିକା';
  }

  @override
  String get watching => 'ଦେଖୁଛି';

  @override
  String get reading => 'ପଢ଼ୁଛି';

  @override
  String get readStatus => 'ପଢନ୍ତୁ';

  @override
  String get watchStatus => 'ଦେଖିସାରିଛି';

  @override
  String planned(String type) {
    return 'ପ୍ରତିକ୍ଷାଶୀଳ $type';
  }

  @override
  String onHold(String type) {
    return 'ବିରତିରେ $type';
  }

  @override
  String get droppedAnime => 'ତ୍ୟାଗ କରାଯାଇଥିବା ଆନିମେ';

  @override
  String get droppedManga => 'ତ୍ୟାଗ କରାଯାଇଥିବା ମାଙ୍ଗା';

  @override
  String noDropped(String type) {
    return 'ଆପଣ ଯାହା ତ୍ୟାଗ କରିନାହାଁନ୍ତି $type।';
  }

  @override
  String get continueReading => 'ପଢା ଜାରି ରଖନ୍ତୁ';

  @override
  String get continueWatching => 'ଦେଖିବା ଜାରି ରଖନ୍ତୁ';

  @override
  String browse(String type) {
    return '$type ବ୍ରାଉଜ କରନ୍ତୁ';
  }

  @override
  String trending(String type) {
    return 'ଟ୍ରେଣ୍ଡିଂ $type';
  }

  @override
  String popular(String type) {
    return 'ଜନପ୍ରିୟ $type';
  }

  @override
  String get topAiring => 'ଶ୍ରେଷ୍ଠ ପ୍ରସାରଣ';

  @override
  String topRated(String type) {
    return 'ଶ୍ରେଷ୍ଠ ମୂଲ୍ୟାଂକନ $type';
  }

  @override
  String mostFavourite(String type) {
    return 'ସବୁଠାରୁ ପ୍ରିୟ $type';
  }

  @override
  String get thisSeason => 'ଏହି ଋତୁ';

  @override
  String get nextSeason => 'ପରବର୍ତ୍ତୀ ଋତୁ';

  @override
  String get previousSeason => 'ଗତ ଋତୁ';

  @override
  String get recommended => 'ସୁପାରିଶିତ';

  @override
  String get recommendationsEmptyMessage =>
      'ଆନିମେ କିମ୍ବା ମାଙ୍ଗା ପଢନ୍ତୁ କିମ୍ବା ଦେଖନ୍ତୁ ଯାହାଦ୍ୱାରା ସୁପାରିଶ ମିଳିବ';

  @override
  String get recentUpdates => 'ସମ୍ପ୍ରତି ଅଦ୍ୟତନ';

  @override
  String get allCaughtUpNew => 'ସମସ୍ତ କାମ ସମାପ୍ତ, ନୂତନ କ’ଣ?';

  @override
  String favorite(String type) {
    return 'ପ୍ରିୟ $type';
  }

  @override
  String get favorites => 'ପ୍ରିୟଗୁଡିକ';

  @override
  String get noFavourites =>
      'ଆପଣ କିଛି ଲାଇକ୍ କରିନାହାଁନ୍ତି,\n ଏଠାରେ ଏକ ଶୋକୁ ଲାଇକ୍ କରନ୍ତୁ।';

  @override
  String get noOnHold => 'କୌଣସିବିରତି ଦିଆଯାଇନାହିଁ।';

  @override
  String manageLayout(String service, String page) {
    return '$service ପାଇଁ $page ପୃଷ୍ଠାର ରୂପରେଖା ପରିଚାଳନା କରନ୍ତୁ';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'ଆପଣ $page ପୃଷ୍ଠାର ରୂପରେଖାକୁ ଖେଳାଯାଇବା ଏବଂ ଛାଡ଼ାଯାଇଥିବା ଆଧାରରେ ପରିବର୍ତ୍ତନ କରିପାରିବେ';
  }

  @override
  String get gridView => 'ଗ୍ରିଡ୍ ଭ୍ୟୁ';

  @override
  String get listView => 'List View';

  @override
  String get compactView => 'ସଂକ୍ଷିପ୍ତ ଭ୍ୟୁ';

  @override
  String get layout => 'Layout';

  @override
  String get sort => 'ଶ୍ରେଣୀବଦ୍ଧ କରନ୍ତୁ';

  @override
  String get utd => 'ଉପରୁ ତଳକୁ';

  @override
  String get dtu => 'Down To Up';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'ଦେଖା ଯାଇଥିବା ଅଂଶ';

  @override
  String get chapterRead => 'ପଢାଯାଇଥିବା ଅଧ୍ୟାୟ';

  @override
  String get outOf => 'ମଧ୍ୟରୁ';

  @override
  String get totalOf => 'ମୋଟ';

  @override
  String get selected => 'ଚୟନ କରାଗଲା';

  @override
  String get found => 'ମିଳିଲା';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ଏକ୍ସଟେଂସନ୍ଗୁଡିକ',
      one: 'ଏକ୍ସଟେଂସନ୍',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return 'ଉପଲବ୍ଧ $type';
  }

  @override
  String installed(String type) {
    return 'ସଂସ୍ଥାପିତ $type';
  }

  @override
  String get extensionsDescription =>
      'ଅଧିକ କାର୍ଯ୍ୟକ୍ଷମତା ପାଇଁ ବିସ୍ତାରଗୁଡିକୁ ଇନ୍ସ୍ଟଲ୍ ଏବଂ ପରିଚାଳନା କରନ୍ତୁ';

  @override
  String get addAnimeRepo => 'ଆନିମେ ରିପୋ ଯୋଡନ୍ତୁ';

  @override
  String get addAnimeRepoDesc => 'ବିଭିନ୍ନ ଉତ୍ସରୁ ଆନିମେ ରିପୋ ଯୋଡନ୍ତୁ';

  @override
  String get addMangaRepo => 'ମାଙ୍ଗା ରିପୋ ଯୋଡନ୍ତୁ';

  @override
  String get addMangaRepoDesc => 'ବିଭିନ୍ନ ଉତ୍ସରୁ ମାଙ୍ଗା ରିପୋ ଯୋଡନ୍ତୁ';

  @override
  String get addNovelRepo => 'ନୋଭେଲ୍ ରିପୋ ଯୋଡନ୍ତୁ';

  @override
  String get addNovelRepoDesc => 'ବିଭିନ୍ନ ଉତ୍ସରୁ ନୋଭେଲ୍ ରିପୋ ଯୋଡନ୍ତୁ';

  @override
  String get loadExtensionsIcon => 'ଏକ୍ସଟେନସନ୍ ଆଇକନ୍ ଲୋଡ୍ କରନ୍ତୁ';

  @override
  String get loadExtensionsIconDesc =>
      'ଯଦି ଏକ୍ସଟେନସନ୍ ପୃଷ୍ଠା ଧୀର ହୋଇଥାଏ, ଏହା ଅସକ୍ରିୟ କରନ୍ତୁ';

  @override
  String get autoUpdate => 'ସ୍ୱୟଂଚାଳିତ ଅଦ୍ୟତନ';

  @override
  String get autoUpdateDesc =>
      'ଏକ୍ସଟେନସନ୍ ଗୁଡ଼ିକୁ ସ୍ୱୟଂଚାଳିତ ଭାବରେ ଅଦ୍ୟତନ କରନ୍ତୁ';

  @override
  String get installSourceToStart =>
      'ଆରମ୍ଭ କରିବାକୁ ବିସ୍ତାର ପୃଷ୍ଠାରୁ ଉତ୍ସ ସ୍ଥାପନ କରନ୍ତୁ';

  @override
  String get author => 'Author';

  @override
  String get averageDuration => 'ସାଧାରଣ ଅବଧି';

  @override
  String get characters => 'ଚରିତ୍ରଗୁଡିକ';

  @override
  String get description => 'ସାରାଂଶ';

  @override
  String get synopsis => 'ସାରାଂଶ';

  @override
  String get endDate => 'End Date';

  @override
  String get format => 'ରୂପରେଖା';

  @override
  String get meanScore => 'Mean Score';

  @override
  String get name => 'Name';

  @override
  String get nameRomaji => 'ନାମ (ରୋମାଜି)';

  @override
  String get popularity => 'ଜନପ୍ରିୟତା';

  @override
  String get relations => 'Relations';

  @override
  String get prequel => 'PREQUEL';

  @override
  String get sequel => 'SEQUEL';

  @override
  String get source => 'Source';

  @override
  String get staff => 'କର୍ମଚାରୀ';

  @override
  String get startDate => 'Start Date';

  @override
  String get status => 'Status';

  @override
  String get studio => 'Studio';

  @override
  String get synonyms => 'ପର୍ୟାୟବାଚୀ';

  @override
  String get tags => 'Tags';

  @override
  String get total => 'Total';

  @override
  String get collapseText => 'କମ୍ ଦେଖାନ୍ତୁ';

  @override
  String get expandText => 'ଅଧିକ ଦେଖାନ୍ତୁ';

  @override
  String get comingSoon => 'ଶୀଘ୍ର ଆସୁଛି';

  @override
  String get wrongTitle => 'ଭୁଲ ଶୀର୍ଷକ?';

  @override
  String get youTube => 'YouTube ରେ ଚଲାଇବେ?';

  @override
  String get mediaNotFound => 'ମିଡିଆ ମିଳିଲା ନାହିଁ';

  @override
  String get noChapterFound => 'ଅଧ୍ୟାୟ ମିଳିଲା ନାହିଁ';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'କାର୍ଯ୍ୟକଳାପଗୁଡିକ',
      one: 'କାର୍ଯ୍ୟକଳାପ',
    );
    return '$_temp0';
  }

  @override
  String get language => 'ଭାଷା';

  @override
  String get account => 'ଖାତା';

  @override
  String get accountDescription =>
      'ଆପଣଙ୍କର AniList, MAL, ଏବଂ Discord ଖାତା ସହଜରେ ପରିଚାଳନା କରନ୍ତୁ';

  @override
  String get common => 'ସାଧାରଣ';

  @override
  String get commonDescription =>
      'ଆପ୍ ସହଜ ବ୍ୟବହାର ପାଇଁ ସାଧାରଣ ସେଟିଂସ୍ ଆକ୍ସେସ୍ କରନ୍ତୁ';

  @override
  String get animeDescription =>
      'ଆପଣଙ୍କର ଅନିମେ ପସନ୍ଦଗୁଡିକୁ ବ୍ୟକ୍ତିଗତ କରନ୍ତୁ ଏବଂ ପରିଚାଳନା କରନ୍ତୁ';

  @override
  String get mangaDescription =>
      'ଆପଣଙ୍କର ମଙ୍ଗା ଅନୁଭୂତିକୁ ଗଠନ କରନ୍ତୁ ଏବଂ କଷ୍ଟମାଇଜ୍ କରନ୍ତୁ';

  @override
  String get about => 'ସମ୍ପର୍କରେ';

  @override
  String get aboutDescription =>
      'ଆପ୍ଲିକେସନ୍ ଏବଂ ତାହାର ସୃଷ୍ଟାଗଣ ବିଷୟରେ ଅଧିକ ଜାଣନ୍ତୁ';

  @override
  String get notifications => 'ସୂଚନା';

  @override
  String get notificationsDescription =>
      'ଆପଣ କେବେ ଏବଂ କିପରି ସୂଚନା ଗ୍ରହଣ କରିବେ ତାହା ସେଟ୍ କରନ୍ତୁ';

  @override
  String get offlineMode => 'ଅଫଲାଇନ୍ ମୋଡ୍';

  @override
  String get offlineModeDescription =>
      'ଇଣ୍ଟରନେଟ୍ ସଂଯୋଗ ଛଡ଼ା ଆପ୍ଲିକେସନ୍ ବ୍ୟବହାର କରନ୍ତୁ';

  @override
  String get incognitoMode => 'ଇଂକଗ୍ନିଟୋ ମୋଡ୍';

  @override
  String get incognitoModeDescription =>
      'ଆପଣଙ୍କର କ୍ରିୟାକଳାପ ସଂରକ୍ଷଣ ବିନା ବ୍ରାଉଜ୍ କରନ୍ତୁ';

  @override
  String get hidePrivate => 'ଗୋପନ ଚିହ୍ନଟ କରନ୍ତୁ';

  @override
  String get hidePrivateDescription =>
      'ମୁଖ୍ୟ ପୃଷ୍ଠାରୁ ବ୍ୟକ୍ତିଗତ ଶ୍ରେଣୀଗୁଡିକ ଲୁଚାନ୍ତୁ।';

  @override
  String get hiddenMedia => 'ଲୁଚାଇଥିବା ମାଧ୍ୟମ';

  @override
  String get noHiddenMediaFound => 'କୌଣସି ଲୁଚାଇଥିବା ମାଧ୍ୟମ ମିଳିଲା ନାହିଁ';

  @override
  String get playerSettingsTitle => 'ପ୍ଲେୟର ସେଟିଂସ୍';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'ଗତି';

  @override
  String get speedDescription => 'ପ୍ଲେୟର ପାଇଁ ଡିଫଲ୍ଟ ଗତି';

  @override
  String get cursedSpeed => 'ଶପିତ ଗତି';

  @override
  String get cursedSpeedDescription =>
      'ସେମାନେ ପାଇଁ ଯେଉଁମାନେ ଜୀବନରେ ବହୁତ ବ୍ୟସ୍ତ ଅଟେ';

  @override
  String get resizeMode => 'ପୁନଃ ଆକାର ମୋଡ୍';

  @override
  String get resizeModeDescription => 'ପ୍ଲେୟର ପାଇଁ ଡିଫଲ୍ଟ ଆକାର ମୋଡ୍';

  @override
  String get skipButton => 'ସ୍କିପ୍ ବଟନ୍';

  @override
  String get skipButtonDescription => 'ସ୍କିପ୍ ବଟନ୍ ସମୟ';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'ସବ୍ଟାଇଟ୍';

  @override
  String get showSubtitles => 'ସବ୍ଟାଇଟ୍ ଦେଖାନ୍ତୁ';

  @override
  String get showSubtitlesDescription => 'ଡିଫଲ୍ଟ ଭାବେ ସବ୍ଟାଇଟ୍ ଦେଖାନ୍ତୁ';

  @override
  String get subtitlePreview => 'ସବ୍ଟାଇଟ୍ ପ୍ରିଭ୍ୟୁ';

  @override
  String get fontColor => 'ଫନ୍ଟ ରଙ୍ଗ';

  @override
  String get fontColorDescription => 'ସବ୍ଟାଇଟ୍ ଫନ୍ଟ ରଙ୍ଗ';

  @override
  String get fontFamily => 'ଫନ୍ଟ ପରିବାର';

  @override
  String get fontFamilyDescription => 'ସବ୍ଟାଇଟ୍ ଫନ୍ଟ ପରିବାର';

  @override
  String get fontSize => 'ଫନ୍ଟ ଆକାର';

  @override
  String get fontSizeDescription => 'ସବ୍ଟାଇଟ୍ ଫନ୍ଟ ଆକାର';

  @override
  String get fontWeight => 'ଫନ୍ଟ ଓଜନ';

  @override
  String get fontWeightDescription => 'ସବ୍ଟାଇଟ୍ ଫନ୍ଟ ଓଜନ';

  @override
  String get backgroundColor => 'ପଛ ପଟ ରଙ୍ଗ';

  @override
  String get backgroundColorDescription => 'ସବ୍ଟାଇଟ୍ ପଛ ପଟ ରଙ୍ଗ';

  @override
  String get outlineColor => 'ଆଉଟ୍ଲାଇନ୍ ରଙ୍ଗ';

  @override
  String get outlineColorDescription => 'ସବ୍ଟାଇଟ୍ ଆଉଟ୍ଲାଇନ୍ ରଙ୍ଗ';

  @override
  String get bottomPadding => 'ତଳ ପ୍ୟାଡିଂ';

  @override
  String get bottomPaddingDescription => 'ସବ୍ଟାଇଟ୍ ତଳ ପ୍ୟାଡିଂ';

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
  String get theme => 'ଥିମ୍';

  @override
  String get themeDescription =>
      'ଆପ୍ଲିକେସନ୍ ର ଦେଖା ଏବଂ ଅନୁଭୂତିକୁ ବ୍ୟକ୍ତିଗତ କରନ୍ତୁ';

  @override
  String get darkMode => 'ଡାର୍କ ମୋଡ୍';

  @override
  String get enableDarkMode => 'ଡାର୍କ ମୋଡ୍ ସକ୍ରିୟ କରନ୍ତୁ';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription =>
      'ଆପଣଙ୍କର ଓଲେଡ଼ ୱାଲପେପର୍ ସହିତ ସେହି ରଙ୍ଗ ବ୍ୟବହାର କରନ୍ତୁ';

  @override
  String get customTheme => 'କଷ୍ଟମ୍ ଥିମ୍';

  @override
  String get customThemeDescription =>
      'ଥିମ୍ ପାଇଁ ଆପଣଙ୍କର ସ୍ୱୟଂର ରଙ୍ଗ ବ୍ୟବହାର କରନ୍ତୁ';

  @override
  String get oledThemeVariant => 'OLED ଥିମ୍ ଭାରିଏଣ୍ଟ';

  @override
  String get oledThemeVariantDescription => 'OLED ମୋଡ୍ ସକ୍ରିୟ କରନ୍ତୁ';

  @override
  String get colorPicker => 'ରଙ୍ଗ ପିକର';

  @override
  String get pickColor => 'ରଙ୍ଗ ଚୟନ କରନ୍ତୁ';

  @override
  String get colorPickerDescription => 'ଏକ ରଙ୍ଗ ଚୟନ କରନ୍ତୁ';

  @override
  String get colorPickerDefault => 'ପ୍ରଥମିକ';

  @override
  String get colorPickerCustom => 'କଷ୍ଟମ୍';

  @override
  String get customPath => 'କଷ୍ଟମ୍ ପଥ';

  @override
  String get customPathDescription =>
      'ଫାଇଲ୍ ସେଭ୍ କରିବାକୁ ଏକ କଷ୍ଟମ୍ ପଥ ସେଟ୍ କରନ୍ତୁ\nଅପସାରଣ କରିବାକୁ ଲମ୍ବା ଦବାନ୍ତୁ';

  @override
  String get selectDirectory => 'ଏକ ଡିରେକ୍ଟୋରୀ ଚୟନ କରନ୍ତୁ';

  @override
  String get selectMediaService => 'ମିଡିଆ ସେବା ଚୟନ କରନ୍ତୁ';

  @override
  String get logFile => 'ଲଗ୍ ଫାଇଲ୍';

  @override
  String get logFileDescription => 'ଲଗ୍ ଫାଇଲ୍ ଅଂଶୀଦାର କରନ୍ତୁ';

  @override
  String get restoreSettings => 'ସେଟିଂସ୍ ପୁନଃ ପ୍ରତିସ୍ଥାପନ କରନ୍ତୁ';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => 'ୱେବ ଦୃଶ୍ୟ';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer =>
      'Dartotsu ର ମେଣ୍ଟେନର୍କୁ ସମର୍ଥନ କରିବାକୁ ଚାହାଁଛନ୍ତି?\nଦାନ କରିବା ବିଚାର କରନ୍ତୁ';

  @override
  String get donationGoal => 'ବର୍ତ୍ତମାନେ କୌଣସି ଦାନ ଲକ୍ଷ୍ୟ ନାହିଁ';

  @override
  String get options => 'Options';

  @override
  String get ok => 'ଓକେ';

  @override
  String get cancel => 'ବାତିଲ କରନ୍ତୁ';

  @override
  String get yes => 'ହଁ';

  @override
  String get no => 'ନା';
}
