import 'Prefs.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/Services/MediaService.dart';
import '../../../Core/State/State.dart';
import 'Auth.dart';
import 'Screens/Entity.dart';
import 'Screens/Home.dart';
import 'Screens/Feed.dart';
import 'Screens/Search.dart';
import 'Screens/Detail.dart';
import 'Screens/Calendar.dart';
import 'Screens/Settings.dart';
import 'Screens/Social.dart';
import '../../../Screen/Settings/Sync/Data/SyncAdapter.dart';
import 'Sync.dart';

const malServiceId = 'mal';

class MalService extends MediaService {
  @override
  bool isHiddenMedia(Media media) =>
      super.isHiddenMedia(media) || (media.isAdult && MalPref.hideNsfw.value);

  @override
  String get id => malServiceId;

  @override
  String get name => 'MyAnimeList';

  @override
  String get iconPath => 'assets/svg/mal.svg';

  MalAuth get _auth => find();

  @override
  Queries get getQueries => _auth.queries;

  @override
  Mutations get apiMutations => _auth.mutations;

  @override
  late final SyncAdapter syncAdapter = MalSync(_auth.queries, _auth.mutations);

  @override
  ServiceAuth get auth => _auth;

  @override
  List<MediaType> get feedTypes => const [MediaType.anime, MediaType.manga];

  @override
  HomeScreenView get homeView => MalHomeView(this);

  @override
  FeedScreenView get feedView => MalFeedView(this);

  @override
  SearchScreenView get searchView => MalSearchView();

  @override
  DetailScreenView get detailView => MalDetailView(this);

  @override
  EntityScreenView get entityView => MalEntityView(this);

  @override
  CalendarScreenView get calendarView => MalCalendarView();

  @override
  SettingsScreenView get settingsView => MalSettingsView();

  @override
  late final SocialScreenView socialView = MalSocialView(this);

  @override
  Set<String> get linkHosts => const {'myanimelist.net', 'www.myanimelist.net'};

  @override
  AppLink? parseUri(Uri uri) {
    final segments = uri.pathSegments.where((s) => s.isNotEmpty).toList();
    if (segments.length < 2) return super.parseUri(uri);
    final kind = switch (segments[0]) {
      'anime' => AppLinkKind.anime,
      'manga' => AppLinkKind.manga,
      _ => null,
    };
    return kind == null ? null : AppLink(kind, '${segments[0]}/${segments[1]}');
  }
}
