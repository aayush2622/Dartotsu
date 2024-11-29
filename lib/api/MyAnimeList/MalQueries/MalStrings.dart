class MalStrings {
  static const String endPoint = "https://api.myanimelist.net/v2/";

  /// User EndPoint
  static const String userEndPoint = "${endPoint}users/";

  /// Me EndPoint
  static const String myEndPoint = "$userEndPoint@me/";

  ///Html EndPoint
  static const String htmlEnd = "https://myanimelist.net/";

  ///Html EndPoint
  static const String dbChangesEnd = "https://myanimelist.net/dbchanges.php";

  ///Character Endpoint
  static const String charaEnd = "${htmlEnd}character.php";

  static const String clientId = '86b35cf02205a0303da3aaea1c9e33f3';

  static const String oauthEndPoint =
      "https://myanimelist.net/v1/oauth2/authorize";

  //oTokenEndPoint
  static const String otokenEndPoint =
      "https://myanimelist.net/v1/oauth2/token";

  //TokenEndPoint
  static const String tokenEndPoint =
      "https://api.myanimelist.net/v2/auth/token";

  static const String authority = "myanimelist.net";

  static const String unencodedPath = "/v1/oauth2/authorize";

  //CDN EndPoint
  static const String cdnEndPoint = "https://cdn.myanimelist.net/";

  static const String apiCdnEP = "https://api-cdn-dev1.al.myanimelist.net/";

  //UserImage EndPoint
  static const String userImageEndPoint = "${cdnEndPoint}images/userimages/";

  static const String apiUserAvatar = "${cdnEndPoint}images/useravatars/";

  static const String jikanV4 = "https://api.jikan.moe/v4/";

  static const String dalWeb = 'https://dailyanimelist.web.app/';
}
