import '../../../Core/Services/MediaService.dart';
import '../../../Core/State/State.dart';
import '../../../Screen/Settings/Sync/Data/SyncAdapter.dart';
import 'Auth.dart';
import 'Screens/Detail.dart';
import 'Screens/Feed.dart';
import 'Screens/Home.dart';
import 'Screens/Search.dart';
import 'Screens/Settings.dart';
import 'Sync.dart';

const mangaUpdatesServiceId = 'mangaupdates';

class MangaUpdatesService extends MediaService {
  @override
  String get id => mangaUpdatesServiceId;

  @override
  String get name => 'MangaUpdates';

  @override
  String get iconPath => 'assets/svg/mangaupdates.svg';

  MangaUpdatesAuth get _auth => find();

  @override
  Queries get getQueries => _auth.queries;

  @override
  Mutations get apiMutations => _auth.mutations;

  @override
  late final SyncAdapter syncAdapter = MangaUpdatesSync(
    _auth.queries,
    _auth.mutations,
  );

  @override
  ServiceAuth get auth => _auth;

  @override
  List<MediaType> get feedTypes => const [MediaType.manga, MediaType.novel];

  @override
  HomeScreenView get homeView => MangaUpdatesHomeView(this);

  @override
  FeedScreenView get feedView => MangaUpdatesFeedView(this);

  @override
  SearchScreenView get searchView => MangaUpdatesSearchView();

  @override
  DetailScreenView get detailView => MangaUpdatesDetailView(this);

  @override
  SettingsScreenView get settingsView => MangaUpdatesSettingsView();

  @override
  Set<String> get linkHosts => const {'mangaupdates.com', 'www.mangaupdates.com'};

  @override
  AppLink? parseUri(Uri uri) {
    if (uri.queryParameters.containsKey('id')) {
      final id = uri.queryParameters['id'];
      if (id != null && int.tryParse(id) != null) {
        return AppLink(AppLinkKind.manga, id);
      }
    }
    final segments = uri.pathSegments.where((s) => s.isNotEmpty).toList();
    if (segments.length >= 2 && segments[0] == 'series') {
      final id = int.tryParse(segments[1]);
      if (id != null) {
        return AppLink(AppLinkKind.manga, segments[1]);
      }
    }
    return super.parseUri(uri);
  }
}
