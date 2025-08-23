import 'package:blur/blur.dart';
import 'package:dartotsu/Functions/Extensions.dart';
import 'package:dartotsu/Theme/LanguageSwitcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../Adaptor/Media/Widgets/MediaCard.dart';
import '../../Animation/SlideInAnimation.dart';
import '../../Functions/Function.dart';
import '../../Services/BaseServiceData.dart';
import '../../Services/MediaService.dart';
import '../../Services/Screens/BaseHomeScreen.dart';
import '../../Services/ServiceSwitcher.dart';
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

part 'HomeScreenDesktop.dart';
part 'HomeScreenMobile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final service = context.currentService();
    final screen = service.homeScreen;
    if (screen == null) {
      return service.notImplemented(widget.runtimeType.toString());
    }
    final isPhone = context.isPhone;
    return isPhone ? const HomeScreenMobile() : const HomeScreenDesktop();
  }
}
