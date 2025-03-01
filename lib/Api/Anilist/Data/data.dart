import 'package:dartotsu/Api/Anilist/Data/page.dart';
import 'package:dartotsu/Api/Anilist/Data/user.dart';
import 'package:json_annotation/json_annotation.dart';

import 'media.dart';

part 'Generated/data.g.dart';

@JsonSerializable()
class UserListsResponse {
  @JsonKey(name: 'data')
  final UserListsData? data;

  UserListsResponse({this.data});

  factory UserListsResponse.fromJson(Map<String, dynamic> json) =>
      _$UserListsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserListsResponseToJson(this);
}

@JsonSerializable()
class UserListsData {
  @JsonKey(name: 'User')
  final User? user;

  UserListsData({this.user});

  factory UserListsData.fromJson(Map<String, dynamic> json) =>
      _$UserListsDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserListsDataToJson(this);
}

@JsonSerializable()
class UserListResponse {
  @JsonKey(name: 'data')
  final UserListData? data;

  UserListResponse({this.data});

  factory UserListResponse.fromJson(Map<String, dynamic> json) =>
      _$UserListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserListResponseToJson(this);
}

@JsonSerializable()
class UserListData {
  MediaListCollection? currentAnime;
  MediaListCollection? repeatingAnime;
  User? favoriteAnime;
  MediaListCollection? plannedAnime;
  MediaListCollection? currentManga;
  MediaListCollection? repeatingManga;
  User? favoriteManga;
  MediaListCollection? plannedManga;
  Page? recommendationQuery;
  MediaListCollection? recommendationPlannedQueryAnime;
  MediaListCollection? recommendationPlannedQueryManga;

  UserListData({
    this.currentAnime,
    this.repeatingAnime,
    this.favoriteAnime,
    this.plannedAnime,
    this.currentManga,
    this.repeatingManga,
    this.favoriteManga,
    this.plannedManga,
    this.recommendationQuery,
    this.recommendationPlannedQueryAnime,
    this.recommendationPlannedQueryManga,
  });

  factory UserListData.fromJson(Map<String, dynamic> json) =>
      _$UserListDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserListDataToJson(this);
}

@JsonSerializable()
class MediaResponse {
  @JsonKey(name: 'data')
  final MediaData? data;

  MediaResponse({this.data});

  factory MediaResponse.fromJson(Map<String, dynamic> json) =>
      _$MediaResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MediaResponseToJson(this);
}

@JsonSerializable()
class MediaData {
  @JsonKey(name: 'Media')
  final Media? media;
  @JsonKey(name: 'Page')
  final Page? page;

  MediaData({this.media, this.page});

  factory MediaData.fromJson(Map<String, dynamic> json) =>
      _$MediaDataFromJson(json);

  Map<String, dynamic> toJson() => _$MediaDataToJson(this);
}

@JsonSerializable()
class MediaListCollectionResponse {
  @JsonKey(name: 'data')
  final MediaListCollectionData? data;

  MediaListCollectionResponse({this.data});

  factory MediaListCollectionResponse.fromJson(Map<String, dynamic> json) =>
      _$MediaListCollectionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MediaListCollectionResponseToJson(this);
}

@JsonSerializable()
class MediaListCollectionData {
  @JsonKey(name: 'MediaListCollection')
  final MediaListCollection? mediaListCollection;

  MediaListCollectionData({this.mediaListCollection});

  factory MediaListCollectionData.fromJson(Map<String, dynamic> json) =>
      _$MediaListCollectionDataFromJson(json);

  Map<String, dynamic> toJson() => _$MediaListCollectionDataToJson(this);
}

@JsonSerializable()
class ViewerResponse {
  @JsonKey(name: 'data')
  final ViewerData? data;

  ViewerResponse({this.data});

  factory ViewerResponse.fromJson(Map<String, dynamic> json) =>
      _$ViewerResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ViewerResponseToJson(this);
}

@JsonSerializable()
class ViewerData {
  @JsonKey(name: 'Viewer')
  final User? user;

  ViewerData({this.user});

  factory ViewerData.fromJson(Map<String, dynamic> json) =>
      _$ViewerDataFromJson(json);

  Map<String, dynamic> toJson() => _$ViewerDataToJson(this);
}

@JsonSerializable()
class AnimeListResponse {
  @JsonKey(name: 'data')
  final AnimeListData? data;

  AnimeListResponse({this.data});

  factory AnimeListResponse.fromJson(Map<String, dynamic> json) =>
      _$AnimeListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeListResponseToJson(this);
}

@JsonSerializable()
class AnimeListData {
  Page? popularAnime;
  Page? trendingAnime;
  Page? recentUpdates;
  Page? trendingMovies;
  Page? topRatedSeries;
  Page? mostFavSeries;

  AnimeListData({
    this.popularAnime,
    this.trendingAnime,
    this.recentUpdates,
    this.trendingMovies,
    this.topRatedSeries,
    this.mostFavSeries,
  });

  factory AnimeListData.fromJson(Map<String, dynamic> json) =>
      _$AnimeListDataFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeListDataToJson(this);
}

@JsonSerializable()
class MangaListResponse {
  @JsonKey(name: 'data')
  final MangaListData? data;

  MangaListResponse({this.data});

  factory MangaListResponse.fromJson(Map<String, dynamic> json) =>
      _$MangaListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MangaListResponseToJson(this);
}

@JsonSerializable()
class MangaListData {
  Page? trending;
  Page? popularManga;
  Page? trendingManhwa;
  Page? trendingNovel;
  Page? topRated;
  Page? mostFav;

  MangaListData({
    this.trending,
    this.popularManga,
    this.trendingManhwa,
    this.trendingNovel,
    this.topRated,
    this.mostFav,
  });

  factory MangaListData.fromJson(Map<String, dynamic> json) =>
      _$MangaListDataFromJson(json);

  Map<String, dynamic> toJson() => _$MangaListDataToJson(this);
}

@JsonSerializable()
class PageResponse {
  @JsonKey(name: 'data')
  final MediaData? data;

  PageResponse({this.data});

  factory PageResponse.fromJson(Map<String, dynamic> json) =>
      _$PageResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PageResponseToJson(this);
}

@JsonSerializable()
class GenreCollectionResponse {
  @JsonKey(name: 'data')
  final GenreCollectionData? data;

  GenreCollectionResponse({this.data});

  factory GenreCollectionResponse.fromJson(Map<String, dynamic> json) =>
      _$GenreCollectionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GenreCollectionResponseToJson(this);
}

@JsonSerializable()
class GenreCollectionData {
  @JsonKey(name: 'GenreCollection')
  final List<String>? genreCollection;

  GenreCollectionData({this.genreCollection});

  factory GenreCollectionData.fromJson(Map<String, dynamic> json) =>
      _$GenreCollectionDataFromJson(json);

  Map<String, dynamic> toJson() => _$GenreCollectionDataToJson(this);
}

@JsonSerializable()
class MediaTagCollectionResponse {
  @JsonKey(name: 'data')
  final MediaTagCollectionData? data;

  MediaTagCollectionResponse({this.data});

  factory MediaTagCollectionResponse.fromJson(Map<String, dynamic> json) =>
      _$MediaTagCollectionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MediaTagCollectionResponseToJson(this);
}

@JsonSerializable()
class MediaTagCollectionData {
  @JsonKey(name: 'MediaTagCollection')
  final List<MediaTag>? mediaTagCollection;

  MediaTagCollectionData({this.mediaTagCollection});

  factory MediaTagCollectionData.fromJson(Map<String, dynamic> json) =>
      _$MediaTagCollectionDataFromJson(json);

  Map<String, dynamic> toJson() => _$MediaTagCollectionDataToJson(this);
}
