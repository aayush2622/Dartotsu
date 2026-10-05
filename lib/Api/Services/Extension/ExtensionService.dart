import '../../../Core/Services/MediaService.dart';
import 'ExtensionServices.dart';
import 'ExtensionViews.dart';

class ExtensionService extends MediaService {
  @override
  String get id => extensionServiceId;

  @override
  String get name => "Extensions";

  @override
  String get iconPath => "assets/svg/extensions.svg";

  @override
  List<MediaType> get feedTypes => const [MediaType.anime, MediaType.manga];

  @override
  FeedScreenView get feedView => ExtensionFeedView(this);

  @override
  SearchScreenView get searchView => ExtensionSearchView();

  @override
  DetailScreenView get detailView => ExtensionDetailView();

  @override
  SettingsScreenView get settingsView => ExtensionSettingsView();

  @override
  HomeScreenView get localHomeView => ExtensionHomeView(this);

  @override
  LocalListStore localStore({required bool anime}) =>
      extensionStore(itemTypeFor(anime: anime));
}
