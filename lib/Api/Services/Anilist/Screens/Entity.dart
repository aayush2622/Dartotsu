import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../Auth.dart';
import '../Data/Entity.dart';
import '../Queries.dart';
import 'Character.dart';
import 'Staff.dart';
import 'Studio.dart';

abstract class AnilistEntityScreen {
  AnilistQueries get queries => anilistAuth.queries;

  String get kind;

  Future<Map<String, dynamic>?> fetch(String id);

  EntityProfile profile(Map<String, dynamic> json);

  List<ScreenWidget> widgets(Map<String, dynamic> json, String id);

  List<ScreenWidget> mediaSection(
    String title,
    Map<String, dynamic>? connection,
    String roleKey,
    Future<List<Media>?> Function(int page) loadMore,
  ) {
    final media = mapEntityMedia(connection, roleKey);
    if (media.isEmpty) return const [];
    return [
      ScreenWidget.media(
        title,
        media,
        onLoadMore: entityHasNext(connection) ? loadMore : null,
      ),
    ];
  }
}

class AnilistEntityView extends EntityScreenView {
  AnilistEntityView(super.service);

  final _character = AnilistCharacterScreen();
  final _staff = AnilistStaffScreen();
  final _studio = AnilistStudioScreen();

  AnilistEntityScreen _of(EntityKind kind) => switch (kind) {
    EntityKind.character => _character,
    EntityKind.staff => _staff,
    EntityKind.studio => _studio,
  };

  @override
  bool canFavourite(EntityKind kind) => true;

  @override
  Future<bool?> toggleFavourite(
    EntityKind kind,
    String id,
    bool current,
  ) async {
    if (!anilistAuth.isLoggedIn) return null;
    final done = await anilistAuth.queries.toggleFavourite(_of(kind).kind, id);
    return done ? !current : current;
  }

  @override
  Stream<List<ScreenWidget>> screenStream(EntityHost host) async* {
    final screen = _of(host.kind);
    final id = host.profile.value.id;
    final json = await screen.fetch(id);
    if (json == null) return;
    host.update(screen.profile(json));
    yield screen.widgets(json, id);
  }
}
