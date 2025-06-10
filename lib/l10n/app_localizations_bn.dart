// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'নতুন সেরা অ্যাপ\nঅ্যানিমে ও মাঙ্গা ট্র্যাকিংয়ের জন্য';

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
    return 'লগইন করুন $service';
  }

  @override
  String logout(String type) {
    return 'লগআউট $type';
  }

  @override
  String get confirmLogout => 'আপনি কি লগআউট করতে চান?';

  @override
  String get anime => 'অ্যানিমে';

  @override
  String get manga => 'মাঙ্গা';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novel => 'নভেল';

  @override
  String get ln => 'এলএন';

  @override
  String get home => 'হোম';

  @override
  String get search => 'অনুসন্ধান';

  @override
  String get calendar => 'ক্যালেন্ডার';

  @override
  String get settings => 'সেটিংস';

  @override
  String get watch => 'দেখুন';

  @override
  String get read => 'পড়ুন';

  @override
  String get info => 'তথ্য';

  @override
  String get comments => 'মন্তব্য';

  @override
  String get addToList => 'তালিকায় যুক্ত করুন';

  @override
  String get series => 'সিরিজ';

  @override
  String get season => 'মৌসুম';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'পর্ব',
      one: 'পর্ব',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'অধ্যায়',
      one: 'অধ্যায়',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ভলিউম',
      one: 'ভলিউম',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'মুভি',
      one: 'মুভি',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'মোট এপিসোড';

  @override
  String get totalChapters => 'মোট অধ্যায়';

  @override
  String get genres => 'ধরণ';

  @override
  String get scanlators => 'স্ক্যানলেটর';

  @override
  String list(String type) {
    return '$type তালিকা';
  }

  @override
  String get watching => 'দেখছি';

  @override
  String get reading => 'পড়া';

  @override
  String get readStatus => 'পড়ুন';

  @override
  String get watchStatus => 'দেখেছি';

  @override
  String planned(String type) {
    return 'পরিকল্পিত $type';
  }

  @override
  String onHold(String type) {
    return 'পিছনে রাখা $type';
  }

  @override
  String get droppedAnime => 'বাদ দেওয়া অ্যানিমে';

  @override
  String get droppedManga => 'বাদ দেওয়া মাঙ্গা';

  @override
  String noDropped(String type) {
    return 'আপনি এখনও কোনো $type বাদ দেননি।';
  }

  @override
  String get continueReading => 'পড়া চালিয়ে যান';

  @override
  String get continueWatching => 'দেখা চালিয়ে যান';

  @override
  String browse(String type) {
    return 'ব্রাউজ $type';
  }

  @override
  String trending(String type) {
    return 'ট্রেন্ডিং $type';
  }

  @override
  String popular(String type) {
    return 'জনপ্রিয় $type';
  }

  @override
  String get topAiring => 'শীর্ষ সম্প্রচারিত';

  @override
  String topRated(String type) {
    return 'শীর্ষ রেটেড $type';
  }

  @override
  String mostFavourite(String type) {
    return 'সর্বাধিক পছন্দ $type';
  }

  @override
  String get thisSeason => 'এই মৌসুম';

  @override
  String get nextSeason => 'পরবর্তী মৌসুম';

  @override
  String get previousSeason => 'পূর্ববর্তী মৌসুম';

  @override
  String get recommended => 'সুপারিশকৃত';

  @override
  String get recommendationsEmptyMessage => 'কোনও সুপারিশ নেই';

  @override
  String get recentUpdates => 'সাম্প্রতিক আপডেট';

  @override
  String get allCaughtUpNew => 'সবকিছু আপডেট হয়ে গেছে?';

  @override
  String favorite(String type) {
    return 'প্রিয় $type';
  }

  @override
  String get favorites => 'প্রিয়';

  @override
  String get noFavourites =>
      'মনে হচ্ছে তোমার কিছুই ভালো লাগে না,\nএটি এখানে রাখার জন্য একটি শো পছন্দ করার চেষ্টা করুন।';

  @override
  String get noOnHold => 'মনে হচ্ছে আপনি কিছু আটকে রাখেননি।';

  @override
  String manageLayout(String service, String page) {
    return '$service এর জন্য $page পৃষ্ঠা লেআউট পরিচালনা করুন';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'আপনি আইটেম টেনে এবং ড্রপ করে $page পৃষ্ঠার জন্য লেআউট পরিচালনা করতে পারেন';
  }

  @override
  String get gridView => 'গ্রিড ভিউ';

  @override
  String get listView => 'তালিকা ভিউ';

  @override
  String get compactView => 'কমপ্যাক্ট ভিউ';

  @override
  String get layout => 'লেআউট';

  @override
  String get sort => 'বাছাই করুন';

  @override
  String get utd => 'আপডেটেড';

  @override
  String get dtu => 'ডাউনলোড করা হয়েছে';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'দেখা হয়েছে';

  @override
  String get chapterRead => 'পড়া হয়েছে';

  @override
  String get outOf => 'বাইরে';

  @override
  String get totalOf => 'Total of';

  @override
  String get selected => 'নির্বাচিত';

  @override
  String get found => 'পাওয়া গেছে';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'এক্সটেনশনসমূহ',
      one: 'এক্সটেনশন',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return 'উপলব্ধ $type';
  }

  @override
  String installed(String type) {
    return 'ইনস্টলড $type';
  }

  @override
  String get extensionsDescription =>
      'অতিরিক্ত কার্যকারিতা জন্য এক্সটেনশনগুলি ইনস্টল এবং পরিচালনা করুন';

  @override
  String get addAnimeRepo => 'অ্যানিমে রিপো যোগ করুন';

  @override
  String get addAnimeRepoDesc => 'বিভিন্ন উৎস থেকে অ্যানিমে রিপো যোগ করুন';

  @override
  String get addMangaRepo => 'মাঙ্গা রিপো যোগ করুন';

  @override
  String get addMangaRepoDesc => 'বিভিন্ন উৎস থেকে মাঙ্গা রিপো যোগ করুন';

  @override
  String get addNovelRepo => 'উপন্যাস রিপো যোগ করুন';

  @override
  String get addNovelRepoDesc => 'বিভিন্ন উৎস থেকে উপন্যাস রিপো যোগ করুন';

  @override
  String get loadExtensionsIcon => 'এক্সটেনশনের আইকন লোড করুন';

  @override
  String get loadExtensionsIconDesc =>
      'যদি এক্সটেনশন পেজ ধীর হয়ে যায়, এটি অক্ষম করুন';

  @override
  String get autoUpdate => 'স্বয়ংক্রিয় আপডেট';

  @override
  String get autoUpdateDesc => 'এক্সটেনশন স্বয়ংক্রিয়ভাবে আপডেট করুন';

  @override
  String get installSourceToStart =>
      'শুরু করতে এক্সটেনশন পৃষ্ঠা থেকে একটি উৎস ইনস্টল করুন';

  @override
  String get author => 'লেখক';

  @override
  String get averageDuration => 'গড় সময়কাল';

  @override
  String get characters => 'চরিত্র';

  @override
  String get description => 'সারাংশ';

  @override
  String get synopsis => 'সারাংশ';

  @override
  String get endDate => 'শেষ তারিখ';

  @override
  String get format => 'ফরম্যাট';

  @override
  String get meanScore => 'গড় স্কোর';

  @override
  String get name => 'নাম';

  @override
  String get nameRomaji => 'নামের রোমাজি';

  @override
  String get popularity => 'জনপ্রিয়তা';

  @override
  String get relations => 'সম্পর্ক';

  @override
  String get prequel => 'প্রিক্যুয়েল';

  @override
  String get sequel => 'সিক্যুয়েল';

  @override
  String get source => 'উৎস';

  @override
  String get staff => 'স্টাফ';

  @override
  String get startDate => 'শুরু তারিখ';

  @override
  String get status => 'অবস্থা';

  @override
  String get studio => 'স্টুডিও';

  @override
  String get synonyms => 'সিনোনিম';

  @override
  String get tags => 'ট্যাগ';

  @override
  String get total => 'মোট';

  @override
  String get collapseText => 'টেক্সট সংকুচিত করুন';

  @override
  String get expandText => 'টেক্সট বিস্তৃত করুন';

  @override
  String get comingSoon => 'শীঘ্রই আসছে';

  @override
  String get wrongTitle => 'ভুল শিরোনাম?';

  @override
  String get youTube => 'ইউটিউবে চালান?';

  @override
  String get mediaNotFound => 'মিডিয়া পাওয়া যায়নি';

  @override
  String get noChapterFound => 'কোন অধ্যায় খুঁজে পাওয়া যায়নি';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'কর্মক্ষমতা',
      one: 'কর্মক্ষমতা',
    );
    return '$_temp0';
  }

  @override
  String get language => 'ভাষা';

  @override
  String get account => 'অ্যাকাউন্ট';

  @override
  String get accountDescription =>
      'আপনার AniList, MAL এবং Discord অ্যাকাউন্ট সহজেই পরিচালনা করুন';

  @override
  String get common => 'সাধারণ';

  @override
  String get commonDescription =>
      'অ্যাপ ব্যবহারের জন্য সাধারণ সেটিংস অ্যাক্সেস করুন';

  @override
  String get animeDescription =>
      'আপনার অ্যানিমে পছন্দের ওপর কাস্টমাইজ করুন এবং পরিচালনা করুন';

  @override
  String get mangaDescription =>
      'আপনার মাঙ্গা অভিজ্ঞতা সংগঠিত এবং কাস্টমাইজ করুন';

  @override
  String get about => 'সম্পর্কে';

  @override
  String get aboutDescription => 'অ্যাপ এবং এর নির্মাতাদের সম্পর্কে আরও জানুন';

  @override
  String get notifications => 'বিজ্ঞপ্তি';

  @override
  String get notificationsDescription =>
      'আপনি কীভাবে এবং কখন বিজ্ঞপ্তি পাবেন তা কনফিগার করুন';

  @override
  String get offlineMode => 'অফলাইন মোড';

  @override
  String get offlineModeDescription =>
      'ইন্টারনেট সংযোগ ছাড়াই অ্যাপটি ব্যবহার করুন';

  @override
  String get incognitoMode => 'ইনকগনিটো মোড';

  @override
  String get incognitoModeDescription =>
      'আপনার কার্যকলাপ সংরক্ষণ না করেই ব্রাউজ করুন';

  @override
  String get hidePrivate => 'প্রাইভেট লুকান';

  @override
  String get hidePrivateDescription => 'হোম পেজ থেকে ব্যক্তিগত সিরিজ লুকান।';

  @override
  String get hiddenMedia => 'গোপন মিডিয়া';

  @override
  String get noHiddenMediaFound => 'কোনও গোপন মিডিয়া পাওয়া যায়নি';

  @override
  String get playerSettingsTitle => 'প্লেয়ার সেটিংস';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'গতি';

  @override
  String get speedDescription => 'প্লেয়ারের জন্য ডিফল্ট গতি';

  @override
  String get cursedSpeed => 'অভিশপ্ত গতি';

  @override
  String get cursedSpeedDescription => 'যারা জীবনের সাথে খুব ব্যস্ত তাদের জন্য';

  @override
  String get resizeMode => 'রিসাইজ মোড';

  @override
  String get resizeModeDescription => 'প্লেয়ারের জন্য ডিফল্ট রিসাইজ মোড';

  @override
  String get skipButton => 'স্কিপ বোতাম';

  @override
  String get skipButtonDescription => 'স্কিপ বোতামের সময়কাল';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'সাবটাইটেল';

  @override
  String get showSubtitles => 'সাবটাইটেল দেখান';

  @override
  String get showSubtitlesDescription => 'ডিফল্টভাবে সাবটাইটেল দেখান';

  @override
  String get subtitlePreview => 'সাবটাইটেল প্রিভিউ';

  @override
  String get fontColor => 'ফন্ট রঙ';

  @override
  String get fontColorDescription => 'উপশিরোনামের ফন্ট রঙ';

  @override
  String get fontFamily => 'ফন্ট ফ্যামিলি';

  @override
  String get fontFamilyDescription => 'উপশিরোনামের ফন্ট ফ্যামিলি';

  @override
  String get fontSize => 'ফন্ট সাইজ';

  @override
  String get fontSizeDescription => 'উপশিরোনামের ফন্ট সাইজ';

  @override
  String get fontWeight => 'ফন্ট ওজন';

  @override
  String get fontWeightDescription => 'উপশিরোনামের ফন্ট ওজন';

  @override
  String get backgroundColor => 'পটভূমি রঙ';

  @override
  String get backgroundColorDescription => 'উপশিরোনামের পটভূমি রঙ';

  @override
  String get outlineColor => 'আউটলাইন রঙ';

  @override
  String get outlineColorDescription => 'উপশিরোনামের আউটলাইন রঙ';

  @override
  String get bottomPadding => 'নিচের প্যাডিং';

  @override
  String get bottomPaddingDescription => 'উপশিরোনামের নিচের প্যাডিং';

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
  String get theme => 'থিম';

  @override
  String get themeDescription =>
      'আপনার অ্যাপের চেহারা এবং অনুভূতি কাস্টমাইজ করুন';

  @override
  String get darkMode => 'ডার্ক মোড';

  @override
  String get enableDarkMode => 'ডার্ক মোড সক্রিয় করুন';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription =>
      'আপনার ওয়ালপেপারের মতো একই রঙ ব্যবহার করুন';

  @override
  String get customTheme => 'কাস্টম থিম';

  @override
  String get customThemeDescription =>
      'থিমের জন্য আপনার নিজস্ব রঙ ব্যবহার করুন';

  @override
  String get oledThemeVariant => 'OLED থিম ভেরিয়েন্ট';

  @override
  String get oledThemeVariantDescription => 'OLED মোড সক্রিয় করুন';

  @override
  String get colorPicker => 'রঙ পছন্দকারী';

  @override
  String get pickColor => 'রঙ চয়ন করুন';

  @override
  String get colorPickerDescription => 'একটি রঙ নির্বাচন করুন';

  @override
  String get colorPickerDefault => 'ডিফল্ট';

  @override
  String get colorPickerCustom => 'কাস্টম';

  @override
  String get customPath => 'কাস্টম পথ';

  @override
  String get customPathDescription =>
      'ফাইল সংরক্ষণ করার জন্য একটি কাস্টম পথ সেট করুন\nঅপসারণ করতে দীর্ঘক্ষণ টিপুন';

  @override
  String get selectDirectory => 'একটি ডিরেক্টরি নির্বাচন করুন';

  @override
  String get selectMediaService => 'মিডিয়া পরিষেবা নির্বাচন করুন';

  @override
  String get logFile => 'লগ ফাইল';

  @override
  String get logFileDescription => 'লগ ফাইল শেয়ার করুন';

  @override
  String get restoreSettings => 'সেটিংস পুনরুদ্ধার করুন';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => 'ওয়েব ভিউ';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer =>
      'Dartotsu-এর রক্ষণাবেক্ষককে সমর্থন করতে চান?\nদান করার কথা ভাবুন';

  @override
  String get donationGoal => 'এখন কোনো দানের লক্ষ্য নেই';

  @override
  String get options => 'বিকল্প';

  @override
  String get ok => 'ঠিক আছে';

  @override
  String get cancel => 'বাতিল';

  @override
  String get yes => 'হ্যাঁ';

  @override
  String get no => 'না';
}
