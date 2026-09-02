import '../../../Core/Services/MediaService.dart';
import '../../../Utils/Functions/GetXFunctions.dart';
import 'AnilistAuth.dart';
import 'AnilistViews.dart';

class AnilistService extends MediaService {
  @override
  String get id => 'anilist';

  @override
  String get name => 'AniList';

  @override
  String get iconPath => 'assets/svg/anilist.svg';

  AnilistAuth get _auth => find();

  @override
  Queries get getQueries => _auth.queries;

  @override
  Mutations get getMutations => _auth.mutations;

  @override
  ServiceAuth get auth => _auth;

  @override
  HomeScreenView get homeView => AnilistHomeView();

  @override
  AnimeScreenView get animeView => AnilistAnimeView();

  @override
  MangaScreenView get mangaView => AnilistMangaView();

  @override
  SearchScreenView get searchView => AnilistSearchView();

  @override
  DetailScreenView get detailView => AnilistDetailView();

  @override
  NotificationScreenView get notificationView => AnilistNotificationView();

  @override
  SettingsScreenView get settingsView => AnilistSettingsView();
}
