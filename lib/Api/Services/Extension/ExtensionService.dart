import '../../../Core/Services/MediaService.dart';
import 'ExtensionQueries.dart';
import 'ExtensionServices.dart';
import 'Screens/Detail.dart';
import 'Screens/Feed.dart';
import 'Screens/Home.dart';
import 'Screens/Search.dart';
import 'Screens/Settings.dart';

class ExtensionService extends MediaService {
  @override
  String get id => extensionServiceId;

  @override
  String get name => "Extensions";

  @override
  String get iconPath => "assets/svg/extensions.svg";

  final _queries = ExtensionQueries();

  @override
  Queries get getQueries => _queries;

  @override
  List<MediaType> get feedTypes => const [MediaType.anime, MediaType.manga];

  @override
  FeedScreenView get feedView => ExtensionFeedView(this, _queries);

  @override
  SearchScreenView get searchView => ExtensionSearchView(_queries);

  @override
  DetailScreenView get detailView => ExtensionDetailView(this, _queries);

  @override
  SettingsScreenView get settingsView => ExtensionSettingsView();

  @override
  HomeScreenView get homeView => ExtensionHomeView(this, _queries);

  @override
  LocalListStore localStore({required bool anime}) =>
      extensionStore(itemTypeFor(anime: anime));
}
