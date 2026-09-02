import '../../../Core/Services/MediaService.dart';
import '../../../Utils/Functions/GetXFunctions.dart';
import 'AnilistAuth.dart';

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
}
