part of '../MalQueries.dart';

extension on MalQueries {
  Future<bool> _getUserData() async {
    if (Mal.isInitialized.value == true) {
      return true;
    }
    if (Mal.run.value == false) {
      while (Mal.isInitialized.value == false) {
        await Future.delayed(const Duration(milliseconds: 100));
      }
      return true;
    }
    Mal.run.value = false;
    var user = (await executeQuery<User>(
        '${MalStrings.endPoint}users/@me?fields=anime_statistics,manga_statistics'));
    if (user == null) return false;

    var res = (await executeQuery<UserData>(
            'https://api.jikan.moe/v4/users/${user.name}/full'))
        ?.data;
    Mal.userid = user.id;
    Mal.username.value = user.name ?? '';
    Mal.bg = user.picture ?? '';
    Mal.avatar.value = user.picture ?? '';
    Mal.episodesWatched = res?.statistics?.anime?.episodesWatched;
    Mal.chapterRead = res?.statistics?.manga?.chaptersRead;
    Mal.adult = false;
    Mal.unreadNotificationCount = 0;
    Mal.isInitialized.value = true;
    return true;
  }
}
