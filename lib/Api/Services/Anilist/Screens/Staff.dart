import '../../../../Core/Services/MediaService.dart';
import '../Data/Entity.dart';
import 'Entity.dart';

class AnilistStaffScreen extends AnilistEntityScreen {
  @override
  bool get isCharacter => false;

  @override
  Future<Map<String, dynamic>?> fetch(String id) => queries.staff(id);

  @override
  EntityProfile profile(Map<String, dynamic> json) => staffProfile(json);

  @override
  List<ScreenWidget> widgets(Map<String, dynamic> json, String id) {
    final voiced = mapStaffCharacters(
      json['characters'] as Map<String, dynamic>?,
    );
    return [
      if (voiced.isNotEmpty)
        ScreenWidget.characters('Voiced characters', voiced),
      ...mediaSection(
        'Anime credits',
        json['anime'] as Map<String, dynamic>?,
        'staffRole',
        (page) => queries.staffMedia(id, 'ANIME', page),
      ),
      ...mediaSection(
        'Manga credits',
        json['manga'] as Map<String, dynamic>?,
        'staffRole',
        (page) => queries.staffMedia(id, 'MANGA', page),
      ),
    ];
  }
}
