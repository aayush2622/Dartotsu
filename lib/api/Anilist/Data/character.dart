import 'package:json_annotation/json_annotation.dart';

import 'fuzzyData.dart';
import 'media.dart';
import 'staff.dart';

part 'Generated/character.g.dart';

@JsonSerializable()
class Character {
  final int? id;
  final CharacterName? name;
  final CharacterImage? image;
  final String? description;
  final String? gender;
  final FuzzyDate? dateOfBirth;
  final String? age;
  final String? bloodType;
  final bool? isFavourite;
  final bool? isFavouriteBlocked;
  final String? siteUrl;
  final MediaConnection? media;
  final int? favourites;
  final String? modNotes;

  Character({
    this.id,
    this.name,
    this.image,
    this.description,
    this.gender,
    this.dateOfBirth,
    this.age,
    this.bloodType,
    this.isFavourite,
    this.isFavouriteBlocked,
    this.siteUrl,
    this.media,
    this.favourites,
    this.modNotes,
  });

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterToJson(this);
}

// Character connection
@JsonSerializable()
class CharacterConnection {
  final List<CharacterEdge>? edges;
  final List<Character>? nodes;
  final PageInfo? pageInfo;

  CharacterConnection({
    this.edges,
    this.nodes,
    this.pageInfo,
  });

  factory CharacterConnection.fromJson(Map<String, dynamic> json) =>
      _$CharacterConnectionFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterConnectionToJson(this);
}

// Character edge
@JsonSerializable()
class CharacterEdge {
  final Character? node;
  final int? id;
  final String? role;
  final String? name;
  final List<Staff>? voiceActors;

  // Uncomment if needed
  // final List<StaffRoleType>? voiceActorRoles;
  final List<Media>? media;
  final int? favouriteOrder;

  CharacterEdge({
    this.node,
    this.id,
    this.role,
    this.name,
    this.voiceActors,
    // this.voiceActorRoles,
    this.media,
    this.favouriteOrder,
  });

  factory CharacterEdge.fromJson(Map<String, dynamic> json) =>
      _$CharacterEdgeFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterEdgeToJson(this);
}

// Character name
@JsonSerializable()
class CharacterName {
  final String? first;
  final String? middle;
  final String? last;
  final String? full;
  final String? native;
  final List<String>? alternative;
  final List<String>? alternativeSpoiler;
  final String? userPreferred;

  CharacterName({
    this.first,
    this.middle,
    this.last,
    this.full,
    this.native,
    this.alternative,
    this.alternativeSpoiler,
    this.userPreferred,
  });

  factory CharacterName.fromJson(Map<String, dynamic> json) =>
      _$CharacterNameFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterNameToJson(this);
}

// Character image
@JsonSerializable()
class CharacterImage {
  final String? large;
  final String? medium;

  CharacterImage({
    this.large,
    this.medium,
  });

  factory CharacterImage.fromJson(Map<String, dynamic> json) =>
      _$CharacterImageFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterImageToJson(this);
}
