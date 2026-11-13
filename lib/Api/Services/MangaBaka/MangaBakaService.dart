import 'Prefs.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/Services/MediaService.dart';
import '../../../Core/State/State.dart';
import '../../../Core/SourceAlerts/SubCalendar.dart';
import 'Auth.dart';
import 'Screens/Detail.dart';
import 'Screens/Feed.dart';
import 'Screens/News.dart';
import 'Screens/Search.dart';
import 'Screens/Settings.dart';
import 'Screens/Social.dart';
import '../../../Screen/Settings/Sync/Data/SyncAdapter.dart';
import 'Sync.dart';

const mangaBakaServiceId = 'mangabaka';

class MangaBakaService extends MediaService {
  @override
  bool isHiddenMedia(Media media) =>
      super.isHiddenMedia(media) ||
      (media.isAdult && MangaBakaPref.hideNsfw.value);

  @override
  String get id => mangaBakaServiceId;

  @override
  String get name => 'MangaBaka';

  @override
  String get iconPath => 'assets/svg/mangabaka.svg';

  MangaBakaAuth get _auth => find();

  @override
  Queries get getQueries => _auth.queries;

  @override
  Mutations get apiMutations => _auth.mutations;

  @override
  late final SyncAdapter syncAdapter = MangaBakaSync(
    _auth.queries,
    _auth.mutations,
  );

  @override
  ServiceAuth get auth => _auth;

  @override
  List<MediaType> get feedTypes => const [MediaType.manga, MediaType.novel];

  @override
  HomeScreenView get homeView => QueriesHomeView(
    this,
    () => mangaBakaAuth.queries,
    hidden: (t) =>
        t == kHiddenMediaTitle &&
        MangaBakaPref.homeLayout.value[kHiddenMediaTitle] != true,
  );

  @override
  CalendarScreenView get calendarView => const SubscriptionCalendarView(
    serviceId: mangaBakaServiceId,
    chapters: true,
  );

  @override
  FeedScreenView get feedView => MangaBakaFeedView(this);

  @override
  SearchScreenView get searchView => MangaBakaSearchView();

  @override
  DetailScreenView get detailView => MangaBakaDetailView(this);

  @override
  NewsScreenView get newsView => MangaBakaNewsView();

  @override
  SettingsScreenView get settingsView => MangaBakaSettingsView();

  @override
  SocialScreenView get socialView => MangaBakaSocialView(this);

  @override
  Set<String> get linkHosts => const {'mangabaka.org', 'www.mangabaka.org'};

  @override
  AppLink? parseUri(Uri uri) {
    final segments = uri.pathSegments.where((s) => s.isNotEmpty).toList();
    if (segments.length < 2) return super.parseUri(uri);
    final kinds = {'manga', 'novel', 'manhwa', 'manhua', 'oel', 'series'};
    if (!kinds.contains(segments[0]) || int.tryParse(segments[1]) == null) {
      return null;
    }
    return AppLink(AppLinkKind.manga, segments[1]);
  }
}
