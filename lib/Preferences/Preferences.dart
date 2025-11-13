part of 'PrefManager.dart';

class PrefName {
  //theme
  static const useGlassMode = Pref('useGlassMode', false, PrefLocation.THEME);
  static const isDarkMode = Pref('isDarkMode', 0, PrefLocation.THEME);
  static const isOled = Pref('isOled', false, PrefLocation.THEME);
  static const useMaterialYou =
      Pref('useMaterialYou', false, PrefLocation.THEME);
  static const theme = Pref('Theme', 'purple', PrefLocation.THEME);
  static const customColor =
      Pref('customColor', 4280391411, PrefLocation.THEME);
  static const useCustomColor =
      Pref('useCustomColor', false, PrefLocation.THEME);
  static const showYtButton = Pref('showYtButton', true, PrefLocation.THEME);
  static const autoUpdateExtensions =
      Pref('autoUpdateExtensions', true, PrefLocation.THEME);
  static const useCoverTheme = Pref('useCoverTheme', true, PrefLocation.THEME);

  static const source = Pref('source', 'ANILIST', PrefLocation.COMMON);
  static const Pref<Map<dynamic, dynamic>> anilistHomeLayout = Pref(
      'homeLayoutOrder',
      {
        'Continue Watching': true,
        'Favourite Anime': false,
        'Planned Anime': false,
        'Continue Reading': true,
        'Favourite Manga': false,
        'Planned Manga': false,
        'Recommended': true,
      },
      PrefLocation.COMMON);

  static const Pref<Map<dynamic, dynamic>> malHomeLayout = Pref(
      'malHomeLayoutOrder',
      {
        'Continue Watching': true,
        'OnHold Anime': false,
        'Planned Anime': true,
        'Dropped Anime': false,
        'Continue Reading': true,
        'OnHold Manga': false,
        'Planned Manga': true,
        'Dropped Manga': false,
      },
      PrefLocation.COMMON);

  static const Pref<Map<dynamic, dynamic>> simklHomeLayout = Pref(
      'simklHomeLayoutOrder',
      {
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
      },
      PrefLocation.COMMON);

  static const Pref<Map<dynamic, dynamic>> extensionsHomeLayout = Pref(
      'extensionsHomeLayoutOrder',
      {
        'Continue Watching': true,
        'Planned Series': false,
        'Continue Reading': true,
        'Planned Manga': false,
      },
      PrefLocation.COMMON);
  static const Pref<List<int>> anilistRemoveList =
      Pref('anilistRemoveList', [], PrefLocation.COMMON);
  static const Pref<List<int>> malRemoveList =
      Pref('malRemoveList', [], PrefLocation.COMMON);
  static const anilistHidePrivate =
      Pref('anilistHidePrivate', false, PrefLocation.COMMON);

  //anime page
  static const Pref<Map<dynamic, dynamic>> anilistAnimeLayout = Pref(
      'animeLayoutOrder',
      {
        'Recent Updates': true,
        'Trending Movies': true,
        'Top Rated Series': true,
        'Most Favourite Series': true,
      },
      PrefLocation.COMMON);

  static const Pref<Map<dynamic, dynamic>> malAnimeLayout = Pref(
      'malAnimeLayoutOrder',
      {
        'Top Airing': true,
        'Trending Movies': true,
        'Top Rated Series': true,
        'Most Favourite Series': true,
      },
      PrefLocation.COMMON);
  static const Pref<Map<dynamic, dynamic>> simklAnimeLayout = Pref(
      'simklAnimeLayoutOrder',
      {
        'Incoming': true,
        'Airing': true,
      },
      PrefLocation.COMMON);
  static const adultOnly = Pref('adultOnly', false, PrefLocation.COMMON);
  static const includeAnimeList =
      Pref('includeAnimeList', false, PrefLocation.COMMON);
  static const recentlyListOnly =
      Pref('recentlyListOnly', false, PrefLocation.COMMON);
  static const NSFWExtensions =
      Pref('NSFWExtensions', true, PrefLocation.COMMON);
  static const AnimeDefaultView =
      Pref('AnimeDefaultView', 0, PrefLocation.COMMON);
  static const MangaDefaultView =
      Pref('MangaDefaultView', 0, PrefLocation.COMMON);

  static const Pref<String> userAgent = Pref(
      'userAgent',
      "Mozilla/5.0 (Linux; Android 13; 22081212UG Build/TKQ1.220829.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/114.0.5735.131 Mobile Safari/537.36",
      PrefLocation.COMMON);

  static const Pref<Map<String, String>> cookies =
      Pref('cookies', {}, PrefLocation.COMMON);

  //manga page
  static const Pref<Map<dynamic, dynamic>> anilistMangaLayout = Pref(
      'mangaLayoutOrder',
      {
        'Trending Manhwa': true,
        'Trending Novels': true,
        'Top Rated Manga': true,
        'Most Favourite Manga': true,
      },
      PrefLocation.COMMON);

  static const Pref<Map<dynamic, dynamic>> malMangaLayout = Pref(
      'malMangaLayoutOrder',
      {
        'Trending Manhwa': true,
        'Trending Novels': true,
        'Top Rated Manga': true,
        'Most Favourite Manga': true,
      },
      PrefLocation.COMMON);
  static const Pref<Map<dynamic, dynamic>> simklMangaLayout = Pref(
      'simklMangaLayoutOrder',
      {
        'Incoming Shows': true,
        'Airing Shows': true,
      },
      PrefLocation.COMMON);
  static const includeMangaList =
      Pref('includeMangaList', false, PrefLocation.COMMON);

  //
  static const unReadCommentNotifications =
      Pref('unReadCommentNotifications', 0, PrefLocation.COMMON);
  static const incognito = Pref('incognito', false, PrefLocation.COMMON);
  static const offlineMode = Pref('offline', false, PrefLocation.COMMON);
  static const customPath = Pref('customPath', '', PrefLocation.COMMON);
  static const defaultLanguage =
      Pref('defaultLanguage', 'en', PrefLocation.COMMON);

  //Player
  static const cursedSpeed = Pref('cursedSpeed', false, PrefLocation.PLAYER);
  static const thumbLessSeekBar =
      Pref('thumbLessSeekBar', false, PrefLocation.PLAYER);
  static Pref<String> playerSettings = Pref('playerSetting',
      jsonEncode(PlayerSettings().toJson()), PrefLocation.PLAYER);
  static Pref<String> readerSettings = Pref('readerSetting',
      jsonEncode(ReaderSettings().toJson()), PrefLocation.PLAYER);
  static const perAnimePlayerSettings =
      Pref('perAnimePlayerSettings', true, PrefLocation.PLAYER);

  // TODO => Remoove this when you add player settings (needless to say but still)
  static Pref<String> mpvConfigDir =
      const Pref<String>('mpvConfigDir', '', PrefLocation.PLAYER);
  static Pref<bool> useCustomMpvConfig =
      const Pref<bool>('useCustomMpvConfig', false, PrefLocation.PLAYER);

  static Pref<int> autoSourceMatch = Pref<int>(
      'autoSourceMatch', AutoSourceMatch.Exact.toJson(), PrefLocation.PLAYER);

  //Protection
  static const anilistToken = Pref('AnilistToken', '', PrefLocation.PROTECTED);
  static const Pref<ResponseToken?> malToken =
      Pref('MalToken', null, PrefLocation.PROTECTED);
  static const simklToken = Pref('SimklToken', '', PrefLocation.PROTECTED);
  static const discordToken = Pref('DiscordToken', '', PrefLocation.PROTECTED);
  static const discordUserName =
      Pref('discordUserName', '', PrefLocation.PROTECTED);
  static const discordAvatar =
      Pref('discordAvatar', '', PrefLocation.PROTECTED);

  // irrelevant
  static const Pref<List<String>> GenresList =
      Pref('GenresList', [], PrefLocation.OTHER);
  static const Pref<List<String>> TagsListIsAdult =
      Pref('TagsListIsAdult', [], PrefLocation.OTHER);
  static const Pref<List<String>> TagsListNonAdult =
      Pref('TagsListNonAdult', [], PrefLocation.OTHER);
}
