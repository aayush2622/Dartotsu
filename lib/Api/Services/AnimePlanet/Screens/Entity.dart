import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../AnimePlanetService.dart';
import '../Data/Parser.dart';

class AnimePlanetEntityView extends EntityScreenView {
  AnimePlanetEntityView(super.service);

  @override
  Stream<List<ScreenWidget>> screenStream(EntityHost host) async* {
    final id = host.profile.value.id;
    final queries = animePlanetQueries;
    switch (host.kind) {
      case EntityKind.character:
        final entity = await queries.character(id);
        if (entity == null) return;
        host.update(entity.profile);
        yield [
          if (entity.voices.isNotEmpty)
            ScreenWidget.staff(getString.voiceActors, entity.voices),
          ..._sections(entity),
        ];
      case EntityKind.staff:
        final entity = await queries.person(id);
        if (entity == null) return;
        host.update(entity.profile);
        yield _sections(entity);
      case EntityKind.studio:
        final profile = await queries.studio(id);
        if (profile == null) return;
        host.update(profile);
        final first = await queries.studioAnime(id, 1);
        yield [
          if (first.isNotEmpty)
            ScreenWidget.media(
              getString.anime,
              first,
              onLoadMore: (page) => queries.studioAnime(id, page),
            ),
        ];
    }
  }

  List<ScreenWidget> _sections(AnimePlanetEntity entity) => [
    for (final s in entity.sections) ScreenWidget.media(s.title, s.media),
  ];
}
