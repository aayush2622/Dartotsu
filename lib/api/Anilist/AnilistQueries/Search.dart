part of '../AnilistQueries.dart';

extension on AnilistQueries {
  Future<SearchResults?> _search(SearchResults? searchResults) async {
    if (searchResults == null) return null;
    searchResults.type = searchResults.type.toUpperCase();
    var adultOnly = PrefManager.getVal(PrefName.adultOnly);
    final Map<String, dynamic> variables = {
      "type": searchResults.type,
      if (searchResults.isAdult == true) "isAdult": searchResults.isAdult,
      if (adultOnly) "isAdult": true,
      if (searchResults.onList != null) "onList": searchResults.onList,
      if (searchResults.page != null) "page": searchResults.page,
      if (searchResults.id != null) "id": searchResults.id,
      if (searchResults.type == "ANIME" && searchResults.seasonYear != null)
        "seasonYear": searchResults.seasonYear,
      if (searchResults.type == "MANGA" && searchResults.startYear != null)
        "yearGreater": searchResults.startYear! * 10000,
      if (searchResults.type == "MANGA" && searchResults.startYear != null)
        "yearLesser": (searchResults.startYear! + 1) * 10000,
      if (searchResults.season != null) "season": searchResults.season,
      if (searchResults.search != null) "search": searchResults.search,
      if (searchResults.source != null) "source": searchResults.source,
      if (searchResults.sort != null) "sort": searchResults.sort,
      if (searchResults.status != null) "status": searchResults.status,
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
            force: true))
        ?.data
        ?.page;
    if (response?.media != null) {
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
        mediaInfo.relation = (searchResults.onList == true) ? userStatus : null;
        mediaInfo.genres = genresArr;

        responseArray.add(mediaInfo);
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
