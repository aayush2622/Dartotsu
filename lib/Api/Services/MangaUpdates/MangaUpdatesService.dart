import 'Prefs.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/Services/MediaService.dart';
import '../../../Core/State/State.dart';
import '../../../Screen/Settings/Sync/Data/SyncAdapter.dart';
import 'Auth.dart';
import 'Screens/Detail.dart';
import 'Screens/Feed.dart';
import 'Screens/Search.dart';
import 'Screens/Settings.dart';
import 'Sync.dart';

const mangaUpdatesServiceId = 'mangaupdates';

class MangaUpdatesService extends MediaService {
  @override
  bool isHiddenMedia(Media media) =>
      super.isHiddenMedia(media) ||
      (media.isAdult && MangaUpdatesPref.hideNsfw.value);

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
  HomeScreenView get homeView =>
      QueriesHomeView(this, () => mangaUpdatesAuth.queries);

  @override
  FeedScreenView get feedView => MangaUpdatesFeedView(this);

  @override
  SearchScreenView get searchView => MangaUpdatesSearchView();

  @override
  DetailScreenView get detailView => MangaUpdatesDetailView(this);

  @override
  SettingsScreenView get settingsView => MangaUpdatesSettingsView();

  @override
  Set<String> get linkHosts => const {
    'mangaupdates.com',
    'www.mangaupdates.com',
  };

  @override
  AppLink? parseUri(Uri uri) {
    final segments = uri.pathSegments.where((s) => s.isNotEmpty).toList();
    if (segments.length >= 2 && segments[0] == 'series') {
      final id = int.tryParse(segments[1], radix: 36);
      if (id != null) return AppLink(AppLinkKind.manga, '$id');
    }
    return super.parseUri(uri);
  }
}
