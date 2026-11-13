import 'dart:async';
import 'dart:convert';

import 'package:flutter/painting.dart';

import '../../Core/NetworkManager/NetworkManager.dart';
import '../../Core/Preferences/PrefManager.dart';
import '../../Core/State/State.dart';
import '../../Logger.dart';
import 'DiscordRpcRouter.dart';
import 'Linked/DiscordLink.dart';
import 'Mobile/TokenManager.dart';

enum DiscordStatus {
  online('online', Color(0xFF23A55A)),
  idle('idle', Color(0xFFF0B232)),
  dnd('dnd', Color(0xFFF23F43)),
  invisible('invisible', Color(0xFF80848E));

  final String api;
  final Color color;

  const DiscordStatus(this.api, this.color);

  static DiscordStatus of(String value) => values.firstWhere(
    (s) => s.api == value,
    orElse: () => DiscordStatus.online,
  );
}

class DiscordProfile {
  final String id;
  final String username;
  final String? globalName;
  final String? avatar;
  final String? banner;
  final int? accentColor;

  const DiscordProfile({
    required this.id,
    required this.username,
    this.globalName,
    this.avatar,
    this.banner,
    this.accentColor,
  });

  factory DiscordProfile.fromJson(Map<String, dynamic> j) => DiscordProfile(
    id: '${j['id']}',
    username: '${j['username'] ?? ''}',
    globalName: j['global_name'] as String?,
    avatar: j['avatar'] as String?,
    banner: j['banner'] as String?,
    accentColor: j['accent_color'] as int?,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'username': username,
    'global_name': globalName,
    'avatar': avatar,
    'banner': banner,
    'accent_color': accentColor,
  };

  String get displayName =>
      (globalName?.isNotEmpty ?? false) ? globalName! : username;

  String avatarUrl([int size = 128]) {
    final hash = avatar;
    if (hash == null) {
      final index = ((int.tryParse(id) ?? 0) >> 22) % 6;
      return 'https://cdn.discordapp.com/embed/avatars/$index.png';
    }
    final ext = hash.startsWith('a_') ? 'gif' : 'png';
    return 'https://cdn.discordapp.com/avatars/$id/$hash.$ext?size=$size';
  }

  String? bannerUrl([int size = 480]) {
    final hash = banner;
    if (hash == null) return null;
    final ext = hash.startsWith('a_') ? 'gif' : 'png';
    return 'https://cdn.discordapp.com/banners/$id/$hash.$ext?size=$size';
  }
}

class DiscordAccount extends AppController {
  static const _cacheKey = 'DiscordProfile';

  final profile = Live<DiscordProfile?>(null);
  final signedIn = false.live;
  final linked = false.live;
  final tokenSaved = false.live;
  final loading = false.live;

  @override
  void onInit() {
    _syncFlags();
    final raw = loadCustomData<String>(_cacheKey);
    if (raw != null && signedIn.value) {
      try {
        profile.value = DiscordProfile.fromJson(jsonDecode(raw));
      } catch (_) {}
    }
    if (signedIn.value) unawaited(refresh());
  }

  void onSignedIn() => onCredentialsChanged();

  void onCredentialsChanged() {
    _syncFlags();
    if (signedIn.value) {
      unawaited(refresh());
    } else {
      profile.value = null;
      removeCustomData(_cacheKey);
    }
  }

  void _syncFlags() {
    linked.value = DiscordLink.saved;
    tokenSaved.value = MobileTokenManager.saved;
    signedIn.value = linked.value || tokenSaved.value;
  }

  Future<void> refresh() async {
    final header = await _authorization();
    if (header == null) return;
    loading.value = true;
    try {
      final next = await _profile(header);
      if (next == null) return;
      profile.value = next;
      saveCustomData<String>(_cacheKey, jsonEncode(next.toJson()));
    } catch (e) {
      logger(
        'Discord profile failed: $e',
        logLevel: LogLevel.error,
        tag: 'DISCORD',
      );
    } finally {
      loading.value = false;
    }
  }

  Future<String?> _authorization() async {
    if (DiscordLink.saved) {
      final access = await DiscordLink().accessToken();
      if (access != null && access.isNotEmpty) return 'Bearer $access';
    }
    final user = MobileTokenManager().authToken;
    if (user == null || user.isEmpty) return null;
    return user;
  }

  Future<DiscordProfile?> _profile(String header) async {
    final network = find<NetworkManager>();
    final me = await network.get(
      'https://discord.com/api/v10/users/@me',
      headers: {'Authorization': header},
    );
    if (me.statusCode == 200 && me.data is Map) {
      return DiscordProfile.fromJson(Map<String, dynamic>.from(me.data as Map));
    }
    logger(
      'Discord profile: HTTP ${me.statusCode}',
      logLevel: LogLevel.error,
      tag: 'DISCORD',
    );
    if (!header.startsWith('Bearer ')) return null;
    final oauth = await network.get(
      'https://discord.com/api/v10/oauth2/@me',
      headers: {'Authorization': header},
    );
    if (oauth.statusCode != 200 || oauth.data is! Map) return null;
    final user = (oauth.data as Map)['user'];
    if (user is! Map) return null;
    return DiscordProfile.fromJson(Map<String, dynamic>.from(user));
  }

  Future<void> signOut() async {
    await find<DiscordRpcRouter>().logout();
    PrefName.discordLive.rx.value = false;
    onCredentialsChanged();
  }

  Future<void> disconnect() async {
    await find<DiscordRpcRouter>().unlink();
    onCredentialsChanged();
  }
}
