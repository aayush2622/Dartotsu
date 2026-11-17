import 'dart:async';

import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/State/State.dart';
import '../../../Logger.dart';
import '../BaseDiscordRPC.dart';
import '../DiscordActivity.dart';
import '../DiscordApp.dart';
import '../DiscordPresence.dart';
import '../Mobile/TokenManager.dart';
import 'DiscordLink.dart';

class LinkedRPC extends AppController implements BaseDiscordRPC {
  static const _sessionKey = 'DiscordLinkSession';

  final link = DiscordLink();
  final network = find<NetworkManager>();
  String? _session;
  DiscordPresence? _last;
  Timer? _heartbeat;
  Future<void> _queue = Future.value();

  Map<String, dynamic> _payload(DiscordPresence p) => {
    'activities': [
      discordActivityJson(
        p,
        applicationId: DiscordApp.linkedId,
        platform: discordPlatform,
        largeImage: p.largeImage,
        smallImage: p.smallImage,
      ),
    ],
    if (_session != null) 'token': _session,
  };

  Future<T> _serial<T>(Future<T> Function() job) {
    final run = _queue.then((_) => job());
    _queue = run.then((_) {}, onError: (_) {});
    return run;
  }

  @override
  Future<bool> show(DiscordPresence presence) => _serial(() => _show(presence));

  Future<bool> _show(DiscordPresence presence, {bool retry = true}) async {
    if (!DiscordLink.saved) {
      discordLog('linked show skipped: not connected');
      return false;
    }
    _last = presence;
    final payload = _payload(presence);
    discordLog(
      'linked show: session=${_session != null} '
      'activities=${discordSafe(payload['activities'])}',
    );
    try {
      final token = await link.accessToken();
      if (token == null || token.isEmpty) {
        discordLog('linked show: no access token', level: LogLevel.error);
        return false;
      }
      final res = await network.post(
        'https://discord.com/api/v10/users/@me/headless-sessions',
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
        data: payload,
      );
      discordLog(
        'linked show: HTTP ${res.statusCode} body=${discordSafe(res.data)}',
      );
      if (res.statusCode == 401 && retry) {
        _session = null;
        link.dropAccess();
        return await _show(presence, retry: false);
      }
      if (res.statusCode == 202 && retry) {
        final data = res.data;
        final wait = data is Map && data['retry_after'] is num
            ? (data['retry_after'] as num).toInt()
            : 4000;
        await Future<void>.delayed(
          Duration(milliseconds: wait.clamp(0, 15000)),
        );
        return await _show(presence, retry: false);
      }
      if (res.statusCode != 200 || res.data is! Map) return false;
      _remember(res.data['token'] as String?);
      _arm();
      return _session != null;
    } catch (e) {
      discordLog('linked show failed: $e', level: LogLevel.error);
      return false;
    }
  }

  void _arm([Duration after = const Duration(minutes: 9)]) {
    _heartbeat?.cancel();
    _heartbeat = Timer(after, () => unawaited(_refresh()));
  }

  Future<void> _refresh() => _serial(() async {
    final last = _last;
    if (last == null) return;
    final shown = await _show(last);
    if (!shown && _last != null && DiscordLink.saved) {
      _arm(const Duration(minutes: 1));
    }
  });

  Future<void> sweep() async {
    final saved = loadCustomData<String>(
      _sessionKey,
      location: PrefLocation.PROTECTED,
    );
    if (saved == null || saved.isEmpty || _session != null) return;
    _session = saved;
    await clear();
  }

  void _remember(String? token) {
    _session = token;
    if (token == null || token.isEmpty) {
      removeCustomData(_sessionKey, location: PrefLocation.PROTECTED);
      return;
    }
    saveCustomData<String>(
      _sessionKey,
      token,
      location: PrefLocation.PROTECTED,
    );
  }

  @override
  Future<void> clear() => _serial(_clear);

  Future<void> _clear() async {
    _heartbeat?.cancel();
    _heartbeat = null;
    final session = _session;
    _last = null;
    _session = null;
    if (session == null || !DiscordLink.saved) return;
    try {
      final token = await link.accessToken();
      if (token == null) return;
      final res = await network.post(
        'https://discord.com/api/v10/users/@me/headless-sessions/delete',
        headers: {'Authorization': 'Bearer $token'},
        data: {'token': session},
      );
      discordLog('linked clear: HTTP ${res.statusCode}');
      if (res.statusCode >= 200 && res.statusCode < 300) _remember(null);
    } catch (e) {
      discordLog('linked clear failed: $e', level: LogLevel.error);
    }
  }

  @override
  void onClose() {
    _heartbeat?.cancel();
    unawaited(clear());
    super.onClose();
  }
}
