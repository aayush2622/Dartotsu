import '../../../Core/State/State.dart';
import '../../../Core/Services/MediaService.dart';
import 'Auth.dart';
import 'Screens/Home.dart';
import 'Screens/Feed.dart';
import 'Screens/Search.dart';
import 'Screens/Detail.dart';
import 'Screens/Calendar.dart';
import 'Screens/Settings.dart';

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
  ServiceAuth get auth => _auth;

  @override
  List<MediaType> get feedTypes => const [MediaType.anime, MediaType.movie];

  @override
  String feedLabel(MediaType type) =>
      type == MediaType.movie ? 'Movies & Series' : type.label;

  @override
  HomeScreenView get homeView => SimklHomeView(this);

  @override
  FeedScreenView get feedView => SimklFeedView(this);

  @override
  SearchScreenView get searchView => SimklSearchView();

  @override
  DetailScreenView get detailView => SimklDetailView(this);

  @override
  CalendarScreenView get calendarView => SimklCalendarView();

  @override
  SettingsScreenView get settingsView => SimklSettingsView();

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
