import '../../../Core/Services/MediaService.dart';
import '../../../Screen/Settings/Sync/Data/SyncAdapter.dart';
import 'Auth.dart';
import 'Queries.dart';
import 'Sync.dart';
import 'Screens/Detail.dart';
import 'Screens/Entity.dart';
import 'Screens/Settings.dart';
import 'Screens/Feed.dart';
import 'Screens/Home.dart';
import 'Screens/Search.dart';

const animePlanetServiceId = 'animeplanet';

AnimePlanetQueries get animePlanetQueries => animePlanetAuth.queries;

class AnimePlanetService extends MediaService {
  @override
  String get id => animePlanetServiceId;

  @override
  String get name => 'Anime-Planet';

  @override
  String get iconPath => 'assets/svg/animeplanet.svg';

  @override
  Mutations get apiMutations => animePlanetAuth.mutations;

  @override
  late final SyncAdapter syncAdapter = AnimePlanetSync(
    animePlanetAuth.queries,
    animePlanetAuth.mutations,
  );

  @override
  ServiceAuth get auth => animePlanetAuth;

  @override
  HomeScreenView get homeView => AnimePlanetHomeView(this);

  @override
  Queries get getQueries => animePlanetQueries;

  @override
  List<MediaType> get feedTypes => const [MediaType.anime, MediaType.manga];

  @override
  FeedScreenView get feedView => AnimePlanetFeedView(this);

  @override
  EntityScreenView get entityView => AnimePlanetEntityView(this);

  @override
  SettingsScreenView get settingsView => AnimePlanetSettingsView();

  @override
  SearchScreenView get searchView => AnimePlanetSearchView();

  @override
  DetailScreenView get detailView => AnimePlanetDetailView(this);

  @override
  Set<String> get linkHosts => const {
    'anime-planet.com',
    'www.anime-planet.com',
  };

  @override
  AppLink? parseUri(Uri uri) {
    final segments = uri.pathSegments.where((s) => s.isNotEmpty).toList();
    if (segments.length < 2) return null;
    final kind = switch (segments[0]) {
      'anime' => AppLinkKind.anime,
      'manga' => AppLinkKind.manga,
      _ => null,
    };
    if (kind == null) return null;
    return AppLink(kind, '${segments[0]}/${segments[1]}');
  }
}
