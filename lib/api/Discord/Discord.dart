import 'dart:convert';
import 'dart:io';

import 'package:dantotsu/Functions/Function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../DataClass/Episode.dart';
import '../../DataClass/Media.dart';
import '../../Preferences/PrefManager.dart';
import '../../Preferences/Preferences.dart';
import '../../Widgets/CustomBottomDialog.dart';
import 'DiscordService.dart';
import 'Login.dart';
import 'RpcExternalAsset.dart';

const String applicationId = "1163925779692912771";
const String smallImage =
    "mp:external/GJEe4hKzr8w56IW6ZKQz43HFVEo8pOtA_C-dJiWwxKo/https/cdn.discordapp.com/app-icons/1163925779692912771/f6b42d41dfdf0b56fcc79d4a12d2ac66.png";
const String smallImageAniList =
    "mp:external/rHOIjjChluqQtGyL_UHk6Z4oAqiVYlo_B7HSGPLSoUg/%3Fsize%3D128/https/cdn.discordapp.com/icons/210521487378087947/a_f54f910e2add364a3da3bb2f2fce0c72.webp";

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
            "By logging in, your discord will now show what you are watching & reading on Dantotsu\n\n\n"
            "If you are on invisible mode, logging in will make you online, when you open Dantotsu.\n\n"
            "This does break the Discord TOS. \nAlthough Discord has never banned anyone for using Custom Rich Presence(what Dantotsu uses), You have still been warned.\n\nDantotsu is not responsible for anything that happens to your account.",
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
          context,
          Platform.isWindows ? const WindowsLogin() : const MobileLogin(),
        );
      },
    );

    showCustomBottomDialog(context, dialog);
  }

  Future<void> setRpc(media mediaData, Episode episode, String total) async {
    try {
      final Map<String, dynamic> rpc = {
        'op': 3,
        'd': {
          'activities': [
            {
              'application_id': applicationId,
              'name': mediaData.userPreferredName,
              'details': episode.title,
              'state': '${episode.number} / $total',
              'type': 3,
              'timestamps': null,
              'assets': {
                'large_image': await mediaData.cover?.getDiscordUrl(),
                'large_text': mediaData.userPreferredName,
                'small_image': smallImage,
                'small_text': 'Dantotsu',
              },
              'buttons': [
                'View ${mediaData.anime != null ? 'Anime' : 'Manga'}',
                '${mediaData.anime != null ? 'Watch' : 'Read'} on Dantotsu',
              ],
              'metadata': {
                'button_urls': [
                  'https://anilist.co/${mediaData.anime != null ? 'anime' : 'manga'}/${mediaData.id}',
                  'https://dantotsu.app/',
                ],
              },
            },
          ],
          'afk': true,
          'since': null,
          'status': 'idle',
        },
      };

      if (DiscordService.isInitialized) {
        DiscordService.stopRPC();
      }
      DiscordService.setPresence(jsonEncode(rpc));
    } catch (e) {
      debugPrint('Error setting RPC: $e');
    }
  }
}
