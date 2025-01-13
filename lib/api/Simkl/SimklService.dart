import 'package:dantotsu/Services/BaseServiceData.dart';
import 'package:dantotsu/Services/Screens/BaseHomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../Services/MediaService.dart';
import '../../Services/Screens/BaseLoginScreen.dart';
import 'Screen/SimklHomeScreen.dart';
import 'Simkl.dart';

class SimklService extends MediaService {

  SimklService() {
    Simkl.getSavedToken();
  }
  @override
  String get iconPath => "assets/svg/simkl.svg";

  @override
  BaseServiceData get data => Simkl;

  @override
  BaseHomeScreen get homeScreen => Get.put(SimklHomeScreen(Simkl),tag: "SimklHomeScreen");

  @override
  BaseLoginScreen get loginScreen => Get.put(SimklLoginScreen(Simkl),tag: "SimklLoginScreen");

}

class SimklLoginScreen extends BaseLoginScreen {
  final SimklController Simkl;

  SimklLoginScreen(this.Simkl);
  @override
  void login(BuildContext context) => Simkl.login(context);
}