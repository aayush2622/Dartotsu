part of '../AnilistQueries.dart';

extension Search on AnilistQueries {
  Future<SearchResults?> _search({
    required String type,
    int? page,
    int? perPage,
    String? search,
    String? sort,
    List<String>? genres,
    List<String>? tags,
    String? status,
    String? source,
    String? format,
    String? countryOfOrigin,
    bool isAdult = false,
    bool? onList,
    List<String>? excludedGenres,
    List<String>? excludedTags,
    int? startYear,
    int? seasonYear,
    String? season,
    int? id,
    bool hd = false,
    bool adultOnly = false,
  }) async {
    final Map<String, dynamic> variables = {
      "type": type,
      "isAdult": isAdult,
      if (adultOnly) "isAdult": true,
      if (onList != null) "onList": onList,
      if (page != null) "page": page,
      if (id != null) "id": id,
      if (type == "ANIME" && seasonYear != null) "seasonYear": seasonYear,
      if (type == "MANGA" && startYear != null)
        "yearGreater": startYear * 10000,
      if (type == "MANGA" && startYear != null)
        "yearLesser": (startYear + 1) * 10000,
      if (season != null) "season": season,
      if (search != null) "search": search,
      if (source != null) "source": source,
      if (sort != null) "sort": sort,
      if (status != null) "status": status,
      if (format != null) "format": format.replaceAll(" ", "_"),
      if (countryOfOrigin != null) "countryOfOrigin": countryOfOrigin,
      if (genres != null && genres.isNotEmpty) "genres": genres,
      if (excludedGenres != null && excludedGenres.isNotEmpty)
        "excludedGenres":
            excludedGenres.map((g) => g.replaceAll("Not ", "")).toList(),
      if (tags != null && tags.isNotEmpty) "tags": tags,
      if (excludedTags != null && excludedTags.isNotEmpty)
        "excludedTags":
            excludedTags.map((t) => t.replaceAll("Not ", "")).toList(),
    };

    final response = (await executeQuery<PageResponse>(_querySearch(perPage),
            variables: jsonEncode(variables), force: true))
        ?.data
        ?.page;
    if (response?.media != null) {
      List<media> responseArray = [];

      response?.media?.forEach((i) {
        String userStatus = i.mediaListEntry?.status?.name ?? '';

        List<String> genresArr = [];
        i.genres?.forEach((genre) {
          genresArr.add(genre);
        });

        media mediaInfo = mediaData(i);
        if (!hd) mediaInfo.cover = i.coverImage?.large ?? '';
        mediaInfo.relation = (onList == true) ? userStatus : null;
        mediaInfo.genres = genresArr;

        responseArray.add(mediaInfo);
      });

      var pageInfo = response?.pageInfo;
      if (pageInfo == null) return null;

      return SearchResults(
        type: type,
        perPage: perPage,
        search: search,
        sort: sort,
        isAdult: isAdult,
        onList: onList,
        genres: genres,
        excludedGenres: excludedGenres,
        tags: tags,
        excludedTags: excludedTags,
        status: status,
        source: source,
        format: format,
        countryOfOrigin: countryOfOrigin,
        startYear: startYear,
        seasonYear: seasonYear,
        season: season,
        results: responseArray,
        page: pageInfo.currentPage ?? 0,
        hasNextPage: pageInfo.hasNextPage == true,
      );
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
