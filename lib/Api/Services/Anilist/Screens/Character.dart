import '../../../../Core/Services/MediaService.dart';
import '../Data/Entity.dart';
import 'Entity.dart';

class AnilistCharacterScreen extends AnilistEntityScreen {
  @override
  bool get isCharacter => true;

  @override
  Future<Map<String, dynamic>?> fetch(String id) => queries.character(id);

  @override
  EntityProfile profile(Map<String, dynamic> json) => characterProfile(json);

  @override
  List<ScreenWidget> widgets(Map<String, dynamic> json, String id) {
    final anime = json['anime'] as Map<String, dynamic>?;
    final manga = json['manga'] as Map<String, dynamic>?;
    return [
      for (final entry in voiceActorsByLanguage(anime).entries)
        ScreenWidget.staff('Voice actors · ${entry.key}', entry.value),
      ...mediaSection(
        'Anime appearances',
        anime,
        'characterRole',
        (page) => queries.characterMedia(id, 'ANIME', page),
      ),
      ...mediaSection(
        'Manga appearances',
        manga,
        'characterRole',
        (page) => queries.characterMedia(id, 'MANGA', page),
      ),
    ];
  }
}
