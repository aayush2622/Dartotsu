part of '../AnilistQueries.dart';

extension on AnilistQueries {
  Future<SearchResults?> _search(SearchResults? searchResults) async {
    if (searchResults == null) return null;
    switch (searchResults.type) {
      case SearchType.ANIME:
      case SearchType.MANGA:
        return await _searchMediaResults(searchResults);
      case SearchType.CHARACTER:
        return await _searchCharacterResults(searchResults);
      case SearchType.STAFF:
        return await _searchStaffResults(searchResults);
      case SearchType.STUDIO:
        return await _searchStudioResults(searchResults);
      case SearchType.USER:
        return await _searchUserResults(searchResults);
      default:
        return null;
    }
  }

  Future<SearchResults?> _searchMediaResults(
      SearchResults searchResults) async {
    var adultOnly = loadData(PrefName.adultOnly);
    final Map<String, dynamic> variables = {
      "type": searchResults.type.name.toUpperCase(),
      if (searchResults.isAdult == true) "isAdult": searchResults.isAdult,
      if (adultOnly) "isAdult": true,
      if (searchResults.onList != null) "onList": searchResults.onList,
      if (searchResults.page != null) "page": searchResults.page,
      if (searchResults.id != null) "id": searchResults.id,
      if (searchResults.type.name == "ANIME" &&
          searchResults.seasonYear != null)
        "seasonYear": searchResults.seasonYear,
      if (searchResults.type.name == "MANGA" && searchResults.startYear != null)
        "yearGreater": searchResults.startYear! * 10000,
      if (searchResults.type.name == "MANGA" && searchResults.startYear != null)
        "yearLesser": (searchResults.startYear! + 1) * 10000,
      if (searchResults.season != null) "season": searchResults.season,
      if (searchResults.search != null) "search": searchResults.search,
      if (searchResults.source != null)
        "source": searchResults.source?.replaceAll(" ", "_"),
      if (searchResults.sort != null) "sort": searchResults.sort,
      if (searchResults.status != null)
        "status": searchResults.status?.replaceAll(" ", "_"),
      if (searchResults.format != null)
        "format": searchResults.format?.replaceAll(" ", "_"),
      if (searchResults.countryOfOrigin != null)
        "countryOfOrigin": searchResults.countryOfOrigin,
      if (searchResults.genres != null && searchResults.genres!.isNotEmpty)
        "genres": searchResults.genres,
      if (searchResults.excludedGenres != null &&
          searchResults.excludedGenres!.isNotEmpty)
        "excludedGenres": searchResults.excludedGenres
            ?.map((g) => g.replaceAll("Not ", ""))
            .toList(),
      if (searchResults.tags != null && searchResults.tags?.isNotEmpty == true)
        "tags": searchResults.tags,
      if (searchResults.excludedTags != null &&
          searchResults.excludedTags?.isNotEmpty == true)
        "excludedTags": searchResults.excludedTags
            ?.map((t) => t.replaceAll("Not ", ""))
            .toList(),
    };
    final response = (await executeQuery<PageResponse>(
      _querySearch(searchResults.perPage),
      variables: jsonEncode(variables),
      force: true,
    ))
        ?.data
        ?.page;

    if (response?.media != null) {
      List<Media> processMediaListInIsolate(Map<String, dynamic> params) {
        final response = params['response'] as Page?;
        final searchResults = params['searchResults'];

        List<Media> responseArray = [];

        response?.media?.forEach((i) {
          String userStatus = i.mediaListEntry?.status?.name ?? '';

          List<String> genresArr = [];
          i.genres?.forEach((genre) {
            genresArr.add(genre);
          });

          Media mediaInfo = Media.mediaData(i);
          if (!(searchResults.hdCover ?? false)) {
            mediaInfo.cover = i.coverImage?.large ?? '';
          }
          mediaInfo.relation =
              (searchResults.onList == true) ? userStatus : null;
          mediaInfo.genres = genresArr;

          responseArray.add(mediaInfo);
        });

        return responseArray;
      }

      List<Media> responseArray = await compute(processMediaListInIsolate, {
        'response': response,
        'searchResults': searchResults,
      });

      var pageInfo = response?.pageInfo;
      if (pageInfo == null) return null;

      return searchResults
        ..results = responseArray
        ..page = pageInfo.currentPage ?? 0
        ..hasNextPage = pageInfo.hasNextPage == true;
    }
    return null;
  }

  Future<SearchResults?> _searchCharacterResults(
      SearchResults searchResults) async {
    return _searchResults(
      searchResults: searchResults,
      queryType: 'characters',
      buildFields: () => _characterInformation(false),
      processResponse: (Page? response) {
        return response?.characters?.map((i) {
              return character(
                id: i.id,
                name: i.name?.full,
                image: i.image?.medium ?? i.image?.large,
                isFav: i.isFavourite ?? false,
                description: i.description,
                age: i.age,
                gender: i.gender,
                dateOfBirth: i.dateOfBirth,
              );
            }).toList() ??
            [];
      },
      updateSearchResults: (results, array) =>
          results.characters = array as List<character>?,
    );
  }

  Future<SearchResults?> _searchStaffResults(
      SearchResults searchResults) async {
    return _searchResults(
      searchResults: searchResults,
      queryType: 'staff',
      buildFields: () => _staffInformation(
          searchResults.page ?? 1, searchResults.perPage ?? 50),
      processResponse: (Page? response) {
        return response?.staff?.map((i) {
              return author(
                id: i.id,
                name: i.name?.userPreferred ?? '',
                image: i.image?.medium ?? i.image?.large,
              );
            }).toList() ??
            [];
      },
      updateSearchResults: (results, array) =>
          results.staff = array as List<author>?,
    );
  }

  Future<SearchResults?> _searchStudioResults(
      SearchResults searchResults) async {
    return _searchResults(
      searchResults: searchResults,
      queryType: 'studios',
      buildFields: () => _studioInformation(
          searchResults.page ?? 1, searchResults.perPage ?? 50),
      processResponse: (Page? response) {
        return response?.studios?.map((i) {
              return studio(
                id: i.id,
                name: i.name,
                isFavourite: i.isFavourite ?? false,
                favourites: i.favourites,
                imageUrl: i.media?.edges?.firstOrNull?.node?.coverImage?.large,
              );
            }).toList() ??
            [];
      },
      updateSearchResults: (results, array) =>
          results.studios = array as List<studio>?,
    );
  }

  Future<SearchResults?> _searchUserResults(SearchResults searchResults) async {
    return _searchResults(
      searchResults: searchResults,
      queryType: 'users',
      buildFields: () => _userInformation(),
      processResponse: (Page? response) {
        return response?.users?.map((i) {
              return userData(
                id: i.id,
                name: i.name ?? '',
                pfp: i.avatar?.medium ?? i.avatar?.large,
                banner: i.bannerImage,
              );
            }).toList() ??
            [];
      },
      updateSearchResults: (results, array) =>
          results.users = array as List<userData>?,
    );
  }

  Future<SearchResults?> _searchResults({
    required SearchResults searchResults,
    required String queryType,
    required String Function() buildFields,
    required List<dynamic> Function(Page?) processResponse,
    required Function(SearchResults, List<dynamic>) updateSearchResults,
  }) async {
    final response = (await executeQuery<PageResponse>("""
      {
        Page(page: ${searchResults.page ?? 1}, perPage: ${searchResults.perPage ?? 50}) {
          $_standardPageInformation
          $queryType(search: "${searchResults.search ?? ''}") {
            ${buildFields()}
          }
        }
      }
    """, force: true))?.data?.page;

    if (response != null) {
      List<dynamic> responseArray =
          await compute((Map<String, dynamic> params) {
        final response = params['response'] as Page?;
        return processResponse(response);
      }, {'response': response});

      var pageInfo = response.pageInfo;
      if (pageInfo == null) return null;

      updateSearchResults(searchResults, responseArray);
      searchResults
        ..page = pageInfo.currentPage ?? 0
        ..hasNextPage = pageInfo.hasNextPage == true;

      return searchResults;
    }
    return null;
  }
}

String _querySearch(int? perPage) => """
query (\$page: Int = 1, \$id: Int, \$type: MediaType, \$isAdult: Boolean = false, \$search: String, \$format: [MediaFormat], \$status: MediaStatus, \$countryOfOrigin: CountryCode, \$source: MediaSource, \$season: MediaSeason, \$seasonYear: Int, \$year: String, \$onList: Boolean, \$yearLesser: FuzzyDateInt, \$yearGreater: FuzzyDateInt, \$episodeLesser: Int, \$episodeGreater: Int, \$durationLesser: Int, \$durationGreater: Int, \$chapterLesser: Int, \$chapterGreater: Int, \$volumeLesser: Int, \$volumeGreater: Int, \$licensedBy: [String], \$isLicensed: Boolean, \$genres: [String], \$excludedGenres: [String], \$tags: [String], \$excludedTags: [String], \$minimumTagRank: Int, \$sort: [MediaSort] = [POPULARITY_DESC, SCORE_DESC, START_DATE_DESC]) {
  Page(page: \$page, perPage: ${perPage ?? 50}) {
    pageInfo {
      total
      perPage
      currentPage
      lastPage
      hasNextPage
    }
    media(id: \$id, type: \$type, season: \$season, format_in: \$format, status: \$status, countryOfOrigin: \$countryOfOrigin, source: \$source, search: \$search, onList: \$onList, seasonYear: \$seasonYear, startDate_like: \$year, startDate_lesser: \$yearLesser, startDate_greater: \$yearGreater, episodes_lesser: \$episodeLesser, episodes_greater: \$episodeGreater, duration_lesser: \$durationLesser, duration_greater: \$durationGreater, chapters_lesser: \$chapterLesser, chapters_greater: \$chapterGreater, volumes_lesser: \$volumeLesser, volumes_greater: \$volumeGreater, licensedBy_in: \$licensedBy, isLicensed: \$isLicensed, genre_in: \$genres, genre_not_in: \$excludedGenres, tag_in: \$tags, tag_not_in: \$excludedTags, minimumTagRank: \$minimumTagRank, sort: \$sort, isAdult: \$isAdult) {
      id
      idMal
      isAdult
      status
      chapters
      episodes
      nextAiringEpisode {
        episode
      }
      type
      genres
      meanScore
      isFavourite
      format
      bannerImage
      coverImage {
        large
        extraLarge
      }
      title {
        english
        romaji
        userPreferred
      }
      mediaListEntry {
        progress
        private
        score(format: POINT_100)
        status
      }
    }
  }
}
""";
var _standardPageInformation = """
  pageInfo {
    total
    perPage
    currentPage
    lastPage
    hasNextPage
  }
""";

String _characterInformation(bool includeMediaInfo) => """
    id
    name {
      first
      middle
      last
      full
      native
      userPreferred
    }
    image {
      large
      medium
    }
    age
    gender
    description
    dateOfBirth {
      year
      month
      day
    }
    ${includeMediaInfo ? """
    media(page: 0,sort:[POPULARITY_DESC,SCORE_DESC]) {
      $_standardPageInformation
      edges {
        id
        voiceActors {
          id,
          name {
            userPreferred
          }
          languageV2,
          image {
            medium,
            large
          }
        }
        characterRole
        node {
          id
          idMal
          isAdult
          status
          chapters
          episodes
          nextAiringEpisode { episode }
          type
          meanScore
          isFavourite
          format
          bannerImage
          countryOfOrigin
          coverImage { large }
          title {
              english
              romaji
              userPreferred
          }
          mediaListEntry {
              progress
              private
              score(format: POINT_100)
              status
          }
        }
      }
    }""" : ""}
""";

String _staffInformation(int page, int perPage) => """
    id
    name {
      first
      middle
      last
      full
      native
      userPreferred
    }
    image {
      large
      medium
    }
    dateOfBirth {
      year
      month
      day
    }
    dateOfDeath {
      year
      month
      day
    }
    age
    yearsActive
    homeTown
    staffMedia(page: $page,sort:START_DATE_DESC, perPage: $perPage) {
      $_standardPageInformation
      edges {
        staffRole
        id
        node {
          id
          idMal
          isAdult
          status
          chapters
          episodes
          nextAiringEpisode { episode }
          type
          meanScore
          startDate{ year }
          isFavourite
          format
          bannerImage
          countryOfOrigin
          coverImage { large }
          title {
              english
              romaji
              userPreferred
          }
          mediaListEntry {
              progress
              private
              score(format: POINT_100)
              status
          }
        }
      }
    }
""";

String _studioInformation(int page, int perPage) => """
    id
    name
    isFavourite
    favourites
    media(page: $page, sort:START_DATE_DESC, perPage: $perPage) {
      $_standardPageInformation
      edges {
        id
        node {
          id
          idMal
          isAdult
          status
          chapters
          episodes
          nextAiringEpisode { episode }
          type
          meanScore
          startDate{ year }
          isFavourite
          format
          bannerImage
          countryOfOrigin
          coverImage { large }
          title {
              english
              romaji
              userPreferred
          }
          mediaListEntry {
              progress
              private
              score(format: POINT_100)
              status
          }
        }
      }
    }
""";

String _userInformation() => """
    id
    name
    about(asHtml: true)
    avatar {
      large
      medium
    }
    bannerImage
    isFollowing
    isFollower
    isBlocked
    siteUrl
""";
