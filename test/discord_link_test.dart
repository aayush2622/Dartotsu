import 'package:dartotsu/Api/Discord/DiscordActivity.dart';
import 'package:dartotsu/Api/Discord/DiscordPresence.dart';
import 'package:dartotsu/Api/Discord/DiscordRoute.dart';
import 'package:dartotsu/Api/Discord/Linked/DiscordOAuth.dart';
import 'package:dartotsu/Core/Services/Api/Pkce.dart';
import 'package:dartotsu/Core/SettingsSync/SettingsScope.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('code challenge is the S256 digest without padding', () {
    expect(
      pkceChallenge('verifier'),
      'iMnq5o6zALKXGivsnlom_0F5_WYda32GHkxlV7mq7hQ',
    );
  });

  test('random tokens use the requested length and url safe characters', () {
    expect(randomToken(64).length, 64);
    expect(randomToken(43).length, 43);
    expect(RegExp(r'^[A-Za-z0-9_-]+$').hasMatch(randomToken(64)), isTrue);
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

  test('connected apps can change the activity name', () {
    expect(
      discordActivityNameMode(
        userToken: false,
        linked: true,
        preference: 'title',
      ),
      'title',
    );
    expect(
      discordActivityNameMode(
        userToken: false,
        linked: true,
        preference: 'custom',
      ),
      'custom',
    );
    expect(
      discordActivityNameMode(
        userToken: false,
        linked: false,
        preference: 'custom',
      ),
      'app',
    );
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

  test('activity payload omits empty fields and caps the buttons', () {
    final plain = discordActivityJson(
      const DiscordPresence(details: 'Watching', largeImage: null, buttons: []),
      applicationId: '1',
    );
    expect(plain['application_id'], '1');
    expect(plain['details'], 'Watching');
    expect(plain.containsKey('state'), isFalse);
    expect(plain.containsKey('platform'), isFalse);
    expect(plain.containsKey('timestamps'), isFalse);
    expect(plain.containsKey('buttons'), isFalse);
    expect(plain['assets'], isEmpty);

    final full = discordActivityJson(
      const DiscordPresence(
        details: 'Reading',
        state: 'Chapter 3',
        start: 10,
        buttons: [
          PresenceButton('a', 'https://a'),
          PresenceButton('b', 'https://b'),
          PresenceButton('c', 'https://c'),
        ],
      ),
      applicationId: '1',
      platform: 'android',
      largeImage: 'big',
    );
    expect(full['state'], 'Chapter 3');
    expect(full['platform'], 'android');
    expect(full['timestamps'], {'start': 10});
    expect((full['assets'] as Map)['large_image'], 'big');
    expect((full['buttons'] as List).length, 2);
    expect((full['buttons'] as List).first, {'label': 'a', 'url': 'https://a'});
  });

  test('gateway activities send button labels and urls separately', () {
    final activity = discordActivityJson(
      const DiscordPresence(
        details: 'Watching',
        buttons: [PresenceButton('a', 'https://a')],
      ),
      applicationId: '1',
      buttonUrlsInMetadata: true,
    );
    expect(activity['buttons'], ['a']);
    expect(activity['metadata'], {
      'button_urls': ['https://a'],
    });
  });
}
