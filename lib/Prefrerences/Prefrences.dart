import 'package:dantotsu/Prefrerences/PrefManager.dart';

class PrefName {

  //theme
  static const Pref<bool> isDarkMode = Pref('isDarkMode', false);
  static const Pref<bool> isOled = Pref('isOled', false);
  static const Pref<bool> useMaterialYou = Pref('useMaterialYou', false);
  static const Pref<String> theme = Pref('Theme', 'purple');
  static const Pref<int> customColor = Pref('customColor', 4280391411);
  static const Pref<bool> useCustomColor = Pref('useCustomColor', false);

  //home page
  static const Pref<List<bool>> homeLayout = Pref('homeLayout', [true, false, false, true, false, false, true, true]);
  static const Pref<Set<int>> removeList = Pref('removeList', {});

  //anime page
  static const Pref<bool> adultOnly = Pref('adultOnly', false);
  static const Pref<bool> includeAnimeList = Pref('includeAnimeList', false);
  static const Pref<bool> recentlyListOnly = Pref('recentlyListOnly', false);

  //manga page
  static const Pref<bool> includeMangaList = Pref('includeMangaList', false);
  static const Pref<int> unReadCommentNotifications = Pref('unReadCommentNotifications', 0);
  static const Pref<bool> incognito = Pref('incognito', false);
  static const Pref<bool> offlineMode = Pref('offline', false);
  static const Pref<String> anilistToken = Pref('AnilistToken', '');
}

