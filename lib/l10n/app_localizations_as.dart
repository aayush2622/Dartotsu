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
  String get appTagline =>
      'এনিমে আৰু মাংগা ট্রেক \nকৰাৰ বাবে নতুন সৰ্বশ্ৰেষ্ঠ এপ';

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
    return '$service ত প্ৰৱেশ কৰক';
  }

  @override
  String logout(String type) {
    return 'লগআউট $type';
  }

  @override
  String get confirmLogout => 'আপুনি নিশ্চিতভাৱে লগআউট কৰিব বিচাৰেনে?';

  @override
  String get anime => 'এনিমে';

  @override
  String get manga => 'মাংগা';

  @override
  String get manhwa => 'মানৱা';

  @override
  String get manhua => 'মান্হুৱা';

  @override
  String get novel => 'উপন্যাস';

  @override
  String get ln => 'লাইট উপন্যাস';

  @override
  String get home => 'ঘৰ';

  @override
  String get search => 'সন্ধান';

  @override
  String get calendar => 'ক্যালেণ্ডাৰ';

  @override
  String get settings => 'ছেটিংছ';

  @override
  String get watch => 'চোৱা';

  @override
  String get read => 'পঢ়া';

  @override
  String get info => 'তথ্য';

  @override
  String get comments => 'মন্তব্য';

  @override
  String get addToList => 'তালিকাত যোগ কৰক';

  @override
  String get series => 'ধাৰাবাহিক';

  @override
  String get season => 'চিজন';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'খণ্ডসমূহ',
      one: 'খণ্ড',
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
      other: 'সৰ্গসমূহ',
      one: 'সৰ্গ',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'চলচিত্ৰসমূহ',
      one: 'চলচিত্ৰ',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'খণ্ডবোৰ';

  @override
  String get totalChapters => 'অধ্যায়সমূহ';

  @override
  String get genres => 'প্ৰকাৰসমূহ';

  @override
  String get scanlators => 'স্কেনলেটৰ';

  @override
  String list(String type) {
    return '$type সূচী';
  }

  @override
  String get watching => 'চাই আছে';

  @override
  String get reading => 'পঢ়ি আছে';

  @override
  String get readStatus => 'পঢ়া';

  @override
  String get watchStatus => 'চোৱা হল';

  @override
  String planned(String type) {
    return 'পৰিকল্পিত $type';
  }

  @override
  String onHold(String type) {
    return 'স্থগিত $type';
  }

  @override
  String get droppedAnime => 'আতৰোৱা এনিমে';

  @override
  String get droppedManga => 'আতৰোৱা মাংগা';

  @override
  String noDropped(String type) {
    return 'আপুনি এতিয়াও কোনো $type বাদ দিয়া নাই।';
  }

  @override
  String get continueReading => 'পঢ়া অব্যাহত ৰাখক';

  @override
  String get continueWatching => 'চোৱা অব্যাহত ৰাখক';

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
  String get topAiring => 'শ্ৰেষ্ঠ প্ৰসাৰিত';

  @override
  String topRated(String type) {
    return 'সৰ্বোচ্চ ৰেটেড $type';
  }

  @override
  String mostFavourite(String type) {
    return 'সৰ্বাধিক প্ৰিয় $type';
  }

  @override
  String get thisSeason => 'এই সিজন';

  @override
  String get nextSeason => 'পৰৱৰ্তী সিজন';

  @override
  String get previousSeason => 'পূৰ্বৱৰ্তী সিজন';

  @override
  String get recommended => 'পৰামৰ্শিত';

  @override
  String get recommendationsEmptyMessage =>
      'পৰামৰ্শ পাবলৈ কিছুমান এনিমে বা মাংগা চাওক/পঢ়ক';

  @override
  String get recentUpdates => 'শেহতীয়া আপডেটসমূহ';

  @override
  String get allCaughtUpNew => 'সকলো হ\'ল, নতুন কি?';

  @override
  String favorite(String type) {
    return 'প্ৰিয় $type';
  }

  @override
  String get favorites => 'প্ৰিয়বোৰ';

  @override
  String get noFavourites =>
      'দেখাত একো ভাল নালাগে,\nইয়াত ৰাখিবলৈ এটা শ্ব’ লাইক কৰি চাওক।';

  @override
  String get noOnHold => 'দেখাত একো স্থগিত ৰখা নাই।';

  @override
  String manageLayout(String service, String page) {
    return '$service ৰ বাবে $page পৃষ্ঠাৰ অৱস্থান পৰিচালনা কৰক';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'আপুনি $page পৃষ্ঠাৰ অৱস্থান ড্ৰেগ আৰু ড্ৰপ কৰি সামগ্ৰীসমূহ পৰিচালনা কৰিব পাৰে';
  }

  @override
  String get gridView => 'গ্ৰিড দৃশ্য';

  @override
  String get listView => 'তালিকা দৃশ্য';

  @override
  String get compactView => 'সংকুচিত দৃশ্য';

  @override
  String get layout => 'গাঁথনি';

  @override
  String get sort => 'সজোৱা';

  @override
  String get utd => 'ওপৰৰ পৰা তলৰলৈ';

  @override
  String get dtu => 'তলৰ পৰা ওপৰলৈ';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'চোৱা খণ্ড';

  @override
  String get chapterRead => 'পঢ়া অধ্যায়';

  @override
  String get outOf => 'ৰ পৰা';

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
      other: 'এক্সটেনচনসমূহ',
      one: 'এক্সটেনচন',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return 'উপলব্ধ $type';
  }

  @override
  String installed(String type) {
    return 'স্থাপিত $type';
  }

  @override
  String get extensionsDescription =>
      'অধিক কাৰ্যক্ষমতাৰ বাবে এক্সটেনচনসমূহ ইনষ্টল আৰু ব্যৱস্থাপন কৰক';

  @override
  String get addAnimeRepo => 'এনিমে ৰেপো যোগ কৰক';

  @override
  String get addAnimeRepoDesc => 'বিভিন্ন উৎসৰ পৰা এনিমে ৰেপো যোগ কৰক';

  @override
  String get addMangaRepo => 'মাংগা ৰেপো যোগ কৰক';

  @override
  String get addMangaRepoDesc => 'বিভিন্ন উৎসৰ পৰা মাংগা ৰেপো যোগ কৰক';

  @override
  String get addNovelRepo => 'নভেল ৰেপো যোগ কৰক';

  @override
  String get addNovelRepoDesc => 'বিভিন্ন উৎসৰ পৰা নভেল ৰেপো যোগ কৰক';

  @override
  String get loadExtensionsIcon => 'এক্সটেনচনসমূহৰ আইকন লোড কৰক';

  @override
  String get loadExtensionsIconDesc =>
      'যদি এক্সটেনচনসমূহৰ পৃষ্ঠা লেগ কৰে তেন্তে অক্ষম কৰক';

  @override
  String get autoUpdate => 'অটো আপডেট';

  @override
  String get autoUpdateDesc => 'এক্সটেনচনসমূহ স্বয়ং-আপডেট কৰক';

  @override
  String get installSourceToStart =>
      'আৰম্ভ কৰিবলৈ সম্প্ৰসাৰণ পৃষ্ঠাৰ পৰা এটা উৎস সংস্থাপন কৰক';

  @override
  String get author => 'লেখক';

  @override
  String get averageDuration => 'গড় সময়সীমা';

  @override
  String get characters => 'পাত্ৰসমূহ';

  @override
  String get description => 'সাৰাংশ';

  @override
  String get synopsis => 'ছিনপচিছ';

  @override
  String get endDate => 'শেষৰ তাৰিখ';

  @override
  String get format => 'আকাৰ';

  @override
  String get meanScore => 'গড় স্ক’ৰ';

  @override
  String get name => 'নাম';

  @override
  String get nameRomaji => 'নাম (ৰোমাজী)';

  @override
  String get popularity => 'জনপ্ৰিয়তা';

  @override
  String get relations => 'সম্পৰ্ক';

  @override
  String get prequel => 'পূৰ্ববর্তী';

  @override
  String get sequel => 'পৰৱৰ্তী';

  @override
  String get source => 'উত্‍স';

  @override
  String get staff => 'কৰ্মচাৰী';

  @override
  String get startDate => 'আৰম্ভণিৰ তাৰিখ';

  @override
  String get status => 'স্থিতি';

  @override
  String get studio => 'ষ্টুডিঅ';

  @override
  String get synonyms => 'প্ৰতিশব্দ';

  @override
  String get tags => 'টেগ';

  @override
  String get total => 'মুঠ';

  @override
  String get collapseText => 'কম দেখুৱাওক';

  @override
  String get expandText => 'অধিক দেখুৱাওক';

  @override
  String get comingSoon => 'আহি আছে';

  @override
  String get wrongTitle => 'ভুল শিৰোনাম?';

  @override
  String get youTube => 'YouTube ত প্লে কৰক?';

  @override
  String get mediaNotFound => 'কোনো মিডিয়া পোৱা নগ’ল';

  @override
  String get noChapterFound => 'কোনো অধ্যায় পোৱা নগ’ল';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'কাৰ্য্যসমূহ',
      one: 'কাৰ্য্য',
    );
    return '$_temp0';
  }

  @override
  String get language => 'ভাষা';

  @override
  String get account => 'একাউণ্ট';

  @override
  String get accountDescription =>
      'আপোনাৰ এনিলিস্ট, এমএএল আৰু ডিছক\'ৰ্ড একাউণ্ট সহজে ব্যৱস্থাপন কৰক';

  @override
  String get common => 'সাধাৰণ';

  @override
  String get commonDescription =>
      'এপৰ সন্ত্ৰাসবিহীন ব্যৱহাৰৰ বাবে সাধাৰণ ছেটিংসমূহ এক্সেছ কৰক';

  @override
  String get animeDescription =>
      'আপোনাৰ এনিমে পছন্দসমূহ ব্যক্তিগতকৰণ আৰু ব্যৱস্থাপন কৰক';

  @override
  String get mangaDescription =>
      'আপোনাৰ মাংগা অভিজ্ঞতা সংগঠিত আৰু অনুকূলিত কৰক';

  @override
  String get about => 'সম্পৰ্কে';

  @override
  String get aboutDescription => 'এপ আৰু ইয়াৰ নিৰ্মাতাসকলৰ বিষয়ে অধিক জানক';

  @override
  String get notifications => 'জাননীসমূহ';

  @override
  String get notificationsDescription =>
      'কিদৰে আৰু কেতিয়া আপুনি জাননী পাব সেয়া সংহত কৰক';

  @override
  String get offlineMode => 'অফলাইন ম’ড';

  @override
  String get offlineModeDescription =>
      'ইণ্টাৰনেট সংযোগ নোহোৱাকৈ এপটো ব্যৱহাৰ কৰক';

  @override
  String get incognitoMode => 'ইনক’গনিট’ ম’ড';

  @override
  String get incognitoModeDescription =>
      'আপোনাৰ কাৰ্য্যকলাপ সংৰক্ষণ নকৰাকৈ ব্ৰাউজ কৰক';

  @override
  String get hidePrivate => 'গোপনীয়তা লুকুৱাওক';

  @override
  String get hidePrivateDescription =>
      'হোম পৃষ্ঠাৰ পৰা গোপনীয় ধাৰাবাহিক লুকুৱাওক।';

  @override
  String get hiddenMedia => 'গুপ্ত মিডিয়া';

  @override
  String get noHiddenMediaFound => 'কোনো গুপ্ত মিডিয়া পোৱা নগ’ল';

  @override
  String get playerSettingsTitle => 'প্লেয়াৰ ছেটিংছ';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'গতি';

  @override
  String get speedDescription => 'প্লেয়াৰৰ বাবে ডিফল্ট গতি';

  @override
  String get cursedSpeed => 'অভিশপ্ত গতি';

  @override
  String get cursedSpeedDescription => 'জীৱনত অত্যধিক ব্যস্ত থকা মানুহৰ বাবে';

  @override
  String get resizeMode => 'ৰীছাইজ ম’ড';

  @override
  String get resizeModeDescription => 'প্লেয়াৰৰ বাবে ডিফল্ট ৰীছাইজ ম’ড';

  @override
  String get skipButton => 'স্কিপ বুটাম';

  @override
  String get skipButtonDescription => 'স্কিপ বুটামৰ সময়সীমা';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'সাবটাইটল';

  @override
  String get showSubtitles => 'সাবটাইটলসমূহ দেখুৱাওক';

  @override
  String get showSubtitlesDescription => 'অবিকল্পিতভাৱে সাবটাইটলসমূহ দেখুৱাওক';

  @override
  String get subtitlePreview => 'সাবটাইটল প্ৰিভিউ';

  @override
  String get fontColor => 'ফণ্টৰ ৰঙ';

  @override
  String get fontColorDescription => 'সাবটাইটেলৰ ফণ্ট ৰঙ';

  @override
  String get fontFamily => 'ফণ্ট পৰিয়াল';

  @override
  String get fontFamilyDescription => 'সাবটাইটেলৰ ফণ্ট পৰিয়াল';

  @override
  String get fontSize => 'ফণ্টৰ আকাৰ';

  @override
  String get fontSizeDescription => 'সাবটাইটেলৰ ফণ্ট আকাৰ';

  @override
  String get fontWeight => 'ফন্টৰ ওজন';

  @override
  String get fontWeightDescription => 'সাবটাইটেলৰ ফন্টৰ ওজন';

  @override
  String get backgroundColor => 'পটভূমি ৰঙ';

  @override
  String get backgroundColorDescription => 'সাবটাইটেলৰ পটভূমি ৰঙ';

  @override
  String get outlineColor => 'ৰূপৰেখা ৰং';

  @override
  String get outlineColorDescription => 'সাবটাইটেলৰ ৰূপৰেখা ৰং';

  @override
  String get bottomPadding => 'তলৰ পেডিং';

  @override
  String get bottomPaddingDescription => 'সাবটাইটেলৰ তলৰ পেডিং';

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
  String get theme => 'থীম';

  @override
  String get themeDescription => 'আপোনাৰ এপৰ আকাৰ-প্ৰকাৰ আৰু আভাস অনুকূলিত কৰক';

  @override
  String get darkMode => 'ডাৰ্ক ম’ড';

  @override
  String get enableDarkMode => 'ডাৰ্ক ম’ড সক্ৰিয় কৰক';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription =>
      'আপোনাৰ ৱ’লপেপাৰৰ দৰে একে ৰং মিল থকা থীম ব্যৱহাৰ কৰক';

  @override
  String get customTheme => 'নিজস্ব থীম';

  @override
  String get customThemeDescription =>
      'আপোনাৰ নিজস্ব ৰঙ থীম হিচাপে ব্যৱহাৰ কৰক';

  @override
  String get oledThemeVariant => 'ওএলইডি থীম ভেৰিয়েণ্ট';

  @override
  String get oledThemeVariantDescription => 'ওএলইডি ম’ড সক্ৰিয় কৰক';

  @override
  String get colorPicker => 'ৰঙ চয়ন কৰক';

  @override
  String get pickColor => 'এটা ৰঙ বাচক';

  @override
  String get colorPickerDescription => 'এটা ৰঙ নিৰ্বাচন কৰক';

  @override
  String get colorPickerDefault => 'ডিফল্ট';

  @override
  String get colorPickerCustom => 'কাষ্টম';

  @override
  String get customPath => 'কাষ্টম পথ';

  @override
  String get customPathDescription =>
      'ফাইলসমূহ সংৰক্ষণ কৰিবলে এটা স্বনিৰ্বাচিত পথ নিৰ্ধাৰণ কৰক\nআঁতৰাবলৈ দীঘলীয়াকৈ টিপিব';

  @override
  String get selectDirectory => 'এটা ডাইৰেকটৰি নিৰ্ব্বাচন কৰক';

  @override
  String get selectMediaService => 'মিডিয়া সেৱা নিৰ্ব্বাচন কৰক';

  @override
  String get logFile => 'লগ ফাইল';

  @override
  String get logFileDescription => 'লগ ফাইলটো অংশীদাৰী কৰক';

  @override
  String get restoreSettings => 'ছেটিংছ পুনৰুদ্ধাৰ কৰক';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => 'ৱেব দৃশ্য';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer =>
      'ডাৰটোত্সুৰ মেইণ্টেইনাৰক সহায় কৰিব বিচাৰে নেকি?\nঅনুদানৰ বিষয়ে বিবেচনা কৰক';

  @override
  String get donationGoal => 'বৰ্তমান কোনো অনুদানৰ লক্ষ্য নাই';

  @override
  String get options => 'বিকল্পসমূহ';

  @override
  String get ok => 'ঠিক আছে';

  @override
  String get cancel => 'বাতিল';

  @override
  String get yes => 'হয়';

  @override
  String get no => 'নহয়';
}
