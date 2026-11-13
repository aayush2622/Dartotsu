const discordLinkScopes = 'openid sdk.social_layer_presence';

String discordAuthorizeUrl({
  required String clientId,
  required String redirect,
  required String challenge,
  required String state,
}) => Uri.https('discord.com', '/oauth2/authorize', {
  'client_id': clientId,
  'scope': discordLinkScopes,
  'response_type': 'code',
  'redirect_uri': redirect,
  'code_challenge': challenge,
  'code_challenge_method': 'S256',
  'state': state,
  'prompt': 'consent',
}).toString();

class DiscordOAuthGrant {
  final String accessToken;
  final String? refreshToken;
  final int expiresIn;

  const DiscordOAuthGrant({
    required this.accessToken,
    required this.refreshToken,
    required this.expiresIn,
  });

  static DiscordOAuthGrant? parse(Object? data) {
    if (data is! Map) return null;
    final access = data['access_token'];
    if (access is! String || access.isEmpty) return null;
    final refresh = data['refresh_token'];
    final expires = data['expires_in'];
    return DiscordOAuthGrant(
      accessToken: access,
      refreshToken: refresh is String && refresh.isNotEmpty ? refresh : null,
      expiresIn: expires is num ? expires.toInt() : 604800,
    );
  }
}
