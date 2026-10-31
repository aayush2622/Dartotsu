import 'package:dartotsu/Core/SettingsSync/SettingsScope.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  scopeOther();
  test('portable settings are synced', () {
    for (final key in [
      'THEME/theme',
      'THEME/cardStyle',
      'THEME/customColor',
      'THEME/useGoogleFont',
      'COMMON/appLocale',
      'COMMON/animationSpeed',
      'PLAYER/layoutPlayer',
      'READER/layoutReader',
    ]) {
      expect(SettingsScope.syncable(key), isTrue, reason: key);
    }
  });

  test('platform, account and extension settings stay local', () {
    for (final key in [
      'COMMON/extensionOrder/Aniyomi (Desktop)/manga',
      'COMMON/offlineMode',
      'COMMON/discordRpc',
      'COMMON/activityAlerts',
      'COMMON/syncMain',
      'COMMON/alphaUpdates',
      'COMMON/commentsPollMinutes',
      'THEME/useMaterialYou',
      'COMMON/windowState',
      'PROTECTED/appLockHash',
      'OTHER/media/anilist/1',
      'COMMON/settingsSyncGist',
      'PLAYER/playerVolume',
    ]) {
      expect(SettingsScope.syncable(key), isFalse, reason: key);
    }
  });
}

void scopeOther() {
  test('watch, layout and nsfw settings sync, caches and records do not', () {
    for (final key in [
      'OTHER/watchChunkSize',
      'OTHER/trackProgressAnime',
      'OTHER/searchResultView',
      'PLAYER/playerSettings',
      'READER/readerSettings',
      'OTHER/anilistHomeLayout',
      'OTHER/kitsuHideNsfw',
    ]) {
      expect(SettingsScope.syncable(key), isTrue, reason: key);
    }
    for (final key in [
      'OTHER/media/anilist/1',
      'OTHER/resume',
      'OTHER/downloads',
      'OTHER/pendingWrites',
      'OTHER/sourceSubs',
      'OTHER/downloadParallel',
      'OTHER/offlineMode',
      'OTHER/anilistToken',
      'PLAYER/playerSoftwareRender',
      'OTHER/togetherName',
      'OTHER/extensionDefaultFeed',
      'CACHE/sections/home',
    ]) {
      expect(SettingsScope.syncable(key), isFalse, reason: key);
    }
  });

  test('device fields stay out of player and reader settings', () {
    final out = SettingsScope.portable('PLAYER/playerSettings', {
      'speed': 1.5,
      'decoder': 'sw',
      'autoPip': true,
      'subtitleSize': 30,
    });
    expect(out, {'speed': 1.5, 'subtitleSize': 30});

    final merged = SettingsScope.withLocalFields(
      'PLAYER/playerSettings',
      {'speed': 2.0, 'decoder': 'hw'},
      {'speed': 1.0, 'decoder': 'sw'},
    );
    expect(merged, {'speed': 2.0, 'decoder': 'sw'});
  });
}
