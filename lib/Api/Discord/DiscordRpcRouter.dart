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
  GatewayRPC? _gatewayRpc;
  LinkedRPC? _linkedRpc;
  DesktopRPC? _desktopRpc;
  BaseDiscordRPC? _current;

  GatewayRPC get _gateway => _gatewayRpc ??= GatewayRPC()..onInit();
  LinkedRPC get _linked => _linkedRpc ??= LinkedRPC()..onInit();
  DesktopRPC? get _desktop => isDesktop ? (_desktopRpc ??= DesktopRPC()) : null;

  static DiscordRoute get route => discordRoute(
    desktop: isDesktop,
    userToken: MobileTokenManager.saved,
    linked: DiscordLink.saved,
    live: PrefName.discordLive.value,
    customName: PrefName.discordNameMode.rx.value != 'app',
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

  Future<void> sweep() => Future.wait([
    if (DiscordLink.saved) _linked.sweep(),
    if (MobileTokenManager.saved) _headless.sweep(),
  ]);

  Future<void> shutdown() async {
    await Future.wait([
      ?_desktopRpc?.clear(),
      ?_linkedRpc?.clear(),
      _headless.clear(),
      ?_gatewayRpc?.clear(),
    ]);
    await _gatewayRpc?.gateway.close();
    _current = null;
  }

  Future<void> logout() async {
    await _gatewayRpc?.gateway.close();
    await _headless.logout();
    if (identical(_current, _gatewayRpc) || identical(_current, _headless)) {
      _current = null;
    }
  }

  Future<void> unlink() async {
    await _linkedRpc?.clear();
    await DiscordLink().revoke();
    if (identical(_current, _linkedRpc)) _current = null;
  }

  @override
  void onClose() {
    unawaited(_headless.clear());
    _gatewayRpc?.onClose();
    _linkedRpc?.onClose();
    _desktopRpc?.onClose();
    super.onClose();
  }
}
