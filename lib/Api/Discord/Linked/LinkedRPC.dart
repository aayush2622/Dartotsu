import 'dart:async';
import 'dart:io';

import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/State/State.dart';
import '../../../Logger.dart';
import '../BaseDiscordRPC.dart';
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

  static final _platform = Platform.isIOS
      ? 'ios'
      : Platform.isAndroid
      ? 'android'
      : 'desktop';

  Map<String, dynamic> _payload(DiscordPresence p) => {
    'activities': [
      {
        'application_id': DiscordApp.linkedId,
        'name': p.name,
        'type': p.type.code,
        'platform': _platform,
        'details': p.details,
        if (p.state != null) 'state': p.state,
        if (p.statusDisplay != 0) 'status_display_type': p.statusDisplay,
        if (p.start != null || p.end != null)
          'timestamps': {
            if (p.start != null) 'start': p.start,
            if (p.end != null) 'end': p.end,
          },
        'assets': {
          if (p.largeImage != null) 'large_image': p.largeImage,
          if (p.largeText != null) 'large_text': p.largeText,
          if (p.smallImage != null) 'small_image': p.smallImage,
          if (p.smallText != null) 'small_text': p.smallText,
        },
        if (p.buttons.isNotEmpty)
          'buttons': [
            for (final b in p.buttons.take(2)) {'label': b.label, 'url': b.url},
          ],
      },
    ],
    if (_session != null) 'token': _session,
  };

  @override
  Future<bool> show(DiscordPresence presence, {bool retry = true}) async {
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
        return await show(presence, retry: false);
      }
      if (res.statusCode == 202 && retry) {
        final data = res.data;
        final wait = data is Map && data['retry_after'] is num
            ? (data['retry_after'] as num).toInt()
            : 4000;
        await Future<void>.delayed(
          Duration(milliseconds: wait.clamp(0, 15000)),
        );
        return await show(presence, retry: false);
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

  void _arm() {
    _heartbeat?.cancel();
    _heartbeat = Timer(const Duration(minutes: 9), () {
      final last = _last;
      if (last != null) unawaited(show(last));
    });
  }

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
  Future<void> clear() async {
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
