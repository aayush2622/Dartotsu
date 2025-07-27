import 'package:blur/blur.dart';
import 'package:dartotsu/Functions/Extensions.dart';
import 'package:dartotsu/Theme/LanguageSwitcher.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../Adaptor/Media/Widgets/MediaCard.dart';
import '../../Animation/SlideInAnimation.dart';
import '../../Animation/SlideUpAnimation.dart';
import '../../Functions/Function.dart';
import '../../Services/BaseServiceData.dart';
import '../../Services/MediaService.dart';
import '../../Services/Screens/BaseHomeScreen.dart';
import '../../Services/ServiceSwitcher.dart';
import '../../Theme/Colors.dart';
import '../../Theme/ThemeProvider.dart';
import '../../Widgets/CachedNetworkImage.dart';
import '../../Widgets/CustomBottomDialog.dart';
import '../../Widgets/LoadSvg.dart';
import '../../Widgets/ScrollConfig.dart';
import '../Home/Widgets/LoadingWidget.dart';
import '../MediaList/MediaListScreen.dart';
import '../Settings/SettingsBottomSheet.dart';
import 'Widgets/AvtarWidget.dart';
import 'Widgets/NotificationBadge.dart';

part 'HomeScreenGlassDesktop.dart';

part 'HomeScreenMaterialDesktop.dart';

part 'HomeScreenGlassMobile.dart';

part 'HomeScreenMaterialMobile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var service = context.currentService();
    var screen = service.homeScreen;
    if (screen == null) {
      return service.notImplemented(widget.runtimeType.toString());
    }
    screen.init();

    final useGlass = context.themeNotifierListen.useGlassMode;

    if (useGlass) {
      return context.isPhone
          ? const HomeScreenGlassMobile()
          : const HomeScreenGlassDesktop();
    } else {
      return context.isPhone
          ? const HomeScreenMaterialMobile()
          : const HomeScreenGlassDesktop();
    }
  }
}
