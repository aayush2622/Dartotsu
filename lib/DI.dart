import 'dart:io';

import 'Api/Discord/BaseDiscordRPC.dart';
import 'Api/Discord/Desktop/DesktopRPC.dart';
import 'Api/Discord/Mobile/MobileRPC.dart';
import 'Functions/Functions/GetXFunctions.dart';
import 'Functions/Network/NetworkManager.dart';
import 'Services/MediaService.dart';
import 'Theme/ThemeController.dart';

class DI {
  static void init() {
    lazyPut(MediaServiceController());
    lazyPut(ThemeController());
    lazyPut(NetworkManager());
    lazyPut<BaseDiscordRPC>(
      Platform.isAndroid || Platform.isIOS ? MobileRPC() : DesktopRPC(),
    );
  }
}
