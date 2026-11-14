import '../../../Core/Services/MediaService.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Screen/Settings/Sync/Data/SyncAdapter.dart';
import 'Auth.dart';
import 'Screens/Calendar.dart';
import 'Screens/Detail.dart';
import 'Screens/Entity.dart';
import 'Screens/Feed.dart';
import 'Screens/Home.dart';
import 'Screens/Search.dart';
import 'Screens/Settings.dart';
import 'Screens/Social.dart';
import 'Sync.dart';

const traktServiceId = 'trakt';

class TraktService extends MediaService {
  @override
  String get id => traktServiceId;

  @override
  String get name => 'Trakt';

  @override
  String get iconPath => 'assets/svg/trakt.svg';

  TraktAuth get _auth => find();

  @override
  Queries get getQueries => _auth.queries;

  @override
  Mutations get apiMutations => _auth.mutations;

  @override
  late final SyncAdapter syncAdapter = TraktSync();

  @override
  ServiceAuth get auth => _auth;

  @override
  bool get seriesProgress => true;

  @override
  List<MediaType> get feedTypes => const [MediaType.movie, MediaType.series];

  @override
  String feedLabel(MediaType type) => switch (type) {
    MediaType.movie => getString.movies,
    MediaType.series => getString.shows,
    _ => type.label,
  };

  @override
  HomeScreenView get homeView => TraktHomeView(this);

  @override
  FeedScreenView get feedView => TraktFeedView(this);

  @override
  SearchScreenView get searchView => TraktSearchView();

  @override
  DetailScreenView get detailView => TraktDetailView(this);

  @override
  EntityScreenView get entityView => TraktEntityView(this);

  @override
  CalendarScreenView get calendarView => TraktCalendarView();

  @override
  SettingsScreenView get settingsView => TraktSettingsView();

  @override
  late final SocialScreenView socialView = TraktSocialView(this);

  @override
  Set<String> get linkHosts => const {'trakt.tv', 'www.trakt.tv'};

  @override
  AppLink? parseUri(Uri uri) {
    final segments = uri.pathSegments.where((s) => s.isNotEmpty).toList();
    if (segments.length < 2) return super.parseUri(uri);
    final section = segments[0];
    final slug = segments[1];
    if (section == 'movies' || section == 'shows') {
      return AppLink(AppLinkKind.anime, '$section/$slug');
    }
    if (section == 'people') {
      return AppLink(AppLinkKind.staff, slug);
    }
    if (section == 'users') {
      return AppLink(AppLinkKind.user, slug);
    }
    return super.parseUri(uri);
  }
}
