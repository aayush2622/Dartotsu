part of '../AnilistQueries.dart';

extension on AnilistQueries {
  Future<Map<String, List<Media>>> _getMediaLists({
    required bool anime,
    required int userId,
    String? sortOrder,
  }) async {
    final response = await executeQuery<MediaListCollectionResponse>(
        _queryUser(userId, anime));

    final Map<String, List<Media>> sorted = {};

    (List<Media>, Map<String, List<Media>>) process(
        Map<String, dynamic> params) {
      final Map<String, List<Media>> unsorted = {};
      final List<Media> all = [];
      final List<int> allIds = [];
      final lists = params['lists'] as List<api.MediaListGroup>?;
      lists?.forEach((list) {
        var n = list.name;
        if (n == null) return;
        final name = n.trim();
        unsorted[name] = [];
        list.entries?.forEach((entry) {
          if (entry.media == null) return;
          final media = Media.mediaListData(entry);
          unsorted[name]!.add(media);
          if (!allIds.contains(media.id)) {
            allIds.add(media.id);
            all.add(media);
          }
        });
      });
      return (all, unsorted);
    }

    final lists = response?.data?.mediaListCollection?.lists;
    var (all, unsorted) = await compute(process, {'lists': lists});
    final options = response?.data?.mediaListCollection?.user?.mediaListOptions;
    final mediaList = anime ? options?.animeList : options?.mangaList;
    mediaList?.sectionOrder?.forEach((section) {
      if (unsorted.containsKey(section)) {
        sorted[section] = unsorted[section]!;
      }
    });

    unsorted.forEach((key, value) {
      if (!sorted.containsKey(key)) {
        sorted[key] = value;
      }
    });

    sorted['Favourites'] = await favMedia(anime, id: userId);
    //sorted['Favourites']?.sort((a, b) => a.userFavOrder.compareTo(b.userFavOrder));

    sorted['Favourites']?.forEach((fav) {
      final matchingMedia = all.firstWhereOrNull((m) => m.id == fav.id);
      if (matchingMedia != null) {
        fav.userProgress = matchingMedia.userProgress;
      }
    });

    sorted['All'] = all;

    /*final listSort = anime
        ? loadData(PrefName.AnimeListSortOrder)
        : loadData(PrefName.MangaListSortOrder);
    final sort = listSort ?? sortOrder ?? options?.rowOrder;

    sorted.forEach((key, list) {
      switch (sort) {
        case 'score':
          list.sort((a, b) =>
              compareMultiple([b.userScore, b.meanScore], [a.userScore, a.meanScore]));
          break;
        case 'title':
          list.sort((a, b) => a.userPreferredName.compareTo(b.userPreferredName));
          break;
        case 'updatedAt':
          list.sort((a, b) => b.userUpdatedAt.compareTo(a.userUpdatedAt));
          break;
        case 'release':
          list.sort((a, b) => b.startDate.compareTo(a.startDate));
          break;
        case 'id':
          list.sort((a, b) => a.id.compareTo(b.id));
          break;
      }
    });

    return sorted;*/
    return sorted;
  }

  Future<List<Media>> favMedia(bool anime, {int? id}) async {
    bool hasNextPage = true;
    int page = 0;
    id ??= Anilist.userid;

    Future<List<Media>> getNextPage(int page) async {
      final response = await executeQuery<UserListsResponse>(
          '''{${_favMediaQuery(anime, page, id: id)}}''');
      final favourites = response?.data?.user?.favourites;
      final apiMediaList = anime ? favourites?.anime : favourites?.manga;
      hasNextPage = apiMediaList?.pageInfo?.hasNextPage ?? false;
      List<Media> process(Map<String, dynamic> params) {
        var apiMediaList = params['list'] as api.MediaConnection?;
        return apiMediaList?.edges
                ?.map((e) {
                  if (e.node != null) {
                    var media = Media.mediaData(e.node!);
                    media.isFav = true;
                    return media;
                  }
                  return null;
                })
                .whereType<Media>()
                .toList() ??
            [];
      }

      return compute(process, {'list': apiMediaList});
    }

    List<Media> responseArray = [];
    while (hasNextPage) {
      page++;
      responseArray.addAll(await getNextPage(page));
    }
    return responseArray;
  }

  String _favMediaQuery(bool anime, int page, {int? id}) {
    id ??= Anilist.userid;
    return '''
    User(id:$id){
      id 
      favourites{
        ${anime ? "anime" : "manga"}(page:$page){
          pageInfo{
            hasNextPage
          }
          edges{
            favouriteOrder 
            node{
              id 
              idMal 
              isAdult 
              mediaListEntry{ 
                progress 
                private 
                score(format:POINT_100) 
                status 
              } 
              chapters 
              isFavourite 
              format 
              episodes 
              nextAiringEpisode{
                episode
              }
              meanScore 
              isFavourite 
              format 
              startDate{
                year 
                month 
                day
              } 
              title{
                english 
                romaji 
                userPreferred
              }
              type 
              status(version:2)
              bannerImage 
              coverImage{
                large
              }
            }
          }
        }
      }
    }
  ''';
  }

  String _queryUser(int userId, bool anime) {
    return '''
    {
      MediaListCollection(userId: $userId, type: ${anime ? "ANIME" : "MANGA"}) {
        lists {
          name
          isCustomList
          entries {
            status
            progress
            private
            score(format: POINT_100)
            updatedAt
            media {
              id
              idMal
              isAdult
              type
              status
              chapters
              episodes
              nextAiringEpisode {
                episode
              }
              bannerImage
              genres
              meanScore
              isFavourite
              format
              coverImage {
                large
              }
              startDate {
                year
                month
                day
              }
              title {
                english
                romaji
                userPreferred
              }
            }
          }
        }
        user {
          id
          mediaListOptions {
            rowOrder
            animeList {
              sectionOrder
            }
            mangaList {
              sectionOrder
            }
          }
        }
      }
    }
    ''';
  }
}
