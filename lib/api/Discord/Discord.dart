
import 'dart:io';

import 'package:dantotsu/Functions/Function.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:get/get.dart';

import '../../Preferences/PrefManager.dart';
import '../../Preferences/Prefrences.dart';
import '../../Widgets/CustomBottomDialog.dart';
import 'Login.dart';

var Discord = Get.put(_DiscordController());
class _DiscordController extends GetxController {
  var token = "".obs;
  var userid = "".obs;
  var avatar = "".obs;


  bool getSavedToken() {
    token.value = PrefManager.getVal(PrefName.discordToken);
    return token.isNotEmpty;
  }

  Future<void> saveToken(String newToken) async {
    PrefManager.setVal(PrefName.discordToken, newToken);
    token.value = newToken;

  }

  Future<void> removeSavedToken() async {
    token.value = '';
    PrefManager.setVal(PrefName.discordToken, '');
  }

  void warning(BuildContext context) {
    final dialog = CustomBottomDialog(
      title: "Warning",
      viewList: const [
        MarkdownBody(
          data: "Replace this with your markdown content",
        ),
      ],
      negativeText: "Cancel",
      negativeCallback: () {
        Navigator.of(context).pop();
      },
      positiveText: "Login",
      positiveCallback: () {
        Navigator.of(context).pop();
        navigateToPage(context, Platform.isWindows ? const Login() : const LoginPage());
      },
    );

    showCustomBottomDialog(context, dialog);
  }
}

