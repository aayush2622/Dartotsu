import '../../../Core/Services/MediaService.dart';
import '../../../Utils/Functions/GetXFunctions.dart';
import 'AnilistAuth.dart';
import 'Screens/Detail.dart';
import 'Screens/Feed.dart';
import 'Screens/Home.dart';
import 'Screens/Notifications.dart';
import 'Screens/Search.dart';
import 'Screens/Settings.dart';

const anilistServiceId = 'anilist';

const anilistContinueOrder = ContinueOrder(anilistServiceId);

class AnilistService extends MediaService {
  @override
  String get id => anilistServiceId;

  @override
  String get name => 'AniList';

  @override
  String get iconPath => 'assets/svg/anilist.svg';

  AnilistAuth get _auth => find();

  @override
  Queries get getQueries => _auth.queries;

  @override
  Mutations get apiMutations => _auth.mutations;

  @override
  ServiceAuth get auth => _auth;

  @override
  HomeScreenView get homeView => AnilistHomeView(this);

  @override
  List<MediaType> get feedTypes => const [MediaType.anime, MediaType.manga];

  @override
  FeedScreenView get feedView => AnilistFeedView(this);

  @override
  SearchScreenView get searchView => AnilistSearchView();

  @override
  DetailScreenView get detailView => AnilistDetailView(this);

  @override
  NotificationScreenView get notificationView => AnilistNotificationView();

  @override
  SettingsScreenView get settingsView => AnilistSettingsView();
}
