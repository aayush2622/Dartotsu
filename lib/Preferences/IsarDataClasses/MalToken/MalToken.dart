import 'package:isar/isar.dart';

part 'MalToken.g.dart';

@collection
class ResponseToken {
  Id id = Isar.autoIncrement;
  @Index(unique: true, replace: true)
  late String key;

  final String tokenType;
  int expiresIn;
  final String accessToken;
  final String refreshToken;

  ResponseToken({
    required this.tokenType,
    required this.expiresIn,
    required this.accessToken,
    required this.refreshToken,
  });

  factory ResponseToken.fromJson(Map<String, dynamic> json) {
    return ResponseToken(
      tokenType: json['token_type'] as String,
      expiresIn: json['expires_in'] as int,
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "token_type": tokenType,
      "expires_in": expiresIn,
      "access_token": accessToken,
      "refresh_token": refreshToken,
    };
  }
}
