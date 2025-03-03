import 'package:dartotsu/Api/Anilist/Data/user.dart';
import 'package:json_annotation/json_annotation.dart';

import 'character.dart';
import 'fuzzyData.dart';
import 'media.dart';

part 'Generated/staff.g.dart';

@JsonSerializable()
class Staff {
  int id;
  StaffName? name;
  String? languageV2;
  StaffImage? image;
  String? description;
  List<String>? primaryOccupations;
  String? gender;
  FuzzyDate? dateOfBirth;
  FuzzyDate? dateOfDeath;
  int? age;
  List<int>? yearsActive;
  String? homeTown;
  String? bloodType;
  bool? isFavourite;
  bool? isFavouriteBlocked;
  String? siteUrl;
  MediaConnection? staffMedia;
  CharacterConnection? characters;
  MediaConnection? characterMedia;
  Staff? staff;
  User? submitter;
  int? submissionStatus;
  String? submissionNotes;
  int? favourites;
  String? modNotes;

  Staff({
    required this.id,
    this.name,
    this.languageV2,
    this.image,
    this.description,
    this.primaryOccupations,
    this.gender,
    this.dateOfBirth,
    this.dateOfDeath,
    this.age,
    this.yearsActive,
    this.homeTown,
    this.bloodType,
    this.isFavourite,
    this.isFavouriteBlocked,
    this.siteUrl,
    this.staffMedia,
    this.characters,
    this.characterMedia,
    this.staff,
    this.submitter,
    this.submissionStatus,
    this.submissionNotes,
    this.favourites,
    this.modNotes,
  });

  factory Staff.fromJson(Map<String, dynamic> json) => _$StaffFromJson(json);

  Map<String, dynamic> toJson() => _$StaffToJson(this);
}

@JsonSerializable()
class StaffName {
  String? userPreferred;

  StaffName({this.userPreferred});

  factory StaffName.fromJson(Map<String, dynamic> json) =>
      _$StaffNameFromJson(json);

  Map<String, dynamic> toJson() => _$StaffNameToJson(this);
}

@JsonSerializable()
class StaffConnection {
  List<StaffEdge>? edges;
  List<Staff>? nodes;

  StaffConnection({this.edges, this.nodes});

  factory StaffConnection.fromJson(Map<String, dynamic> json) =>
      _$StaffConnectionFromJson(json);

  Map<String, dynamic> toJson() => _$StaffConnectionToJson(this);
}

@JsonSerializable()
class StaffImage {
  String? large;
  String? medium;

  StaffImage({this.large, this.medium});

  factory StaffImage.fromJson(Map<String, dynamic> json) =>
      _$StaffImageFromJson(json);

  Map<String, dynamic> toJson() => _$StaffImageToJson(this);
}

@JsonSerializable()
class StaffEdge {
  String? role;
  Staff? node;

  StaffEdge({this.role, this.node});

  factory StaffEdge.fromJson(Map<String, dynamic> json) =>
      _$StaffEdgeFromJson(json);

  Map<String, dynamic> toJson() => _$StaffEdgeToJson(this);
}
