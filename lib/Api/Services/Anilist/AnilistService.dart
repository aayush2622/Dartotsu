import '../../../Core/Services/MediaService.dart';
import '../../../Utils/Functions/GetXFunctions.dart';
import 'AnilistAuth.dart';

class AnilistService extends MediaService implements LoginHandler {
  @override
  String get id => 'anilist';

  @override
  String get name => 'AniList';

  @override
  String get iconPath => 'assets/svg/anilist.svg';

  AnilistAuth get auth => find();

  @override
  bool get isLoggedIn => auth.isLoggedIn;

  @override
  Future<void> login() => auth.login();

  @override
  void logout() => auth.logout();
}
