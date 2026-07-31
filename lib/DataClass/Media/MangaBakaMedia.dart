part of '../Media.dart';

Media _fromMangaBaka(MangaBakaSeries series, {MangaBakaLibraryEntry? libraryEntry}) {
  final cover = series.coverUrl;
  return Media(
    id: series.id,
    idMangaBaka: series.id,
    idAnilist: series.anilistId,
    idMAL: series.malId,
    name: series.title,
    nameRomaji: series.title,
    userPreferredName: series.title,
    cover: cover,
    banner: cover,
    description: series.description,
    userProgress: libraryEntry?.progressChapter?.toInt(),
    userStatus: libraryEntry?.state?.toAnilistStatus(),
    userScore: libraryEntry?.rating != null ? libraryEntry!.rating! * 10 : 0,
    meanScore: series.rating != null ? (series.rating! * 10).toInt() : null,
    status: series.status.toAnilistStatus,
    format: series.type == MangaBakaType.novel ? 'novel' : 'manga',
    manga: Manga(
      totalChapters: int.tryParse(series.totalChapters ?? ''),
    ),
    isAdult: false,
  );
}
