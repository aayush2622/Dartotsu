// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Assamese (`as`).
class AppLocalizationsAs extends AppLocalizations {
  AppLocalizationsAs([String locale = 'as']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => 'এনিমে আৰু মাংগা ট্ৰেকিংৰ\nবাবে শ্ৰেষ্ঠ নতুন এপ';

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
  String get login => 'লগইন';

  @override
  String loginTo(String service) {
    return '$service ত লগইন কৰক';
  }

  @override
  String logout(String type) {
    return 'লগআউট $type';
  }

  @override
  String get confirmLogout => 'আপুনি নিশ্চিতভাৱে লগআউট কৰিব বিচাৰে?';

  @override
  String get anime => 'এনিমে';

  @override
  String get manga => 'মাংগা';

  @override
  String get manhwa => 'মানহৱা';

  @override
  String get manhua => 'মানহুৱা';

  @override
  String get novel => 'নভেল';

  @override
  String get ln => 'লাইট নভেল';

  @override
  String get home => 'হোম';

  @override
  String get search => 'সন্ধান';

  @override
  String get calendar => 'কেলেণ্ডাৰ';

  @override
  String get settings => 'ছেটিংছ';

  @override
  String get watch => 'চাওক';

  @override
  String get read => 'পঢ়ক';

  @override
  String get info => 'তথ্য';

  @override
  String get comments => 'মন্তব্য';

  @override
  String get addToList => 'তালিকাত যোগ কৰক';

  @override
  String get series => 'ধাৰাবাহিক';

  @override
  String get season => 'ছিজন';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'এপিচ’ডসমূহ',
      one: 'এপিচ’ড',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'অধ্যায়সমূহ',
      one: 'অধ্যায়',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'খণ্ডসমূহ',
      one: 'খণ্ড',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'চলচ্চিত্ৰসমূহ',
      one: 'চলচ্চিত্ৰ',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'মুঠ এপিচ’ড';

  @override
  String get totalChapters => 'মুঠ অধ্যায়';

  @override
  String nextEpisodeRelease(int episode) {
    return 'পৰৱৰ্তী পৰ্ব $episode মুক্তি পাব';
  }

  @override
  String get genres => 'ধৰণ';

  @override
  String get scanlators => 'স্কেনলেটৰ';

  @override
  String list(String type) {
    return '$type তালিকা';
  }

  @override
  String get watching => 'চাই আছে';

  @override
  String get reading => 'পঢ়ি আছে';

  @override
  String get readStatus => 'পঢ়াৰ স্থিতি';

  @override
  String get watchStatus => 'চোৱাৰ স্থিতি';

  @override
  String planned(String type) {
    return 'পৰিকল্পিত $type';
  }

  @override
  String onHold(String type) {
    return 'স্থগিত $type';
  }

  @override
  String get droppedAnime => 'বাদ দিয়া এনিমে';

  @override
  String get droppedManga => 'বাদ দিয়া মাংগা';

  @override
  String noDropped(String type) {
    return 'আপুনি এতিয়াও কোনো $type বাদ দিয়া নাই।';
  }

  @override
  String get continueReading => 'পঢ়ি যাওক';

  @override
  String get continueWatching => 'চাই যাওক';

  @override
  String browse(String type) {
    return 'ব্ৰাউজ $type';
  }

  @override
  String trending(String type) {
    return 'ট্ৰেণ্ডিং $type';
  }

  @override
  String popular(String type) {
    return 'জনপ্ৰিয় $type';
  }

  @override
  String get topAiring => 'শীৰ্ষ প্ৰচাৰিত';

  @override
  String topRated(String type) {
    return 'শীৰ্ষ ৰেটেড $type';
  }

  @override
  String get topScore => 'শীৰ্ষ স্ক’ৰ';

  @override
  String mostFavourite(String type) {
    return 'সৰ্বাধিক প্ৰিয় $type';
  }

  @override
  String get thisSeason => 'এই ছিজন';

  @override
  String get nextSeason => 'পৰৱৰ্তী ছিজন';

  @override
  String get previousSeason => 'পূৰ্বৰ ছিজন';

  @override
  String get recommended => 'পৰামৰ্শিত';

  @override
  String get recommendationsEmptyMessage =>
      'পৰামৰ্শ পাবলৈ কিছু এনিমে বা মাংগা চাওক/পঢ়ক';

  @override
  String get recentUpdates => 'শেহতীয়া আপডেট';

  @override
  String get allCaughtUpNew => 'সকলো শেষ, নতুন কি?';

  @override
  String favorite(String type) {
    return 'প্ৰিয় $type';
  }

  @override
  String get favorites => 'প্ৰিয়সমূহ';

  @override
  String get noFavourites =>
      'কিবা ভাল লগা নাই,\nইয়াত ৰাখিবলৈ এটা শ্ব’ পছন্দ কৰক।';

  @override
  String get noOnHold => 'কিবা স্থগিত কৰা নাই।';

  @override
  String manageLayout(String service, String page) {
    return '$service ৰ বাবে $page পৃষ্ঠাৰ অৱস্থান পৰিচালনা কৰক';
  }

  @override
  String manageLayoutDescription(String page) {
    return '$page পৃষ্ঠাৰ অৱস্থান ড্ৰেগ আৰু ড্ৰপ কৰি বিষয়বস্তু পৰিচালনা কৰক';
  }

  @override
  String get gridView => 'গ্ৰিড দৰ্শন';

  @override
  String get listView => 'তালিকা দৰ্শন';

  @override
  String get compactView => 'সংক্ষিপ্ত দৰ্শন';

  @override
  String get layout => 'বিন্যাস';

  @override
  String get sort => 'সজাওক';

  @override
  String get utd => 'ওপৰৰ পৰা তললৈ';

  @override
  String get dtu => 'তলৰ পৰা ওপৰলৈ';

  @override
  String get rtl => 'সোঁফালৰ পৰা বাওঁফাললৈ';

  @override
  String get ltr => 'বাওঁফালৰ পৰা সোঁফাললৈ';

  @override
  String get direction => 'দিশ';

  @override
  String get episodeWatched => 'চোৱা এপিচ’ড';

  @override
  String get chapterRead => 'পঢ়া অধ্যায়';

  @override
  String get outOf => 'পৰা';

  @override
  String get totalOf => 'মুঠৰ পৰা';

  @override
  String get selected => 'নিৰ্বাচিত';

  @override
  String get found => 'পোৱা গ’ল';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'এক্সটেনশ্যনসমূহ',
      one: 'এক্সটেনশ্যন',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return 'উপলব্ধ $type';
  }

  @override
  String installed(String type) {
    return 'ইনষ্টল কৰা $type';
  }

  @override
  String get extensionsDescription =>
      'অধিক কাৰ্যক্ষমতাৰ বাবে এক্সটেনশ্যনসমূহ ইনষ্টল আৰু পৰিচালনা কৰক';

  @override
  String get addAnimeRepo => 'এনিমে ৰেপ’ যোগ কৰক';

  @override
  String get addAnimeRepoDesc => 'বিভিন্ন উৎসৰ পৰা এনিমে ৰেপ’ যোগ কৰক';

  @override
  String get addMangaRepo => 'মাংগা ৰেপ’ যোগ কৰক';

  @override
  String get addMangaRepoDesc => 'বিভিন্ন উৎসৰ পৰা মাংগা ৰেপ’ যোগ কৰক';

  @override
  String get addNovelRepo => 'নভেল ৰেপ’ যোগ কৰক';

  @override
  String get addNovelRepoDesc => 'বিভিন্ন উৎসৰ পৰা নভেল ৰেপ’ যোগ কৰক';

  @override
  String get loadExtensionsIcon => 'এক্সটেনশ্যনৰ আইকন লোড কৰক';

  @override
  String get loadExtensionsIconDesc => 'এক্সটেনশ্যন পৃষ্ঠা লেগ কৰিলে অক্ষম কৰক';

  @override
  String get autoUpdate => 'স্বয়ংক্ৰিয় আপডেট';

  @override
  String get autoUpdateDesc => 'এক্সটেনশ্যনসমূহ স্বয়ংক্ৰিয়ভাৱে আপডেট কৰক';

  @override
  String get installSourceToStart =>
      'আৰম্ভ কৰিবলৈ এক্সটেনশ্যন পৃষ্ঠাৰ পৰা এটা উৎস ইনষ্টল কৰক';

  @override
  String get author => 'লেখক';

  @override
  String get averageDuration => 'গড় সময়';

  @override
  String get characters => 'চৰিত্ৰসমূহ';

  @override
  String get synopsis => 'সাৰাংশ';

  @override
  String get endDate => 'শেষৰ তাৰিখ';

  @override
  String get format => 'ফৰ্মেট';

  @override
  String get meanScore => 'গড় স্ক’ৰ';

  @override
  String get name => 'নাম';

  @override
  String get nameRomaji => 'নাম (ৰোমাজি)';

  @override
  String get popularity => 'জনপ্ৰিয়তা';

  @override
  String get relations => 'সম্পৰ্ক';

  @override
  String get prequel => 'পূৰ্বকথা';

  @override
  String get sequel => 'পৰৱৰ্তী কথা';

  @override
  String get source => 'উৎস';

  @override
  String get staff => 'কৰ্মী';

  @override
  String get startDate => 'আৰম্ভৰ তাৰিখ';

  @override
  String get status => 'স্থিতি';

  @override
  String get studio => 'ষ্টুডিঅ’';

  @override
  String get synonyms => 'প্ৰতিশব্দ';

  @override
  String get tags => 'টেগসমূহ';

  @override
  String get total => 'মুঠ';

  @override
  String get collapseText => 'কম দেখুৱাওক';

  @override
  String get expandText => 'অধিক দেখুৱাওক';

  @override
  String get comingSoon => 'শীঘ্ৰে আহিব';

  @override
  String get wrongTitle => 'শিৰোনাম ভুল?';

  @override
  String get missingResults => 'Missing Results?';

  @override
  String get youTube => 'ইউটিউবত প্লে কৰক?';

  @override
  String get mediaNotFound => 'কোনো মিডিয়া পোৱা নগ’ল';

  @override
  String get noChapterFound => 'কোনো অধ্যায় পোৱা নগ’ল';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'কাৰ্যসমূহ',
      one: 'কাৰ্য',
    );
    return '$_temp0';
  }

  @override
  String get language => 'ভাষা';

  @override
  String get account => 'একাউণ্ট';

  @override
  String get accountDescription =>
      'আপোনাৰ এনিলিষ্ট, মাইএনিমেলিষ্ট আৰু ডিস্ক’ৰ্ড একাউণ্ট সহজে পৰিচালনা কৰক';

  @override
  String get common => 'সাধাৰণ';

  @override
  String get commonDescription =>
      'এপৰ মসৃণ ব্যৱহাৰৰ বাবে সাধাৰণ ছেটিংছলৈ প্ৰৱেশ কৰক';

  @override
  String get animeDescription =>
      'আপোনাৰ এনিমে পছন্দসমূহ ব্যক্তিগতকৰণ আৰু পৰিচালনা কৰক';

  @override
  String get mangaDescription =>
      'আপোনাৰ মাংগা অভিজ্ঞতা সংগঠিত আৰু কাষ্টমাইজ কৰক';

  @override
  String get about => 'সম্পৰ্কীয়';

  @override
  String get aboutDescription => 'এপ আৰু ইয়াৰ নিৰ্মাতাসকলৰ বিষয়ে অধিক জানক';

  @override
  String get notifications => 'জাননীসমূহ';

  @override
  String get notificationsDescription =>
      'জাননী কেনেকৈ আৰু কেতিয়া পাব তাক ছেট কৰক';

  @override
  String get offlineMode => 'অফলাইন মোড';

  @override
  String get offlineModeDescription => 'ইণ্টাৰনেট সংযোগ অবিহনে এপ ব্যৱহাৰ কৰক';

  @override
  String get incognitoMode => 'ইনকগনিটো মোড';

  @override
  String get incognitoModeDescription =>
      'আপোনাৰ কাৰ্যকলাপ সাঁচি নোলোৱাকৈ ব্ৰাউজ কৰক';

  @override
  String get hidePrivate => 'গোপনীয় লুকুৱাওক';

  @override
  String get hidePrivateDescription =>
      'হোম পৃষ্ঠাৰ পৰা গোপন ধাৰাবাহিক লুকুৱাওক।';

  @override
  String get hiddenMedia => 'গোপন মিডিয়া';

  @override
  String get noHiddenMediaFound => 'কোনো গোপন মিডিয়া পোৱা নগ’ল';

  @override
  String get playerSettingsTitle => 'প্লেয়াৰ ছেটিংছ';

  @override
  String get playerSettingsDesc => 'প্লেয়াৰ ছেটিংছ সলনি কৰক';

  @override
  String get speed => 'গতি';

  @override
  String get speedDescription => 'প্লেয়াৰৰ বাবে ডিফল্ট গতি';

  @override
  String get cursedSpeed => 'অভিশপ্ত গতি';

  @override
  String get cursedSpeedDescription => 'বৰ ব্যস্ত জীৱন যাপন কৰাসকলৰ বাবে';

  @override
  String get resizeMode => 'ৰিছাইজ মোড';

  @override
  String get resizeModeDescription => 'প্লেয়াৰৰ বাবে ডিফল্ট ৰিছাইজ মোড';

  @override
  String get skipButton => 'এৰি দিয়ক বাটন';

  @override
  String get skipButtonDescription => 'এৰি দিয়ক বাটনৰ সময়সীমা';

  @override
  String get thumbLessSeekBar => 'থাম্ববিহীন ছিক বাৰ';

  @override
  String get thumbLessSeekBarDesc => 'ছিক বাৰৰ পৰা থাম্ব আঁতৰাওক';

  @override
  String get customMPV => 'স্বনিৰ্বাচিত MPV বিন্যাস';

  @override
  String customMPVDescription(String path) {
    return 'আপোনাৰ নিজৰ MPV বিন্যাস নথিপত্ৰ ব্যৱহাৰ কৰিবলে এই বিকল্প সামৰ্থবান কৰক । আপোনাৰ স্বনিৰ্বাচিত বিন্যাস ইয়াত ৰাখক: $path';
  }

  @override
  String get subtitles => 'ছাবটাইটেল';

  @override
  String get showSubtitles => 'ছাবটাইটেল দেখুৱাওক';

  @override
  String get showSubtitlesDescription => 'ডিফল্ট হিচাপে ছাবটাইটেল দেখুৱাওক';

  @override
  String get subtitlePreview => 'ছাবটাইটেল প্ৰিভিউ';

  @override
  String get fontColor => 'ফণ্টৰ ৰঙ';

  @override
  String get fontColorDescription => 'ছাবটাইটেলৰ ফণ্টৰ ৰঙ';

  @override
  String get fontFamily => 'ফণ্ট পৰিয়াল';

  @override
  String get fontFamilyDescription => 'ছাবটাইটেলৰ ফণ্ট পৰিয়াল';

  @override
  String get fontSize => 'ফণ্টৰ আকাৰ';

  @override
  String get fontSizeDescription => 'ছাবটাইটেলৰ ফণ্টৰ আকাৰ';

  @override
  String get fontWeight => 'ফণ্টৰ ওজন';

  @override
  String get fontWeightDescription => 'ছাবটাইটেলৰ ফণ্টৰ ওজন';

  @override
  String get backgroundColor => 'পটভূমিৰ ৰঙ';

  @override
  String get backgroundColorDescription => 'ছাবটাইটেলৰ পটভূমিৰ ৰঙ';

  @override
  String get outlineColor => 'ৰূপৰেখাৰ ৰঙ';

  @override
  String get outlineColorDescription => 'ছাবটাইটেলৰ ৰূপৰেখাৰ ৰঙ';

  @override
  String get bottomPadding => 'তলৰ পেডিং';

  @override
  String get bottomPaddingDescription => 'ছাবটাইটেলৰ তলৰ পেডিং';

  @override
  String get useLibass => 'Use Libass';

  @override
  String get useLibassDescription =>
      'Use Libass for subtitle rendering (overrides other subtitle settings)';

  @override
  String get useGpuNext => 'Use gpu-next';

  @override
  String get useGpuNextDescription =>
      'New rendering backend (may cause visual artifacts)';

  @override
  String get autoPlayNextEpisode => 'Auto Play Next Episode';

  @override
  String get autoPlayNextEpisodeDescription =>
      'Automatically play the next episode when the current one ends';

  @override
  String get automaticSourceSelection => 'Automatic Source Selection Method';

  @override
  String get automaticSourceSelectionDescription =>
      'Which method to use for automatic source selection';

  @override
  String get readerSettings => 'ৰিডাৰ ছেটিংছ';

  @override
  String get readerSettingsDesc => 'ৰিডাৰ ছেটিংছ সলনি কৰক';

  @override
  String get spacedPages => 'পৃষ্ঠাৰ ফাঁক';

  @override
  String get spacedPagesDesc => 'পৃষ্ঠাৰ মাজত ফাঁক যোগ কৰক';

  @override
  String get hideScrollbar => 'স্ক্ৰলবাৰ লুকুৱাওক';

  @override
  String get hideScrollbarDesc => 'পঢ়োঁতে স্ক্ৰলবাৰ লুকুৱাওক';

  @override
  String get hidePageNumber => 'পৃষ্ঠাৰ নম্বৰ লুকুৱাওক';

  @override
  String get hidePageNumberDesc => 'পঢ়োঁতে পৃষ্ঠাৰ নম্বৰ লুকুৱাওক';

  @override
  String get theme => 'থিম';

  @override
  String get themeDescription => 'এপৰ চেহেৰা আৰু অনুভূতি কাষ্টমাইজ কৰক';

  @override
  String get darkMode => 'ডাৰ্ক মোড';

  @override
  String get enableDarkMode => 'ডাৰ্ক মোড সক্ৰিয় কৰক';

  @override
  String get glassEffect => 'গ্লাছ প্ৰভাৱ';

  @override
  String get glassEffectDescription => 'এপত কুঁৱলীৰ দৰে গ্লাছৰ প্ৰভাৱ দিয়ে';

  @override
  String get coverTheme => 'কভাৰ থীম ব্যৱহাৰ কৰক';

  @override
  String get coverThemeDescription =>
      'মিডিয়াৰ কভাৰ ছবি থীমৰ ৰং হিচাপে ব্যৱহাৰ কৰক';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription =>
      'আপোনাৰ ৱালপেপাৰৰ সৈতে মিল থকা ৰঙৰ থিম ব্যৱহাৰ কৰক';

  @override
  String get customTheme => 'নিজৰ থিম';

  @override
  String get customThemeDescription => 'নিজৰ ৰঙৰ থিম ব্যৱহাৰ কৰক';

  @override
  String get oledThemeVariant => 'ওএলইডি থিম ভেৰিয়েণ্ট';

  @override
  String get oledThemeVariantDescription => 'ওএলইডি মোড সক্ৰিয় কৰক';

  @override
  String get colorPicker => 'ৰঙ নিৰ্বাচক';

  @override
  String get pickColor => 'ৰঙ বাছক';

  @override
  String get colorPickerDescription => 'এটা ৰঙ বাছক';

  @override
  String get colorPickerDefault => 'ডিফল্ট';

  @override
  String get colorPickerCustom => 'কাষ্টম';

  @override
  String get customPath => 'কাষ্টম পথ';

  @override
  String get customPathDescription =>
      'ফাইল সাঁচিবলৈ কাষ্টম পথ নিৰ্ধাৰণ কৰক\nআঁতৰাবলৈ দীঘলীয়াকৈ টিপক';

  @override
  String get selectDirectory => 'ডাইৰেক্টৰি বাছক';

  @override
  String get selectMediaService => 'মিডিয়া সেৱা বাছক';

  @override
  String get logFile => 'লগ ফাইল';

  @override
  String get logFileDescription => 'লগ ফাইল শ্বেয়াৰ কৰক';

  @override
  String get restoreSettings => 'ছেটিংছ পুনৰুদ্ধাৰ কৰক';

  @override
  String get differentCacheManager => 'বেলেগ কেশ্ব মেনেজাৰ';

  @override
  String get differentCacheManagerDesc => 'বেলেগ ছবি কেশ্ব মেনেজাৰ ব্যৱহাৰ কৰক';

  @override
  String get webView => 'ৱেব দৰ্শন';

  @override
  String get developersHelpers => 'বিকাশক/সহায়ক';

  @override
  String get developersHelpersDesc => 'ডাৰ্ট’ৎচুৰ বিনামূলীয়া সহায়ক দল';

  @override
  String get supportMaintainer =>
      'ডাৰ্ট’ৎচুৰ মেইণ্টেইনাৰক সহায় কৰিব বিচাৰেনে?\nঅনুদানৰ কথা বিবেচনা কৰক';

  @override
  String get donationGoal => 'বৰ্তমান কোনো অনুদানৰ লক্ষ্য নাই';

  @override
  String get options => 'বিকল্প';

  @override
  String get ok => 'ঠিক আছে';

  @override
  String get cancel => 'বাতিল কৰক';

  @override
  String get yes => 'হয়';

  @override
  String get no => 'নহয়';
}
