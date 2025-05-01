part of 'PrefManager.dart';

class PrefName {
  static const source = Pref(Location.General, 'source', 'ANILIST');

  //theme
  static const isDarkMode = Pref(Location.General, 'isDarkMode', 0);
  static const isOled = Pref(Location.General, 'isOled', false);
  static const useMaterialYou = Pref(Location.General, 'useMaterialYou', false);
  static const theme = Pref(Location.General, 'Theme', 'purple');
  static const customColor = Pref(Location.General, 'customColor', 4280391411);
  static const useCustomColor = Pref(Location.General, 'useCustomColor', false);
  static const showYtButton = Pref(Location.General, 'showYtButton', true);
  static const autoUpdateExtensions =
      Pref(Location.General, 'autoUpdateExtensions', true);

  //home page
  static const Pref<Map<dynamic, dynamic>> anilistHomeLayout =
      Pref(Location.General, 'homeLayoutOrder', {
    'Continue Watching': true,
    'Favourite Anime': false,
    'Planned Anime': false,
    'Continue Reading': true,
    'Favourite Manga': false,
    'Planned Manga': false,
    'Recommended': true,
  });

  static const Pref<Map<dynamic, dynamic>> malHomeLayout =
      Pref(Location.General, 'malHomeLayoutOrder', {
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
      Pref(Location.General, 'simklHomeLayoutOrder', {
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
      Pref(Location.General, 'extensionsHomeLayoutOrder', {
    'Continue Watching': true,
    'Planned Series': false,
    'Continue Reading': true,
    'Planned Manga': false,
  });
  static const Pref<List<int>> anilistRemoveList =
      Pref(Location.General, 'anilistRemoveList', []);
  static const Pref<List<int>> malRemoveList =
      Pref(Location.General, 'malRemoveList', []);
  static const anilistHidePrivate =
      Pref(Location.General, 'anilistHidePrivate', false);

  //anime page
  static const Pref<Map<dynamic, dynamic>> anilistAnimeLayout =
      Pref(Location.General, 'animeLayoutOrder', {
    'Recent Updates': true,
    'Trending Movies': true,
    'Top Rated Series': true,
    'Most Favourite Series': true,
  });

  static const Pref<Map<dynamic, dynamic>> malAnimeLayout =
      Pref(Location.General, 'malAnimeLayoutOrder', {
    'Top Airing': true,
    'Trending Movies': true,
    'Top Rated Series': true,
    'Most Favourite Series': true,
  });
  static const Pref<Map<dynamic, dynamic>> simklAnimeLayout =
      Pref(Location.General, 'simklAnimeLayoutOrder', {
    'Incoming': true,
    'Airing': true,
  });
  static const adultOnly = Pref(Location.General, 'adultOnly', false);
  static const includeAnimeList =
      Pref(Location.General, 'includeAnimeList', false);
  static const recentlyListOnly =
      Pref(Location.General, 'recentlyListOnly', false);
  static const NSFWExtensions = Pref(Location.General, 'NSFWExtensions', true);
  static const AnimeDefaultView = Pref(Location.General, 'AnimeDefaultView', 0);
  static const MangaDefaultView = Pref(Location.General, 'MangaDefaultView', 0);

  //manga page
  static const Pref<Map<dynamic, dynamic>> anilistMangaLayout =
      Pref(Location.General, 'mangaLayoutOrder', {
    'Trending Manhwa': true,
    'Trending Novels': true,
    'Top Rated Manga': true,
    'Most Favourite Manga': true,
  });

  static const Pref<Map<dynamic, dynamic>> malMangaLayout =
      Pref(Location.General, 'malMangaLayoutOrder', {
    'Trending Manhwa': true,
    'Trending Novels': true,
    'Top Rated Manga': true,
    'Most Favourite Manga': true,
  });
  static const Pref<Map<dynamic, dynamic>> simklMangaLayout =
      Pref(Location.General, 'simklMangaLayoutOrder', {
    'Incoming Shows': true,
    'Airing Shows': true,
  });
  static const includeMangaList =
      Pref(Location.General, 'includeMangaList', false);

  //
  static const unReadCommentNotifications =
      Pref(Location.General, 'unReadCommentNotifications', 0);
  static const incognito = Pref(Location.General, 'incognito', false);
  static const offlineMode = Pref(Location.General, 'offline', false);
  static const customPath = Pref(Location.General, 'customPath', '');
  static const defaultLanguage =
      Pref(Location.General, 'defaultLanguage', 'en');

  //Player
  static const cursedSpeed = Pref(Location.General, 'cursedSpeed', false);
  static const thumbLessSeekBar =
      Pref(Location.General, 'thumbLessSeekBar', false);
  static Pref<String> playerSettings = Pref(
      Location.General, 'playerSetting', jsonEncode(PlayerSettings().toJson()));
  static Pref<String> readerSettings = Pref(
      Location.General, 'readerSetting', jsonEncode(ReaderSettings().toJson()));

  //Protection
  static const anilistToken = Pref(Location.General, 'AnilistToken', '');
  static const Pref<ResponseToken?> malToken =
      Pref(Location.General, 'MalToken', null);
  static const simklToken = Pref(Location.General, 'SimklToken', '');
  static const discordToken = Pref(Location.General, 'DiscordToken', '');
  static const discordUserName = Pref(Location.General, 'discordUserName', '');
  static const discordAvatar = Pref(Location.General, 'discordAvatar', '');

  // irrelevant
  static const Pref<List<String>> GenresList =
      Pref(Location.Irrelevant, 'GenresList', []);
  static const Pref<List<String>> TagsListIsAdult =
      Pref(Location.Irrelevant, 'TagsListIsAdult', []);
  static const Pref<List<String>> TagsListNonAdult =
      Pref(Location.Irrelevant, 'TagsListNonAdult', []);
}
