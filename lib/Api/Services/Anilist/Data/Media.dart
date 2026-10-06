import '../../../../Core/Services/Model/Media.dart';

/// AniList carries a few fields the shared [Media] doesn't need. The subclass is
/// never serialized — only the base [Media] is.
class AnilistMedia extends Media {
  int? idMal;
  Map<String, bool> inCustomListsOf;
  int? userFavOrder;

  AnilistMedia({
    required super.id,
    this.idMal,
    Map<String, bool>? inCustomListsOf,
    this.userFavOrder,
    super.anime,
    super.manga,
    super.name,
    super.nameRomaji,
    super.userPreferredName,
    super.cover,
    super.banner,
    super.relation,
    super.favourites,
    super.minimal = false,
    super.isAdult = false,
    super.isFav = false,
    super.userListId,
    super.isListPrivate = false,
    super.notes,
    super.userProgress,
    super.userStatus,
    super.userScore = 0,
    super.userRepeat = 0,
    super.userUpdatedAt,
    super.userStartedAt,
    super.userCompletedAt,
    super.status,
    super.format,
    super.source,
    super.countryOfOrigin,
    super.meanScore,
    super.genres = const [],
    super.tags = const [],
    super.description,
    super.synonyms = const [],
    super.trailer,
    super.startDate,
    super.endDate,
    super.popularity,
    super.timeUntilAiring,
    required super.shareLink,
  }) : inCustomListsOf = inCustomListsOf ?? {};
}
