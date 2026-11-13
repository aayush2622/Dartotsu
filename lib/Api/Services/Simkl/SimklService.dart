import 'Screens/CommunityLists.dart';
import '../../../Core/State/State.dart';
import '../../../Core/Services/MediaService.dart';
import 'Auth.dart';
import 'Prefs.dart';
import 'Screens/Feed.dart';
import 'Screens/Search.dart';
import 'Screens/Detail.dart';
import 'Screens/Calendar.dart';
import 'Screens/Entity.dart';
import 'Screens/Settings.dart';
import 'Screens/Social.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Screen/Settings/Sync/Data/SyncAdapter.dart';
import 'Sync.dart';

const simklServiceId = 'simkl';

class SimklService extends MediaService {
  @override
  String get id => simklServiceId;

  @override
  String get name => 'Simkl';

  @override
  String get iconPath => 'assets/svg/simkl.svg';

  SimklAuth get _auth => find();

  @override
  Queries get getQueries => _auth.queries;

  @override
  Mutations get apiMutations => _auth.mutations;

  @override
  late final SyncAdapter syncAdapter = SimklSync(_auth.queries, _auth.client);

  @override
  ServiceAuth get auth => _auth;

  @override
  CommunityListsView get communityListsView => SimklCommunityListsView();

  @override
  bool get seriesProgress => true;

  @override
  List<MediaType> get feedTypes => SimklPref.moviesOnly.rx.value
      ? const [MediaType.movie, MediaType.series]
      : const [MediaType.anime, MediaType.movie];

  @override
  String feedLabel(MediaType type) => SimklPref.moviesOnly.rx.value
      ? switch (type) {
          MediaType.movie => getString.movies,
          MediaType.series => getString.shows,
          _ => type.label,
        }
      : type == MediaType.movie
      ? getString.moviesAndSeries
      : type.label;

  @override
  HomeScreenView get homeView => QueriesHomeView(this, () => simklAuth.queries);

  @override
  FeedScreenView get feedView => SimklFeedView(this);

  @override
  SearchScreenView get searchView => SimklSearchView();

  @override
  DetailScreenView get detailView => SimklDetailView(this);

  @override
  EntityScreenView get entityView => SimklEntityView(this);

  @override
  CalendarScreenView get calendarView => SimklCalendarView();

  @override
  SettingsScreenView get settingsView => SimklSettingsView();

  @override
  SocialScreenView get socialView => SimklSocialView(this);

  @override
  Set<String> get linkHosts => const {'simkl.com', 'www.simkl.com'};

  @override
  AppLink? parseUri(Uri uri) {
    final segments = uri.pathSegments.where((s) => s.isNotEmpty).toList();
    if (segments.length < 2 ||
        !const {'anime', 'movies', 'tv'}.contains(segments[0])) {
      return super.parseUri(uri);
    }
    return AppLink(AppLinkKind.anime, '${segments[0]}/${segments[1]}');
  }
}
