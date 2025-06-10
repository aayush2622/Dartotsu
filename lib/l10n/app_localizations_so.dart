// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Somali (`so`).
class AppLocalizationsSo extends AppLocalizations {
  AppLocalizationsSo([String locale = 'so']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'App-ka Cusub ee Ugu Wanaagsan\nRaadinta Anime & Manga';

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
  String get login => 'Gal';

  @override
  String loginTo(String service) {
    return 'Gal $service';
  }

  @override
  String logout(String type) {
    return 'Ka bax $type';
  }

  @override
  String get confirmLogout => 'Ma hubtaa inaad rabto inaad ka baxdo?';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Manga';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novel => 'Sheeko';

  @override
  String get ln => 'Sheeko Iftiimin';

  @override
  String get home => 'Home';

  @override
  String get search => 'Raadi';

  @override
  String get calendar => 'Jadwal';

  @override
  String get settings => 'Dejinta';

  @override
  String get watch => 'Daawo';

  @override
  String get read => 'Akhri';

  @override
  String get info => 'Info';

  @override
  String get comments => 'Faallooyin';

  @override
  String get addToList => 'Add To List';

  @override
  String get series => 'Series';

  @override
  String get season => 'Xilli';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Qaybaha',
      one: 'Qaybta',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Qaybo',
      one: 'Qayb',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Heerro',
      one: 'Heer',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Filimaan',
      one: 'Filim',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'Qaybaha Guud';

  @override
  String get totalChapters => 'Cutubyo';

  @override
  String get genres => 'Noocyada';

  @override
  String get scanlators => 'Tarjumayaal';

  @override
  String list(String type) {
    return '$type Liiska';
  }

  @override
  String get watching => 'Daawanaya';

  @override
  String get reading => 'Akhrinaya';

  @override
  String get readStatus => 'Akhri';

  @override
  String get watchStatus => 'La daawaday';

  @override
  String planned(String type) {
    return '$type La qorsheeyay';
  }

  @override
  String onHold(String type) {
    return '$type La hakiyey';
  }

  @override
  String get droppedAnime => 'Anime la Joojiyey';

  @override
  String get droppedManga => 'Manga la Joojiyey';

  @override
  String noDropped(String type) {
    return 'Ma joojinin $type ilaa hadda.';
  }

  @override
  String get continueReading => 'Sii wad Akhrinta';

  @override
  String get continueWatching => 'Sii wad Daawashada';

  @override
  String browse(String type) {
    return 'Baadh $type';
  }

  @override
  String trending(String type) {
    return '$type Ku jira Xaaladda';
  }

  @override
  String popular(String type) {
    return '$type Caansan';
  }

  @override
  String get topAiring => 'Soo saarista Sare';

  @override
  String topRated(String type) {
    return 'Qiimeynta Sare ee $type';
  }

  @override
  String mostFavourite(String type) {
    return '$type Ugu Jecel';
  }

  @override
  String get thisSeason => 'Xilligan';

  @override
  String get nextSeason => 'Xilliga Xiga';

  @override
  String get previousSeason => 'Xilligii Hore';

  @override
  String get recommended => 'La Talo Bixiyay';

  @override
  String get recommendationsEmptyMessage =>
      'Daawo/Akhri qaar ka mid ah Anime ama Manga si aad u hesho Talooyin';

  @override
  String get recentUpdates => 'Cusboonaysiinta Ugu Dhaw';

  @override
  String get allCaughtUpNew => 'Dhammaan waa la soo gabagabeeyay, maxaa Cusub?';

  @override
  String favorite(String type) {
    return 'Jecel $type';
  }

  @override
  String get favorites => 'Waxyaabaha Jecel';

  @override
  String get noFavourites =>
      'Waxay u egtahay inaadan jecleyn waxba,\nIsku day inaad jecel yahay barnaamij si aad ugu hayso halkan.';

  @override
  String get noOnHold => 'Waxay u egtahay inaadan waxba hakinin.';

  @override
  String manageLayout(String service, String page) {
    return 'Maamul Qaabka $page ee $service';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'Waxaad maamuli kartaa qaabka bogga $page adigoo jiidaya oo dhigaya walxaha';
  }

  @override
  String get gridView => 'Muuqaal Shabakad';

  @override
  String get listView => 'List View';

  @override
  String get compactView => 'Muuqaal Kooban';

  @override
  String get layout => 'Layout';

  @override
  String get sort => 'Kala saar';

  @override
  String get utd => 'Ka Sareeya Hoos';

  @override
  String get dtu => 'Down To Up';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'Qaybta La Daawaday';

  @override
  String get chapterRead => 'Qaybta La Akhriday';

  @override
  String get outOf => 'ka mid ah';

  @override
  String get totalOf => 'Wadarta';

  @override
  String get selected => 'La xushay';

  @override
  String get found => 'Waa la helay';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kordhinta',
      one: 'Kordhin',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return '$type La heli karo';
  }

  @override
  String installed(String type) {
    return '$type La rakibay';
  }

  @override
  String get extensionsDescription =>
      'Ku rakib oo maaree kordhino si loogu daro shaqooyin dheeri ah';

  @override
  String get addAnimeRepo => 'Kudar Kaydka Anime';

  @override
  String get addAnimeRepoDesc => 'Kudar Kaydka Anime ilo kala duwan';

  @override
  String get addMangaRepo => 'Kudar Kaydka Manga';

  @override
  String get addMangaRepoDesc => 'Kudar Kaydka Manga ilo kala duwan';

  @override
  String get addNovelRepo => 'Kudar Kaydka Sheeko';

  @override
  String get addNovelRepoDesc => 'Kudar Kaydka Sheeko ilo kala duwan';

  @override
  String get loadExtensionsIcon => 'Soo rar Astaan Dheerad ah';

  @override
  String get loadExtensionsIconDesc =>
      'Dami haddii bogga dheeraynta uu gaabis noqdo';

  @override
  String get autoUpdate => 'Cusboonaysiin Toos ah';

  @override
  String get autoUpdateDesc => 'Cusboonaysii Dheeraynta si Toos ah';

  @override
  String get installSourceToStart =>
      'Ku rakib ilaha bogga dheeraadka si aad u bilowdo';

  @override
  String get author => 'Author';

  @override
  String get averageDuration => 'Muddada Celceliska';

  @override
  String get characters => 'Dabeecadaha';

  @override
  String get description => 'Sharaxaad';

  @override
  String get synopsis => 'Kooban';

  @override
  String get endDate => 'End Date';

  @override
  String get format => 'Qaabka';

  @override
  String get meanScore => 'Mean Score';

  @override
  String get name => 'Name';

  @override
  String get nameRomaji => 'Magaca (Romaji)';

  @override
  String get popularity => 'Caan noqoshada';

  @override
  String get relations => 'Relations';

  @override
  String get prequel => 'PREQUEL';

  @override
  String get sequel => 'SEQUEL';

  @override
  String get source => 'Source';

  @override
  String get staff => 'Shaqaalaha';

  @override
  String get startDate => 'Start Date';

  @override
  String get status => 'Status';

  @override
  String get studio => 'Studio';

  @override
  String get synonyms => 'Erayo Isku Mid Ah';

  @override
  String get tags => 'Tags';

  @override
  String get total => 'Total';

  @override
  String get collapseText => 'muujin wax yar';

  @override
  String get expandText => 'muujin wax badan';

  @override
  String get comingSoon => 'Waxaa Soo Socda';

  @override
  String get wrongTitle => 'Cinwaan khaldan?';

  @override
  String get youTube => 'Ka ciyaar YouTube?';

  @override
  String get mediaNotFound => 'Warbaahinta lama helin';

  @override
  String get noChapterFound => 'Cutub lama helin';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Hawlo',
      one: 'Hawl',
    );
    return '$_temp0';
  }

  @override
  String get language => 'Luuqadda';

  @override
  String get account => 'Akoon';

  @override
  String get accountDescription =>
      'Maaree akoonnadaada AniList, MAL, iyo Discord si sahlan';

  @override
  String get common => 'Guud';

  @override
  String get commonDescription =>
      'Hel dejinta guud ee isticmaalka fudud ee app-ka';

  @override
  String get animeDescription => 'Shakhsiyee oo maaree doorashadaada anime';

  @override
  String get mangaDescription => 'Hagaaji oo shakhsiye manga-daada';

  @override
  String get about => 'Ku Saabsan';

  @override
  String get aboutDescription => 'Wax badan ka baro app-ka iyo abuurayaashiisa';

  @override
  String get notifications => 'Ogeysiisyada';

  @override
  String get notificationsDescription =>
      'Deji sida iyo goorta aad ogeysiisyada helayso';

  @override
  String get offlineMode => 'Hab Offline';

  @override
  String get offlineModeDescription =>
      'Isticmaal app-ka adigoon xirin internetka';

  @override
  String get incognitoMode => 'Habga Sirta ah';

  @override
  String get incognitoModeDescription =>
      'Ku dhex soco internetka adigoon kaydin hawshaada';

  @override
  String get hidePrivate => 'Qari Xogta Gaarka ah';

  @override
  String get hidePrivateDescription => 'Qari taxanaha gaarka ah bogga Guriga.';

  @override
  String get hiddenMedia => 'Warbaahinta Qarsoon';

  @override
  String get noHiddenMediaFound => 'Warbaahinta Qarsoon lama helin';

  @override
  String get playerSettingsTitle => 'Dejinta Ciyaaryahanka';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'Xawaare';

  @override
  String get speedDescription => 'Xawaaraha caadiga ah ee ciyaaryahanka';

  @override
  String get cursedSpeed => 'Xawaaraha La\'aan';

  @override
  String get cursedSpeedDescription => 'Dadkii aadka ugu mashquulsan nolosha';

  @override
  String get resizeMode => 'Habka Dib-u-cabbirka';

  @override
  String get resizeModeDescription =>
      'Habka dib-u-cabbirka ee caadiga ah ee ciyaaryahanka';

  @override
  String get skipButton => 'Badhamada Ka Bixinta';

  @override
  String get skipButtonDescription => 'Muddada badhanka ka bixinta';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'qoraal hoosaadyo';

  @override
  String get showSubtitles => 'Muuji Subtitles';

  @override
  String get showSubtitlesDescription => 'Muuji subtitles si caadi ah';

  @override
  String get subtitlePreview => 'Muuqaalka hore ee Subtitles';

  @override
  String get fontColor => 'Midabka Farta';

  @override
  String get fontColorDescription => 'Midabka farta ee subtitles';

  @override
  String get fontFamily => 'Qoyska Farta';

  @override
  String get fontFamilyDescription => 'Qoyska farta ee subtitles';

  @override
  String get fontSize => 'Cabbirka Farta';

  @override
  String get fontSizeDescription => 'Cabbirka farta ee subtitles';

  @override
  String get fontWeight => 'Miisaanka Farta';

  @override
  String get fontWeightDescription => 'Miisaanka farta ee subtitles';

  @override
  String get backgroundColor => 'Midabka Asalka';

  @override
  String get backgroundColorDescription => 'Midabka asalka ee subtitles';

  @override
  String get outlineColor => 'Midabka Xariiqda';

  @override
  String get outlineColorDescription => 'Midabka xariiqda ee subtitles';

  @override
  String get bottomPadding => 'Padding-hoose';

  @override
  String get bottomPaddingDescription => 'Padding-hoose ee subtitles';

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
  String get theme => 'Mowduuca';

  @override
  String get themeDescription => 'Hagaaji muuqaalka iyo dareenka app-kaaga';

  @override
  String get darkMode => 'Hab Madow';

  @override
  String get enableDarkMode => 'Fur Habka Madow';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription => 'Isticmaal midabkaaga wallpaper-ka';

  @override
  String get customTheme => 'Mowduuc La Habeeyay';

  @override
  String get customThemeDescription =>
      'Isticmaal midabkaaga gaarka ah ee mowduuca';

  @override
  String get oledThemeVariant => 'Nooca OLED ee Mowduuca';

  @override
  String get oledThemeVariantDescription => 'Fur Habka OLED';

  @override
  String get colorPicker => 'Xulashada Midabka';

  @override
  String get pickColor => 'Dooro midabka';

  @override
  String get colorPickerDescription => 'Dooro midab';

  @override
  String get colorPickerDefault => 'Dejin';

  @override
  String get colorPickerCustom => 'La Habeeyay';

  @override
  String get customPath => 'Dariiqa Caadiga ah';

  @override
  String get customPathDescription =>
      'Deji waddo gaar ah si aad u kaydiso faylasha\nRiix dheer si aad meesha uga saarto';

  @override
  String get selectDirectory => 'Dooro hage';

  @override
  String get selectMediaService => 'Dooro Adeegga Warbaahinta';

  @override
  String get logFile => 'Faylka Diyaarinta';

  @override
  String get logFileDescription => 'La wadaag faylka log';

  @override
  String get restoreSettings => 'Soo celi Dejinta';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => 'Muuqaalka Web';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer =>
      'Ma dooneysaa inaad taageerto Maamulaha Dartotsu?\nTixgeli Inaad Deeq Bixiso';

  @override
  String get donationGoal => 'Ma jiraan ujeeddo deeq ah hadda';

  @override
  String get options => 'Options';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Jooji';

  @override
  String get yes => 'Haa';

  @override
  String get no => 'Maya';
}
