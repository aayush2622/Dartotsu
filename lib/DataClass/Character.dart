import '../api/Anilist/Data/fuzzyData.dart';
import 'Author.dart';
import 'Media.dart';

class character {
  int? id;
  String? name;
  String? image;
  String? banner;
  String? role;
  bool? isFav;
  String? description;
  String? age;
  String? gender;
  FuzzyDate? dateOfBirth;
  List<Media>? roles;
  List<author>? voiceActor;

  character({
    this.id,
    this.name,
    this.image,
    this.banner,
    this.role,
    this.isFav,
    this.description,
    this.age,
    this.gender,
    this.dateOfBirth,
    this.roles,
    this.voiceActor,
  });
}
