import 'dart:io';

import 'package:dartotsu/Functions/Functions/RefreshController.dart';

import 'Api/Discord/BaseDiscordRPC.dart';
import 'Api/Discord/Desktop/DesktopRPC.dart';
import 'Api/Discord/Mobile/MobileRPC.dart';
import 'Functions/Functions/GetXFunctions.dart';
import 'Services/MediaService.dart';
import 'Utils/NetworkManager/NetworkManager.dart';
import 'Utils/ThemeManager/ThemeController.dart';

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
