part of 'PrefManager.dart';

class PrefName {
  static const source = Pref('source', 'ANILIST');

  //theme
  static const useGlassMode = Pref('useGlassMode', false);
  static const isDarkMode = Pref('isDarkMode', 0);
  static const isOled = Pref('isOled', false);
  static const useMaterialYou = Pref('useMaterialYou', false);
  static const theme = Pref('Theme', 'purple');
  static const customColor = Pref('customColor', 4280391411);
  static const useCustomColor = Pref('useCustomColor', false);
  static const showYtButton = Pref('showYtButton', true);
  static const autoUpdateExtensions = Pref('autoUpdateExtensions', true);
  static const useCoverTheme = Pref('useCoverTheme', true);

  //home page
  static const Pref<Map<dynamic, dynamic>> anilistHomeLayout =
      Pref('homeLayoutOrder', {
    'Continue Watching': true,
    'Favourite Anime': false,
    'Planned Anime': false,
    'Continue Reading': true,
    'Favourite Manga': false,
    'Planned Manga': false,
    'Recommended': true,
  });

  static const Pref<Map<dynamic, dynamic>> malHomeLayout =
      Pref('malHomeLayoutOrder', {
    'Continue Watching': true,
    'OnHold Anime': false,
    'Planned Anime': true,
    'Dropped Anime': false,
    'Continue Reading': true,
    'OnHold Manga': false,
    'Planned Manga': true,
    'Dropped Manga': false,
  });

  static const Pref<Map<dynamic, dynamic>> simklHomeLayout =
      Pref('simklHomeLayoutOrder', {
    'Continue Watching Anime': true,
    'Planned Anime': false,
    'Dropped Anime': false,
    'On Hold Anime': false,
    'Continue Watching Series': true,
    'Planned Series': false,
    'Dropped Series': false,
    'On Hold Series': false,
    'Planned Movies': true,
    'Dropped Movies': false,
  });

  static const Pref<Map<dynamic, dynamic>> extensionsHomeLayout =
      Pref('extensionsHomeLayoutOrder', {
    'Continue Watching': true,
    'Planned Series': false,
    'Continue Reading': true,
    'Planned Manga': false,
  });
  static const Pref<List<int>> anilistRemoveList =
      Pref('anilistRemoveList', []);
  static const Pref<List<int>> malRemoveList = Pref('malRemoveList', []);
  static const anilistHidePrivate = Pref('anilistHidePrivate', false);

  //anime page
  static const Pref<Map<dynamic, dynamic>> anilistAnimeLayout =
      Pref('animeLayoutOrder', {
    'Recent Updates': true,
    'Trending Movies': true,
    'Top Rated Series': true,
    'Most Favourite Series': true,
  });

  static const Pref<Map<dynamic, dynamic>> malAnimeLayout =
      Pref('malAnimeLayoutOrder', {
    'Top Airing': true,
    'Trending Movies': true,
    'Top Rated Series': true,
    'Most Favourite Series': true,
  });
  static const Pref<Map<dynamic, dynamic>> simklAnimeLayout =
      Pref('simklAnimeLayoutOrder', {
    'Incoming': true,
    'Airing': true,
  });
  static const adultOnly = Pref('adultOnly', false);
  static const includeAnimeList = Pref('includeAnimeList', false);
  static const recentlyListOnly = Pref('recentlyListOnly', false);
  static const NSFWExtensions = Pref('NSFWExtensions', true);
  static const AnimeDefaultView = Pref('AnimeDefaultView', 0);
  static const MangaDefaultView = Pref('MangaDefaultView', 0);

  static const Pref<String> userAgent = Pref('userAgent',
      "Mozilla/5.0 (Linux; Android 13; 22081212UG Build/TKQ1.220829.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/114.0.5735.131 Mobile Safari/537.36");

  static const Pref<Map<String, String>> cookies = Pref('cookies', {});

  //manga page
  static const Pref<Map<dynamic, dynamic>> anilistMangaLayout =
      Pref('mangaLayoutOrder', {
    'Trending Manhwa': true,
    'Trending Novels': true,
    'Top Rated Manga': true,
    'Most Favourite Manga': true,
  });

  static const Pref<Map<dynamic, dynamic>> malMangaLayout =
      Pref('malMangaLayoutOrder', {
    'Trending Manhwa': true,
    'Trending Novels': true,
    'Top Rated Manga': true,
    'Most Favourite Manga': true,
  });
  static const Pref<Map<dynamic, dynamic>> simklMangaLayout =
      Pref('simklMangaLayoutOrder', {
    'Incoming Shows': true,
    'Airing Shows': true,
  });
  static const includeMangaList = Pref('includeMangaList', false);

  //
  static const unReadCommentNotifications =
      Pref('unReadCommentNotifications', 0);
  static const incognito = Pref('incognito', false);
  static const offlineMode = Pref('offline', false);
  static const customPath = Pref('customPath', '');
  static const defaultLanguage = Pref('defaultLanguage', 'en');

  //Player
  static const cursedSpeed = Pref('cursedSpeed', false);
  static const thumbLessSeekBar = Pref('thumbLessSeekBar', false);
  static Pref<String> playerSettings =
      Pref('playerSetting', jsonEncode(PlayerSettings().toJson()));
  static Pref<String> readerSettings =
      Pref('readerSetting', jsonEncode(ReaderSettings().toJson()));

  // TODO => Remoove this when you add player settings (needless to say but still)
  static Pref<String> mpvConfigDir = const Pref<String>('mpvConfigDir', '');
  static Pref<bool> useCustomMpvConfig =
      const Pref<bool>('useCustomMpvConfig', false);

  //Protection
  static const anilistToken = Pref('AnilistToken', '');
  static const Pref<ResponseToken?> malToken = Pref('MalToken', null);
  static const simklToken = Pref('SimklToken', '');
  static const discordToken = Pref('DiscordToken', '');
  static const discordUserName = Pref('discordUserName', '');
  static const discordAvatar = Pref('discordAvatar', '');

  // irrelevant
  static const Pref<List<String>> GenresList = Pref('GenresList', []);
  static const Pref<List<String>> TagsListIsAdult = Pref('TagsListIsAdult', []);
  static const Pref<List<String>> TagsListNonAdult =
      Pref('TagsListNonAdult', []);
}
