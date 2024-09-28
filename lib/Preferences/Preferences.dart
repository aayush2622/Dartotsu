import 'PrefManager.dart';

class PrefName {
  //theme
  static const Pref<bool> isDarkMode =
      Pref(Location.General, 'isDarkMode', false);
  static const Pref<bool> isOled = Pref(Location.General, 'isOled', false);
  static const Pref<bool> useMaterialYou =
      Pref(Location.General, 'useMaterialYou', false);
  static const Pref<String> theme = Pref(Location.General, 'Theme', 'purple');
  static const Pref<int> customColor =
      Pref(Location.General, 'customColor', 4280391411);
  static const Pref<bool> useCustomColor =
      Pref(Location.General, 'useCustomColor', false);
  static const Pref<bool> showYtButton =
  Pref(Location.General, 'showYtButton', true);
  //home page
  static const Pref<Map<String, bool>> homeLayout =
      Pref(Location.General, 'homeLayoutOrder', {
    'Continue Watching': true,
    'Favourite Anime': false,
    'Planned Anime': false,
    'Continue Reading': true,
    'Favourite Manga': false,
    'Planned Manga': false,
    'Recommended': true,
  });
  static const Pref<Set<int>> removeList =
      Pref(Location.General, 'removeList', {});

  //anime page
  static const Pref<Map<String, bool>> animeLayout =
      Pref(Location.General, 'animeLayoutOrder', {
    'Recent Updates': true,
    'Trending Movies': true,
    'Top Rated Series': true,
    'Most Favourite Series': true,
  });
  static const Pref<bool> adultOnly =
      Pref(Location.General, 'adultOnly', false);
  static const Pref<bool> includeAnimeList =
      Pref(Location.General, 'includeAnimeList', false);
  static const Pref<bool> recentlyListOnly =
      Pref(Location.General, 'recentlyListOnly', false);
  static const Pref<bool> NSFWExtensions =
      Pref(Location.General, 'NSFWExtensions', true);

  //manga page
  static const Pref<Map<String, bool>> mangaLayout =
      Pref(Location.General, 'mangaLayoutOrder', {
    'Trending Manhwa': true,
    'Trending Novels': true,
    'Top Rated Manga': true,
    'Most Favourite Manga': true,
  });
  static const Pref<bool> includeMangaList =
      Pref(Location.General, 'includeMangaList', false);

  //
  static const Pref<int> unReadCommentNotifications =
      Pref(Location.General, 'unReadCommentNotifications', 0);
  static const Pref<bool> incognito =
      Pref(Location.General, 'incognito', false);
  static const Pref<bool> offlineMode =
      Pref(Location.General, 'offline', false);

  //Protection
  static const Pref<String> anilistToken =
      Pref(Location.Protected, 'AnilistToken', '');
  static const Pref<String> malToken =
      Pref(Location.Protected, 'MalToken', '');
  static const Pref<String> discordToken =
      Pref(Location.Protected, 'DiscordToken', '');
  static const Pref<String> discordUserName =
      Pref(Location.Protected, 'discordUserName', '');
  static const Pref<String> discordAvatar =
      Pref(Location.Protected, 'discordAvatar', '');
}
