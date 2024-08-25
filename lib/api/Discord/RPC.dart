import 'dart:convert';

import 'package:dantotsu/DataClass/Media.dart';
import 'package:flutter/cupertino.dart';

import '../../Preferences/PrefManager.dart';
import '../../Preferences/Prefrences.dart';
import 'DiscordService.dart';
import 'RpcExternalAsset.dart';

const String applicationId = "1163925779692912771";
const String smallImage =
    "mp:external/GJEe4hKzr8w56IW6ZKQz43HFVEo8pOtA_C-dJiWwxKo/https/cdn.discordapp.com/app-icons/1163925779692912771/f6b42d41dfdf0b56fcc79d4a12d2ac66.png";
const String smallImageAniList =
    "mp:external/rHOIjjChluqQtGyL_UHk6Z4oAqiVYlo_B7HSGPLSoUg/%3Fsize%3D128/https/cdn.discordapp.com/icons/210521487378087947/a_f54f910e2add364a3da3bb2f2fce0c72.webp";

Future<void> setRpc(media mediaData) async {
  try {
    final String? coverUrl =
        await mediaData.cover?.getDiscordUrl(RPCExternalAsset(
      applicationId: applicationId,
      token: PrefManager.getVal(PrefName.discordToken),
    ));

    final Map<String, dynamic> rpc = {
      'op': 3,
      'd': {
        'activities': [
          {
            'application_id': applicationId,
            'name': mediaData.userPreferredName,
            'details': 'ITS PEAK',
            'state': 'INFINITY/10',
            'type': 3,
            'timestamps': null,
            'assets': {
              'large_image': coverUrl,
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

extension DiscordUrlExtension on String {
  Future<String?> getDiscordUrl(RPCExternalAsset assetApi) async {
    try {
      return await assetApi.getDiscordUri(this);
    } catch (e) {
      debugPrint('Error fetching Discord URL: $e');
      return null;
    }
  }
}
