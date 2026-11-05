import 'dart:async';

import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/State/State.dart';
import '../../../Logger.dart';
import '../BaseDiscordRPC.dart';
import '../DiscordPresence.dart';
import '../Mobile/TokenManager.dart';
import 'DiscordGateway.dart';

class GatewayRPC extends AppController implements BaseDiscordRPC {
  final _assets = <String, String>{};
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
      onChange(pref, (_) => unawaited(_push()));
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
    final large = await _asset(p.largeImage);
    final small = await _asset(p.smallImage);
    return {
      'name': p.name,
      'type': p.type.code,
      'application_id': MobileTokenManager.applicationId,
      'details': p.details,
      if (p.state != null) 'state': p.state,
      if (p.statusDisplay != 0) 'status_display_type': p.statusDisplay,
      if (p.start != null || p.end != null)
        'timestamps': {
          if (p.start != null) 'start': p.start,
          if (p.end != null) 'end': p.end,
        },
      'assets': {
        'large_image': ?large,
        'large_text': ?p.largeText,
        'small_image': ?small,
        'small_text': ?p.smallText,
      },
      if (p.buttons.isNotEmpty) ...{
        'buttons': [for (final b in p.buttons.take(2)) b.label],
        'metadata': {
          'button_urls': [for (final b in p.buttons.take(2)) b.url],
        },
      },
    };
  }

  Future<String?> _asset(String? url) async {
    if (url == null || url.isEmpty) return null;
    if (!url.startsWith('http')) return url;
    final known = _assets[url];
    if (known != null) return known;
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
        if (path != null) return _assets[url] = 'mp:$path';
      }
    } catch (e) {
      logger('Discord asset lookup failed: $e', tag: 'DISCORD');
    }
    return null;
  }

  @override
  void onClose() {
    unawaited(gateway.close());
    super.onClose();
  }
}
