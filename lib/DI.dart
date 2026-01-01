import 'dart:io';

import 'Api/Discord/BaseDiscordRPC.dart';
import 'Api/Discord/Desktop/DesktopRPC.dart';
import 'Api/Discord/Mobile/MobileRPC.dart';
import 'Core/Services/MediaService.dart';
import 'Core/NetworkManager/NetworkManager.dart';
import 'Core/ThemeManager/ThemeController.dart';
import 'Utils/Functions/GetXFunctions.dart';
import 'Utils/Functions/RefreshController.dart';

class DI {
  static void init() {
    lazyPut(MediaServiceController());
    lazyPut(RefreshController());
    lazyPut(ThemeController());
    lazyPut(NetworkManager());
    lazyPut<BaseDiscordRPC>(
      Platform.isAndroid || Platform.isIOS ? MobileRPC() : DesktopRPC(),
    );
  }
}
