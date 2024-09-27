import 'dart:io';

import 'package:dantotsu/Functions/Function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Preferences/PrefManager.dart';
import '../../Preferences/Preferences.dart';
import '../../Widgets/CustomBottomDialog.dart';
import 'Login.dart';

var Discord = Get.put(_DiscordController());

class _DiscordController extends GetxController {
  var token = "".obs;
  var userName = "".obs;
  var avatar = "".obs;

  bool getSavedToken() {
    token.value = PrefManager.getVal(PrefName.discordToken);
    userName.value = PrefManager.getVal(PrefName.discordUserName);
    avatar.value = PrefManager.getVal(PrefName.discordAvatar);
    return token.isNotEmpty;
  }

  Future<void> saveToken(String newToken) async {
    PrefManager.setVal(PrefName.discordToken, newToken);
    token.value = newToken;
  }

  Future<void> removeSavedToken() async {
    token.value = '';
    userName.value = '';
    avatar.value = '';
    PrefManager.setVal(PrefName.discordToken, '');
    PrefManager.setVal(PrefName.discordUserName, '');
    PrefManager.setVal(PrefName.discordAvatar, '');
  }

  void warning(BuildContext context) {
    final dialog = CustomBottomDialog(
      title: "Warning",
      viewList: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          child: Text(
            "By logging in, your discord will now show what you are watching & reading on Dantotsu\n\n\n""If you are on invisible mode, logging in will make you online, when you open Dantotsu.\n\n""This does break the Discord TOS. \nAlthough Discord has never banned anyone for using Custom Rich Presence(what Dantotsu uses), You have still been warned.\n\nDantotsu is not responsible for anything that happens to your account.",
          ),
        )
      ],
      negativeText: "Cancel",
      negativeCallback: () {
        Navigator.of(context).pop();
      },
      positiveText: "Login",
      positiveCallback: () {
        Navigator.of(context).pop();
        navigateToPage(
            context, Platform.isWindows ? const Login() : const LoginPage());
      },
    );

    showCustomBottomDialog(context, dialog);
  }
}
