import '../../../Core/Services/MediaService.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/State/State.dart';
import '../../../Screen/Settings/Sync/Data/SyncAdapter.dart';
import 'Auth.dart';
import 'Prefs.dart';
import 'Screens/Calendar.dart';
import 'Screens/Detail.dart';
import 'Screens/Feed.dart';
import 'Screens/Search.dart';
import 'Screens/Settings.dart';
import 'Screens/Social.dart';
import 'Sync.dart';

const comickServiceId = 'comick';

class ComickService extends MediaService {
  @override
  bool isHiddenMedia(Media media) =>
      super.isHiddenMedia(media) ||
      (media.isAdult && ComickPref.hideNsfw.value);

  @override
  String get id => comickServiceId;

  @override
  String get name => 'Comick';

  @override
  String get iconPath => 'assets/svg/comick.svg';

  ComickAuth get _auth => find();

  @override
  Queries get getQueries => _auth.queries;

  @override
  Mutations get apiMutations => _auth.mutations;

  @override
  late final SyncAdapter syncAdapter = ComickSync(
    _auth.queries,
    _auth.mutations,
  );

  @override
  ServiceAuth get auth => _auth;

  @override
  List<MediaType> get feedTypes => const [MediaType.manga, MediaType.anime];

  @override
  HomeScreenView get homeView => QueriesHomeView(
    this,
    () => comickAuth.queries,
    hidden: (t) =>
        t == kHiddenMediaTitle &&
        ComickPref.homeLayout.value[kHiddenMediaTitle] != true,
  );

  @override
  FeedScreenView get feedView => ComickFeedView(this);

  @override
  SearchScreenView get searchView => ComickSearchView();

  @override
  DetailScreenView get detailView => ComickDetailView(this);

  @override
  CalendarScreenView get calendarView => ComickCalendarView();

  @override
  SettingsScreenView get settingsView => ComickSettingsView();

  @override
  late final SocialScreenView socialView = ComickSocialView(this);

  @override
  Set<String> get linkHosts => const {
    'comick.dev',
    'comick.io',
    'comick.app',
    'comick.pictures',
  };

  @override
  AppLink? parseUri(Uri uri) {
    final segments = uri.pathSegments.where((s) => s.isNotEmpty).toList();
    if (segments.length < 2) return super.parseUri(uri);
    final kind = switch (segments[0]) {
      'anime' => AppLinkKind.anime,
      'comic' || 'manga' => AppLinkKind.manga,
      _ => null,
    };
    if (kind == null) return null;
    return AppLink(kind, segments[1]);
  }
}
