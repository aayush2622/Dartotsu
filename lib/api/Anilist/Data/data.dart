
import 'package:dantotsu/api/Anilist/Anilist.dart';
import 'package:dantotsu/api/Anilist/Data/page.dart';
import 'package:dantotsu/api/Anilist/Data/user.dart';
import 'package:json_annotation/json_annotation.dart';

import 'media.dart';

part 'Generated/data.g.dart';

void registerAllTypes() {
  TypeFactory.create<MediaResponse>((json) => MediaResponse.fromJson(json));
  TypeFactory.create<MediaListCollectionResponse>((json) => MediaListCollectionResponse.fromJson(json));
  TypeFactory.create<ViewerResponse>((json) => ViewerResponse.fromJson(json));
  TypeFactory.create<UserListResponse>((json) => UserListResponse.fromJson(json));
}
@JsonSerializable()
class UserListResponse {
  @JsonKey(name: 'data')
  final UserListData? data;

  UserListResponse({this.data});

  factory UserListResponse.fromJson(Map<String, dynamic> json) => _$UserListResponseFromJson(json);
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
    this.recommendationPlannedQueryManga,});

  factory UserListData.fromJson(Map<String, dynamic> json) =>
      _$UserListDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserListDataToJson(this);
}
@JsonSerializable()
class MediaResponse {
  @JsonKey(name: 'data')
  final MediaData? data;

  MediaResponse({this.data});

  factory MediaResponse.fromJson(Map<String, dynamic> json) => _$MediaResponseFromJson(json);
  Map<String, dynamic> toJson() => _$MediaResponseToJson(this);
}

@JsonSerializable()
class MediaData {
  @JsonKey(name: 'Media')
  final Media? media;
  @JsonKey(name: 'Page')
  final Page? page;
  MediaData({this.media,this.page});

  factory MediaData.fromJson(Map<String, dynamic> json) =>
      _$MediaDataFromJson(json);

  Map<String, dynamic> toJson() => _$MediaDataToJson(this);
}

@JsonSerializable()
class MediaListCollectionResponse{
  @JsonKey(name: 'data')
  final MediaListCollectionData? data;

  MediaListCollectionResponse({this.data});

  factory MediaListCollectionResponse.fromJson(Map<String, dynamic> json) =>
      _$MediaListCollectionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MediaListCollectionResponseToJson(this);
}

@JsonSerializable()
class MediaListCollectionData{
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