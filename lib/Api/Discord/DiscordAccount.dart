import 'dart:async';
import 'dart:convert';

import 'package:flutter/painting.dart';

import '../../Core/NetworkManager/NetworkManager.dart';
import '../../Core/Preferences/PrefManager.dart';
import '../../Core/State/State.dart';
import '../../Logger.dart';
import 'DiscordRpcRouter.dart';
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
  final loading = false.live;

  @override
  void onInit() {
    signedIn.value = MobileTokenManager.saved;
    final raw = loadCustomData<String>(_cacheKey);
    if (raw != null && signedIn.value) {
      try {
        profile.value = DiscordProfile.fromJson(jsonDecode(raw));
      } catch (_) {}
    }
    if (signedIn.value) unawaited(refresh());
  }

  void onSignedIn() {
    signedIn.value = MobileTokenManager.saved;
    unawaited(refresh());
  }

  Future<void> refresh() async {
    final token = MobileTokenManager().authToken;
    if (token == null || token.isEmpty) return;
    loading.value = true;
    try {
      final res = await find<NetworkManager>().get(
        'https://discord.com/api/v10/users/@me',
        headers: {'Authorization': token},
      );
      if (res.statusCode == 200 && res.data is Map) {
        final next = DiscordProfile.fromJson(
          Map<String, dynamic>.from(res.data as Map),
        );
        profile.value = next;
        saveCustomData<String>(_cacheKey, jsonEncode(next.toJson()));
      } else {
        logger(
          'Discord profile: HTTP ${res.statusCode}',
          logLevel: LogLevel.error,
          tag: 'DISCORD',
        );
      }
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

  Future<void> signOut() async {
    await find<DiscordRpcRouter>().logout();
    removeCustomData(_cacheKey);
    profile.value = null;
    signedIn.value = false;
    PrefName.discordLive.rx.value = false;
  }
}
