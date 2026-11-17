import 'dart:async';

import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/State/State.dart';
import '../../../Logger.dart';
import '../BaseDiscordRPC.dart';
import '../DiscordActivity.dart';
import '../DiscordPresence.dart';
import '../Mobile/TokenManager.dart';
import 'DiscordGateway.dart';

class GatewayRPC extends AppController implements BaseDiscordRPC {
  final _assets = <String, Future<String?>>{};
  final _watchers = <Disposer>[];
  late final DiscordGateway gateway = DiscordGateway(
    token: () => MobileTokenManager().authToken ?? '',
    onRejected: () => discordLog('gateway: token rejected'),
  );
  DiscordPresence? _last;

  bool get _wantsConnection =>
      _last != null ||
      PrefName.discordStatus.value != 'online' ||
      PrefName.discordCustomStatus.value.trim().isNotEmpty;

  @override
  void onInit() {
    for (final pref in [
      PrefName.discordStatus.rx,
      PrefName.discordCustomStatus.rx,
    ]) {
      _watchers.add(onChange(pref, (_) => unawaited(_push())));
    }
  }

  @override
  Future<bool> show(DiscordPresence presence) {
    _last = presence;
    return _push();
  }

  @override
  Future<void> clear() async {
    _last = null;
    if (_wantsConnection) {
      await _push();
    } else {
      await gateway.close();
    }
  }

  Future<bool> _push() async {
    if (!MobileTokenManager.saved) return true;
    if (!_wantsConnection) {
      await gateway.close();
      return true;
    }
    try {
      final activities = <Map<String, Object?>>[];
      final custom = PrefName.discordCustomStatus.value.trim();
      if (custom.isNotEmpty) {
        activities.add({'name': 'Custom Status', 'type': 4, 'state': custom});
      }
      final p = _last;
      if (p != null) activities.add(await _activity(p));
      return await gateway.update(
        status: PrefName.discordStatus.value,
        activities: activities,
      );
    } catch (e) {
      logger('Discord gateway update failed: $e', logLevel: LogLevel.error);
      return false;
    }
  }

  Future<Map<String, Object?>> _activity(DiscordPresence p) async {
    final [large, small] = await Future.wait([
      _asset(p.largeImage),
      _asset(p.smallImage),
    ]);
    return discordActivityJson(
      p,
      applicationId: MobileTokenManager.applicationId,
      largeImage: large,
      smallImage: small,
      buttonUrlsInMetadata: true,
    );
  }

  Future<String?> _asset(String? url) {
    if (url == null || url.isEmpty) return Future.value();
    if (!url.startsWith('http')) return Future.value(url);
    if (_assets.length > 200) _assets.remove(_assets.keys.first);
    final lookup = _assets[url] ??= _lookup(url);
    return lookup.then((value) {
      if (value == null) _assets.remove(url);
      return value;
    });
  }

  Future<String?> _lookup(String url) async {
    try {
      final res = await find<NetworkManager>().post(
        'https://discord.com/api/v9/applications/'
        '${MobileTokenManager.applicationId}/external-assets',
        headers: {'Authorization': MobileTokenManager().authToken ?? ''},
        data: {
          'urls': [url],
        },
      );
      final data = res.data;
      if (res.statusCode == 200 && data is List && data.isNotEmpty) {
        final path = (data.first as Map)['external_asset_path'] as String?;
        if (path != null) return 'mp:$path';
      }
    } catch (e) {
      logger('Discord asset lookup failed: $e', tag: 'DISCORD');
    }
    return null;
  }

  @override
  void onClose() {
    for (final watcher in _watchers) {
      watcher.dispose();
    }
    unawaited(gateway.close());
    super.onClose();
  }
}
