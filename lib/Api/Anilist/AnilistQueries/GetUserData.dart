part of '../AnilistQueries.dart';

extension on AnilistQueries {
  Future<bool> _getUserData() async {
    if (Anilist.isInitialized.value == true) {
      return true;
    }
    if (Anilist.run.value == false) {
      while (Anilist.isInitialized.value == false) {
        await Future.delayed(const Duration(milliseconds: 100));
      }
      return true;
    }
    Anilist.run.value = false;
    var response = (await executeQuery<ViewerResponse>(_queryUser));
    var user = response?.data?.user;
    if (user == null) return false;

    Anilist.userid = user.id;
    Anilist.username.value = user.name ?? '';
    Anilist.bg = user.bannerImage;
    Anilist.avatar.value = user.avatar?.medium ?? '';
    Anilist.episodesWatched = user.statistics?.anime?.episodesWatched;
    Anilist.chapterRead = user.statistics?.manga?.chaptersRead;
    Anilist.adult = user.options?.displayAdultContent ?? false;
    //Anilist.unreadNotificationCount = user.unreadNotificationCount ?? 0;
    final unread = loadData(PrefName.unReadCommentNotifications);
    Anilist.unreadNotificationCount += unread;
    Anilist.isInitialized.value = true;

    final options = user.options;
    if (options != null) {
      Anilist.titleLanguage = options.titleLanguage?.name;
      Anilist.staffNameLanguage = options.staffNameLanguage?.name;
      Anilist.airingNotifications = options.airingNotifications ?? false;
      Anilist.restrictMessagesToFollowing =
          options.restrictMessagesToFollowing ?? false;
      Anilist.timezone = options.timezone;
      Anilist.activityMergeTime = options.activityMergeTime;
    }
    final mediaListOptions = user.mediaListOptions;
    if (mediaListOptions != null) {
      Anilist.scoreFormat = mediaListOptions.scoreFormat;
      Anilist.rowOrder = mediaListOptions.rowOrder;
      Anilist.animeCustomLists = mediaListOptions.animeList?.customLists;
      Anilist.mangaCustomLists = mediaListOptions.mangaList?.customLists;
    }
    return true;
  }
}

String _queryUser = '''{
  Viewer {
    name 
    options {
      timezone 
      titleLanguage 
      staffNameLanguage 
      activityMergeTime 
      airingNotifications 
      displayAdultContent 
      restrictMessagesToFollowing
    } 
    avatar {
      medium
    } 
    bannerImage 
    id 
    mediaListOptions {
      scoreFormat 
      rowOrder 
      animeList {
        customLists
      } 
      mangaList {
        customLists
      }
    } 
    statistics {
      anime {
        episodesWatched
      } 
      manga {
        chaptersRead
      }
    } 
    unreadNotificationCount
  }
}''';
