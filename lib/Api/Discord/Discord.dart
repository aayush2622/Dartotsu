import 'dart:convert';
import 'dart:io';

import 'package:dartotsu/Functions/Function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../DataClass/Episode.dart';
import '../../DataClass/Media.dart';
import '../../Preferences/PrefManager.dart';
import '../../Widgets/CustomBottomDialog.dart';
import 'DiscordService.dart';
import 'Login.dart';
import 'RpcExternalAsset.dart';

const String applicationId = "1163925779692912771";
const String smallImage =
    "https://cdn.discordapp.com/emojis/1305525420938100787.gif?size=48&animated=true&name=dartotsu";
const String smallImageAniList =
    "mp:external/rHOIjjChluqQtGyL_UHk6Z4oAqiVYlo_B7HSGPLSoUg/%3Fsize%3D128/https/cdn.discordapp.com/icons/210521487378087947/a_f54f910e2add364a3da3bb2f2fce0c72.webp";

var Discord = Get.put(_DiscordController());

class _DiscordController extends GetxController {
  var token = "".obs;
  var userName = "".obs;
  var avatar = "".obs;

  bool getSavedToken() {
    token.value = loadData(PrefName.discordToken);
    userName.value = loadData(PrefName.discordUserName);
    avatar.value = loadData(PrefName.discordAvatar);
    return token.isNotEmpty;
  }

  Future<void> saveToken(String newToken) async {
    saveData(PrefName.discordToken, newToken);
    token.value = newToken;
  }

  Future<void> removeSavedToken() async {
    token.value = '';
    userName.value = '';
    avatar.value = '';
    saveData(PrefName.discordToken, '');
    saveData(PrefName.discordUserName, '');
    saveData(PrefName.discordAvatar, '');
  }

  void warning(BuildContext context) {
    final dialog = CustomBottomDialog(
      title: "Warning",
      viewList: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          child: Text(
            "By logging in, your discord will now show what you are watching & reading on Dartotsu\n\n\n"
            "If you are on invisible mode, logging in will make you online, when you open Dartotsu.\n\n"
            "This does break the Discord TOS. \nAlthough Discord has never banned anyone for using Custom Rich Presence(what Dartotsu uses), You have still been warned.\n\ndartotsu is not responsible for anything that happens to your account.",
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
          Platform.isLinux ? const LinuxLogin() : const MobileLogin(),
        );
      },
    );

    showCustomBottomDialog(context, dialog);
  }

  Future<void> setRpc(
    Media mediaData, {
    Episode? episode,
    int? eTime,
    int? currentTime,
  }) async {
    if (token.isEmpty) return;

    var isAnime = mediaData.anime != null;
    var totalFromSource = isAnime
        ? mediaData.anime?.episodes?.values.last.number
        : mediaData.manga?.chapters?.last.number;

    var totalFromMedia = isAnime
        ? mediaData.anime?.totalEpisodes
        : mediaData.manga?.totalChapters;

    var total = (totalFromMedia ?? totalFromSource ?? "??").toString();
    DateTime startTime = DateTime.now();
    DateTime initPosition =
        DateTime.now().subtract(Duration(seconds: currentTime ?? 0));
    DateTime endTime = startTime.add(
      Duration(
        seconds: (eTime?.toInt() ?? 24 * 60 * 60) - (currentTime ?? 0),
      ),
    );
    int startTimestamp = initPosition.millisecondsSinceEpoch;
    int endTimestamp = endTime.millisecondsSinceEpoch;
    var smallIcon = await smallImage.getDiscordUrl();
    try {
      final Map<String, dynamic> rpc = {
        'op': 3,
        'd': {
          'activities': [
            {
              'application_id': applicationId,
              'name': mediaData.userPreferredName,
              'details': episode?.title,
              'state':
                  '${isAnime ? "Episode" : "Chapter"}: ${episode?.number}/$total',
              'type': 3,
              "timestamps": {"end": endTimestamp, "start": startTimestamp},
              'assets': {
                'large_image': await (episode?.thumb ?? mediaData.cover)
                        ?.getDiscordUrl() ??
                    smallIcon,
                'large_text': mediaData.userPreferredName,
                'small_image': smallIcon,
                'small_text': 'Dartotsu',
              },
              'buttons': [
                'View ${isAnime ? 'Anime' : 'Manga'}',
                '${isAnime ? 'Watch' : 'Read'} on Dartotsu',
              ],
              'metadata': {
                'button_urls': [
                  'https://anilist.co/${isAnime ? 'anime' : 'manga'}/${mediaData.id}',
                  'https://github.com/aayush2622/Dartotsu',
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
