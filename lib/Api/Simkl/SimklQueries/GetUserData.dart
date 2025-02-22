part of '../SimklQueries.dart';

extension on SimklQueries {
  Future<bool> _getUserData() async {
    if (Simkl.isInitialized.value == true) {
      return true;
    }
    if (Simkl.run.value == false) {
      while (Simkl.isInitialized.value == false) {
        await Future.delayed(const Duration(milliseconds: 100));
      }
      return true;
    }
    Simkl.run.value = false;
    var user =
        (await executeQuery<User>('https://api.simkl.com/users/settings'));
    if (user == null) return false;

    var res = (await executeQuery<Stats>(
        'https://api.simkl.com/users/${user.account?.id}/stats'));
    Simkl.userid = user.account?.id;
    Simkl.username.value = user.user?.name ?? '';
    Simkl.bg = user.user?.avatar ?? '';
    Simkl.avatar.value = user.user?.avatar ?? '';
    Simkl.episodesWatched = res?.anime?.completed?.watchedEpisodesCount;
    Simkl.chapterRead = res?.tv?.completed?.watchedEpisodesCount;
    Simkl.adult = false;
    Simkl.unreadNotificationCount = 0;
    Simkl.isInitialized.value = true;
    return true;
  }
}
