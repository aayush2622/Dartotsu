import 'dart:async';
import 'dart:io';

import '../../Core/Preferences/PrefManager.dart';
import '../../Core/State/State.dart';
import 'BaseDiscordRPC.dart';
import 'Desktop/DesktopRPC.dart';
import 'DiscordPresence.dart';
import 'DiscordRoute.dart';
import 'Gateway/GatewayRPC.dart';
import 'Linked/DiscordLink.dart';
import 'Linked/LinkedRPC.dart';
import 'Mobile/MobileRPC.dart';
import 'Mobile/TokenManager.dart';

export 'DiscordRoute.dart';

class DiscordRpcRouter extends AppController implements BaseDiscordRPC {
  static bool get isDesktop =>
      Platform.isWindows || Platform.isLinux || Platform.isMacOS;

  final _headless = MobileRPC();
  late final _gateway = GatewayRPC()..onInit();
  late final _linked = LinkedRPC()..onInit();
  late final DesktopRPC? _desktop = isDesktop ? DesktopRPC() : null;
  BaseDiscordRPC? _current;

  GatewayRPC get gatewayRpc => _gateway;

  static DiscordRoute get route => discordRoute(
    desktop: isDesktop,
    userToken: MobileTokenManager.saved,
    linked: DiscordLink.saved,
    live: PrefName.discordLive.value,
  );

  BaseDiscordRPC? _pick() => switch (route) {
    DiscordRoute.gateway => _gateway,
    DiscordRoute.headless => _headless,
    DiscordRoute.linked => _linked,
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

  /// Drop a session left behind by a kill that never reached [shutdown].
  Future<void> sweep() => Future.wait([_linked.sweep(), _headless.sweep()]);

  /// Clear every transport. Called before the window actually closes, because
  /// a headless session otherwise stays up for about 20 minutes.
  Future<void> shutdown() async {
    await Future.wait([
      if (_desktop != null) _desktop.clear(),
      _linked.clear(),
      _headless.clear(),
      _gateway.clear(),
    ]);
    await _gateway.gateway.close();
    _current = null;
  }

  Future<void> logout() async {
    await _gateway.gateway.close();
    await _headless.logout();
    if (_current == _gateway || _current == _headless) _current = null;
  }

  Future<void> unlink() async {
    await _linked.clear();
    await DiscordLink().revoke();
    if (_current == _linked) _current = null;
  }

  @override
  void onClose() {
    unawaited(_headless.clear());
    _gateway.onClose();
    _linked.onClose();
    _desktop?.onClose();
    super.onClose();
  }
}
