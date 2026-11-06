import 'dart:async';
import 'dart:io';

import '../../Core/Preferences/PrefManager.dart';
import '../../Core/State/State.dart';
import 'BaseDiscordRPC.dart';
import 'Desktop/DesktopRPC.dart';
import 'DiscordPresence.dart';
import 'Gateway/GatewayRPC.dart';
import 'Mobile/MobileRPC.dart';
import 'Mobile/TokenManager.dart';

enum DiscordRoute { none, desktop, headless, gateway }

class DiscordRpcRouter extends AppController implements BaseDiscordRPC {
  static bool get isDesktop =>
      Platform.isWindows || Platform.isLinux || Platform.isMacOS;

  final _headless = MobileRPC();
  late final _gateway = GatewayRPC()..onInit();
  late final DesktopRPC? _desktop = isDesktop ? DesktopRPC() : null;
  BaseDiscordRPC? _current;

  GatewayRPC get gatewayRpc => _gateway;

  static DiscordRoute get route {
    if (MobileTokenManager.saved) {
      return PrefName.discordLive.value
          ? DiscordRoute.gateway
          : DiscordRoute.headless;
    }
    return isDesktop ? DiscordRoute.desktop : DiscordRoute.none;
  }

  BaseDiscordRPC? _pick() => switch (route) {
    DiscordRoute.gateway => _gateway,
    DiscordRoute.headless => _headless,
    DiscordRoute.desktop => _desktop,
    DiscordRoute.none => null,
  };

  @override
  Future<bool> show(DiscordPresence presence) async {
    final next = _pick();
    final previous = _current;
    if (previous != null && previous != next) await previous.clear();
    _current = next;
    return next == null ? true : next.show(presence);
  }

  @override
  Future<void> clear() async => _current?.clear();

  Future<void> logout() async {
    await _gateway.gateway.close();
    await _headless.logout();
    _current = null;
  }

  @override
  void onClose() {
    unawaited(_headless.clear());
    _gateway.onClose();
    _desktop?.onClose();
    super.onClose();
  }
}
