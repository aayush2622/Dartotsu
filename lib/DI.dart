import 'dart:async';
import 'dart:io';

import 'Api/Discord/BaseDiscordRPC.dart';
import 'Api/Discord/Desktop/DesktopRPC.dart';
import 'Api/Discord/Mobile/MobileRPC.dart';
import 'Core/Analytics/AnalyticsManager.dart';
import 'Core/NetworkManager/NetworkManager.dart';
import 'Core/NotificationManager/NotificationManager.dart';
import 'Core/Services/MediaServiceController.dart';
import 'Core/ThemeManager/LocaleController.dart';
import 'Core/ThemeManager/ThemeController.dart';
import 'Utils/Functions/GetXFunctions.dart';
import 'Utils/Functions/RefreshController.dart';

/// Single registration point for every long-lived controller.
///
/// Eager (`put`): infrastructure needed immediately at startup.
/// Lazy (`lazyPut`): built on first `find<T>()`.
class DI {
  static void init() {
    // Eager — used during startup / must observe every error.
    put(NetworkManager());
    put(AnalyticsManager());
    unawaited(put(NotificationManager(), permanent: true).initialize());

    // Lazy — resolved on demand.
    lazyPut<ThemeController>(ThemeController.new);
    lazyPut<LocaleController>(LocaleController.new);
    lazyPut<MediaServiceController>(MediaServiceController.new);
    lazyPut<RefreshController>(RefreshController.new);
    lazyPut<BaseDiscordRPC>(
      () => Platform.isAndroid || Platform.isIOS ? MobileRPC() : DesktopRPC(),
    );
  }
}
