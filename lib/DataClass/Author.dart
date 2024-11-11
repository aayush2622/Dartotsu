
import '../api/Anilist/Data/character.dart';
import 'Media.dart';

class author {
  int id;
  String? name;
  String? image;
  String? role;
  Map<String, List<Media>>? yearMedia;
  List<Character>? character;

  author({
    required this.id,
    this.name,
    this.image,
    this.role,
    this.yearMedia,
    this.character,
  });
}
