import 'package:dartotsu/Api/Discord/BaseDiscordRPC.dart';
import 'package:dartotsu/Core/Services/Model/Media.dart';
import 'package:dartotsu_extension_bridge/Models/DEpisode.dart';
import 'package:get/get.dart';

import '../../../Utils/Functions/GetXFunctions.dart';
import '../../../Core/NetworkManager/NetworkManager.dart';
import 'TokenManager.dart';

class MobileRPC extends GetxController implements BaseDiscordRPC {
  final NetworkManager network = find();
  final MobileTokenManager tokenManager = MobileTokenManager();
  String? _activityToken;

  @override
  Future<void> setRpc(
    Media mediaData, {
    DEpisode? episode,
    int? currentTime,
    int? endTime,
  }) async {
    final token = await tokenManager.getToken();
    final isAnime = mediaData.anime != null;

    final now = DateTime.now().millisecondsSinceEpoch;
    final start = now - ((currentTime ?? 0) * 1000);
    final end =
        endTime != null ? now + ((endTime - (currentTime ?? 0)) * 1000) : null;

    final payload = {
      "activities": [
        {
          "application_id": MobileTokenManager.clientId,
          "name": mediaData.mainName,
          "details": mediaData.mainName,
          "state":
              "${isAnime ? "Episode" : "Chapter"} ${episode?.episodeNumber ?? "?"}",
          "type": 3,
          "timestamps": {
            "start": start,
            if (end != null) "end": end,
          },
          "platform": "desktop",
          "assets": {
            "large_image": episode?.thumbnail ?? mediaData.cover,
            'large_text': mediaData.userPreferredName,
            'small_image':
                "https://cdn.discordapp.com/emojis/1305525420938100787.gif?size=48&animated=true&name=dartotsu",
            'small_text': 'Dartotsu',
          },
          "buttons": [
            {
              "label": "View Anime",
              "url": mediaData.shareLink,
            },
            {
              "label": "Open Dartotsu",
              "url": "https://github.com/aayush2622/Dartotsu",
            }
          ],
        }
      ],
      if (_activityToken != null) "token": _activityToken,
    };

    try {
      final res = await network.post(
        "https://discord.com/api/v10/users/@me/headless-sessions",
        headers: {
          "Authorization": "Bearer $token",
          "Content-Type": "application/json",
        },
        data: payload,
      );

      if (res.statusCode != 200) {
        throw NetworkException(
          statusCode: res.statusCode,
          message: res.statusMessage,
          data: res.data,
        );
      }

      _activityToken = res.data["token"];
    } on NetworkException catch (e) {
      if (e.statusCode == 401) {
        await tokenManager.clear();
        return setRpc(
          mediaData,
          episode: episode,
          currentTime: currentTime,
          endTime: endTime,
        );
      }
      rethrow;
    }
  }

  @override
  Future<void> pauseRpc() async {
    if (_activityToken == null) return;

    final token = await tokenManager.getToken();

    try {
      await network.post(
        "https://discord.com/api/v10/users/@me/headless-sessions/delete",
        headers: {
          "Authorization": "Bearer $token",
        },
        data: {
          "token": _activityToken,
        },
      );
    } finally {
      _activityToken = null;
    }
  }

  @override
  Future<void> resumeRpc() async {
    // caller should re-send setRpc()
  }

  @override
  Future<void> removeRpc() async {
    await pauseRpc();
  }

  Future<void> logout() async {
    await pauseRpc();
    await tokenManager.clear();
  }

  @override
  void onClose() {
    removeRpc();
    super.onClose();
  }
}
