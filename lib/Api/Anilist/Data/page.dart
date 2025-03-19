import 'package:dartotsu/Api/Anilist/Data/recommendations.dart';
import 'package:dartotsu/Api/Anilist/Data/staff.dart';
import 'package:dartotsu/Api/Anilist/Data/user.dart';
import 'package:json_annotation/json_annotation.dart';

import 'character.dart';
import 'media.dart';

part 'Generated/page.g.dart';

@JsonSerializable()
class Page {
  // The pagination information
  PageInfo? pageInfo;

  List<User>? users;
  List<Media>? media;
  List<Character>? characters;
  List<Staff>? staff;
  List<Studio>? studios;
  List<MediaList>? mediaList;
  List<AiringSchedule>? airingSchedules;
  List<User>? followers;
  List<User>? following;
  List<Recommendation>? recommendations;
  List<User>? likes;

  Page({
    this.pageInfo,
    this.users,
    this.media,
    this.characters,
    this.staff,
    this.studios,
    this.mediaList,
    this.airingSchedules,
    this.followers,
    this.following,
    this.recommendations,
    this.likes,
  });

  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);

  Map<String, dynamic> toJson() => _$PageToJson(this);
}

@JsonSerializable()
class PageInfo {
  int? total;
  int? perPage;
  int? currentPage;
  int? lastPage;
  bool? hasNextPage;

  PageInfo({
    this.total,
    this.perPage,
    this.currentPage,
    this.lastPage,
    this.hasNextPage,
  });

  factory PageInfo.fromJson(Map<String, dynamic> json) =>
      _$PageInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PageInfoToJson(this);
}
