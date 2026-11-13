import 'dart:math';

import 'package:dartotsu/Api/Discord/DiscordRoute.dart';
import 'package:dartotsu/Api/Discord/Linked/DiscordOAuth.dart';
import 'package:dartotsu/Core/SettingsSync/SettingsScope.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('code challenge is the S256 digest without padding', () {
    expect(
      discordCodeChallenge('verifier'),
      'iMnq5o6zALKXGivsnlom_0F5_WYda32GHkxlV7mq7hQ',
    );
  });

  test('verifier uses the requested length', () {
    expect(discordCodeVerifier(Random(1)).length, 64);
    expect(discordCodeVerifier(Random(1), length: 43).length, 43);
  });

  test('authorize url asks for the presence scopes and a consent screen', () {
    final url = Uri.parse(
      discordAuthorizeUrl(
        clientId: '1',
        redirect: 'dartotsu://discord',
        challenge: 'abc',
        state: 'xyz',
      ),
    );
    expect(url.host, 'discord.com');
    expect(url.path, '/oauth2/authorize');
    expect(url.queryParameters['scope'], discordLinkScopes);
    expect(url.queryParameters['code_challenge_method'], 'S256');
    expect(url.queryParameters['redirect_uri'], 'dartotsu://discord');
    expect(url.queryParameters['prompt'], 'consent');
    expect(url.queryParameters['state'], 'xyz');
  });

  test('grant parse keeps a missing refresh token for refresh responses', () {
    final grant = DiscordOAuthGrant.parse({
      'access_token': 'access',
      'expires_in': 30,
    });
    expect(grant?.accessToken, 'access');
    expect(grant?.refreshToken, isNull);
    expect(grant?.expiresIn, 30);
  });

  test('grant parse rejects a body without an access token', () {
    expect(DiscordOAuthGrant.parse({'refresh_token': 'r'}), isNull);
    expect(DiscordOAuthGrant.parse('nope'), isNull);
  });

  test('route prefers a live user token, then the linked app', () {
    expect(
      discordRoute(desktop: true, userToken: true, linked: true, live: true),
      DiscordRoute.gateway,
    );
    expect(
      discordRoute(desktop: true, userToken: true, linked: true, live: false),
      DiscordRoute.linked,
    );
    expect(
      discordRoute(desktop: false, userToken: true, linked: false, live: false),
      DiscordRoute.headless,
    );
    expect(
      discordRoute(desktop: true, userToken: false, linked: false, live: false),
      DiscordRoute.desktop,
    );
    expect(
      discordRoute(
        desktop: false,
        userToken: false,
        linked: false,
        live: false,
      ),
      DiscordRoute.none,
    );
  });

  test('discord grants and sessions stay on the device', () {
    for (final name in [
      'DiscordLinkAccess',
      'DiscordLinkRefresh',
      'DiscordLinkExpiry',
      'DiscordLinkSession',
      'DiscordHeadlessSession',
    ]) {
      expect(SettingsScope.secret('PROTECTED/$name'), isFalse, reason: name);
    }
    expect(SettingsScope.secret('PROTECTED/DiscordToken'), isTrue);
  });
}
