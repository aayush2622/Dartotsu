import 'dart:io';

import 'Api/Discord/BaseDiscordRPC.dart';
import 'Api/Discord/Desktop/DesktopRPC.dart';
import 'Api/Discord/Mobile/MobileRPC.dart';
import 'Core/Analytics/AnalyticsManager.dart';
import 'Core/NetworkManager/NetworkManager.dart';
import 'Core/NotificationManager/NotificationManager.dart';
import 'Core/Services/MediaServiceController.dart';
import 'Core/ThemeManager/ThemeController.dart';
import 'Utils/Functions/GetXFunctions.dart';
import 'Utils/Functions/RefreshController.dart';

class DI {
  static void init() {
    put(AnalyticsManager());
    lazyPut(MediaServiceController());
    lazyPut(RefreshController());
    lazyPut(ThemeController());
    lazyPut(NetworkManager());
    lazyPut<BaseDiscordRPC>(
      Platform.isAndroid || Platform.isIOS ? MobileRPC() : DesktopRPC(),
    );
    put(NotificationManager(), permanent: true).initialize();
  }
}
