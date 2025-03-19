part of '../Media.dart';

Media _fromMal(malApi.Media apiMedia) {
  String mapAiringStatus(String status) {
    switch (status) {
      case 'finished_airing':
        return 'FINISHED';
      case 'currently_airing':
        return 'RELEASING';
      case 'currently_publishing':
        return 'RELEASING';
      case 'not_yet_published':
        return 'NOT_YET_RELEASED';
      case 'not_yet_aired':
        return 'NOT_YET_RELEASED';
      default:
        return 'UNKNOWN';
    }
  }

  anilistApi.MediaType? getMediaType(String? mediaType) {
    anilistApi.MediaType type;
    if (['tv', 'ova', 'movie', 'special', 'ona', 'music'].contains(mediaType)) {
      type = anilistApi.MediaType.ANIME;
    } else if ([
      'unknown',
      'manga',
      'novel',
      'one_shot',
      'doujinshi',
      'manhwa',
      'manhua',
      'oel'
    ].contains(mediaType)) {
      type = anilistApi.MediaType.MANGA;
    } else {
      type = anilistApi.MediaType.ANIME;
    }
    return type;
  }

  return Media(
    id: apiMedia.id!,
    idAnilist:
        GetMediaIDs.fromID(type: AnimeIDType.malId, id: apiMedia.id)?.anilistId,
    idKitsu: GetMediaIDs.fromID(type: AnimeIDType.malId, id: apiMedia.id)
        ?.kitsuId
        ?.toString(),
    idMAL: apiMedia.id,
    name: apiMedia.title ?? '',
    nameRomaji: apiMedia.alternativeTitles?.ja ?? apiMedia.title ?? '',
    userPreferredName: apiMedia.title ?? '',
    cover: apiMedia.mainPicture?.medium ?? '',
    banner: apiMedia.mainPicture?.large ?? apiMedia.mainPicture?.medium ?? '',
    status: mapAiringStatus(apiMedia.status ?? ''),
    isAdult: apiMedia.nsfw == 'black',
    userStatus: apiMedia.myListStatus?.status,
    userProgress: apiMedia.myListStatus?.numEpisodesWatched ??
        apiMedia.myListStatus?.numChaptersRead,
    userScore: ((apiMedia.myListStatus?.score ?? 0) * 10).toInt(),
    meanScore: ((apiMedia.mean ?? 0) * 10).toInt(),
    genres: apiMedia.genres?.map((genre) => genre.name ?? '').toList() ?? [],
    format: apiMedia.mediaType,
    anime: getMediaType(apiMedia.mediaType) == anilistApi.MediaType.ANIME
        ? Anime(
            totalEpisodes:
                apiMedia.numEpisodes != 0 ? apiMedia.numEpisodes : null,
          )
        : null,
    manga: getMediaType(apiMedia.mediaType) == anilistApi.MediaType.MANGA
        ? Manga(
            totalChapters:
                apiMedia.numChapters != 0 ? apiMedia.numChapters : null,
          )
        : null,
  );
}
