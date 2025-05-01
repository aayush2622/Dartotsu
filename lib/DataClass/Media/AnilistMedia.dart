part of '../Media.dart';

Media _mediaData(anilistApi.Media apiMedia) {
  return Media(
    id: apiMedia.id,
    idAnilist: apiMedia.id,
    idMAL: apiMedia.idMal ??
        GetMediaIDs.fromID(type: AnimeIDType.anilistId, id: apiMedia.id)?.malId,
    idKitsu: GetMediaIDs.fromID(type: AnimeIDType.anilistId, id: apiMedia.id)
        ?.kitsuId
        ?.toString(),
    name: apiMedia.title?.english,
    nameRomaji: apiMedia.title?.romaji ?? '',
    userPreferredName: apiMedia.title?.userPreferred ?? '',
    cover: apiMedia.coverImage?.large ?? apiMedia.coverImage?.medium,
    banner: apiMedia.bannerImage,
    status: apiMedia.status?.name,
    isFav: apiMedia.isFavourite ?? false,
    isAdult: apiMedia.isAdult ?? false,
    isListPrivate: apiMedia.mediaListEntry?.private ?? false,
    userProgress: apiMedia.mediaListEntry?.progress,
    userScore: apiMedia.mediaListEntry?.score?.toInt() ?? 0,
    userStatus: apiMedia.mediaListEntry?.status?.name,
    meanScore: apiMedia.meanScore,
    startDate: apiMedia.startDate,
    endDate: apiMedia.endDate,
    favourites: apiMedia.favourites,
    popularity: apiMedia.popularity,
    format: apiMedia.format?.name,
    genres: apiMedia.genres ?? [],
    timeUntilAiring:
        (apiMedia.nextAiringEpisode?.timeUntilAiring?.toInt() ?? 0) * 1000,
    anime: apiMedia.type == anilistApi.MediaType.ANIME
        ? Anime(
            totalEpisodes: apiMedia.episodes,
            nextAiringEpisode:
                (apiMedia.nextAiringEpisode?.episode?.toInt() ?? 0) - 1,
          )
        : null,
    manga: apiMedia.type == anilistApi.MediaType.MANGA
        ? Manga(totalChapters: apiMedia.chapters)
        : null,
  );
}

Media _mediaEdgeData(anilistApi.MediaEdge apiMediaEdge) {
  var media = _mediaData(apiMediaEdge.node!);
  media.relation = apiMediaEdge.relationType?.name;
  return media;
}

Media _mediaListData(anilistApi.MediaList mediaList) {
  var media = _mediaData(mediaList.media!);
  media.userProgress = mediaList.progress;
  media.isListPrivate = mediaList.private ?? false;
  media.userScore = mediaList.score?.toInt() ?? 0;
  media.userStatus = mediaList.status?.name;
  media.userUpdatedAt = mediaList.updatedAt;
  media.genres = mediaList.media?.genres ?? [];
  return media;
}
