import '../../../Core/Services/MediaService.dart';
import '../../../Utils/Functions/GetXFunctions.dart';
import 'AnilistAuth.dart';
import 'Screens/AnilistScreens.dart';

class AnilistService extends MediaService {
  @override
  String get id => 'anilist';

  @override
  String get name => 'AniList';

  @override
  String get iconPath => 'assets/svg/anilist.svg';

  AnilistAuth get _auth => find();

  @override
  ServiceApi get api => _auth.api;

  @override
  ServiceMutations get mutations => _auth.api;

  @override
  ServiceAuth get auth => _auth;

  @override
  HomeScreenView get homeScreen => AnilistHomeScreen();

  @override
  AnimeScreenView get animeScreen => AnilistAnimeScreen();

  @override
  MangaScreenView get mangaScreen => AnilistMangaScreen();

  @override
  SearchScreenView get searchScreen => AnilistSearchScreen();

  @override
  DetailScreenView get detailScreen => AnilistDetailScreen();

  @override
  NotificationScreenView get notificationScreen => AnilistNotificationScreen();
}
