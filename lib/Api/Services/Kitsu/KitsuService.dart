import 'Prefs.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/Services/MediaService.dart';
import '../../../Core/State/State.dart';
import 'Auth.dart';
import 'Screens/Calendar.dart';
import 'Screens/Detail.dart';
import 'Screens/Entity.dart';
import 'Screens/Feed.dart';
import 'Screens/Home.dart';
import 'Screens/Search.dart';
import 'Screens/Notifications.dart';
import 'Screens/Settings.dart';
import 'Screens/Social.dart';
import '../../../Screen/Settings/Sync/Data/SyncAdapter.dart';
import 'Sync.dart';

const kitsuServiceId = 'kitsu';

class KitsuService extends MediaService {
  @override
  bool isHiddenMedia(Media media) =>
      super.isHiddenMedia(media) || (media.isAdult && KitsuPref.hideNsfw.value);

  @override
  String get id => kitsuServiceId;

  @override
  String get name => 'Kitsu';

  @override
  String get iconPath => 'assets/svg/kitsu.svg';

  KitsuAuth get _auth => find();

  @override
  Queries get getQueries => _auth.queries;

  @override
  Mutations get apiMutations => _auth.mutations;

  @override
  late final SyncAdapter syncAdapter = KitsuSync(
    _auth.queries,
    _auth.mutations,
  );

  @override
  ServiceAuth get auth => _auth;

  @override
  List<MediaType> get feedTypes => const [MediaType.anime, MediaType.manga];

  @override
  HomeScreenView get homeView => KitsuHomeView(this);

  @override
  FeedScreenView get feedView => KitsuFeedView(this);

  @override
  SearchScreenView get searchView => KitsuSearchView();

  @override
  DetailScreenView get detailView => KitsuDetailView(this);

  @override
  EntityScreenView get entityView => KitsuEntityView(this);

  @override
  CalendarScreenView get calendarView => KitsuCalendarView();

  @override
  SettingsScreenView get settingsView => KitsuSettingsView();

  @override
  NotificationScreenView get notificationView => KitsuNotificationView();

  @override
  late final SocialScreenView socialView = KitsuSocialView(this);

  @override
  Set<String> get linkHosts => const {'kitsu.io', 'kitsu.app'};

  @override
  AppLink? parseUri(Uri uri) {
    final segments = uri.pathSegments.where((s) => s.isNotEmpty).toList();
    if (segments.length < 2) return super.parseUri(uri);
    final kind = switch (segments[0]) {
      'anime' => AppLinkKind.anime,
      'manga' => AppLinkKind.manga,
      _ => null,
    };
    final slug = segments[1];
    if (kind == null) return null;
    return AppLink(kind, '${segments[0]}/$slug');
  }
}
