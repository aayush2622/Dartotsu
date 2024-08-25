import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class RPCExternalAsset {
  final String applicationId;
  final String token;

  RPCExternalAsset({
    required this.applicationId,
    required this.token,

  });

  Future<String?> getDiscordUri(String imageUrl) async {
    final String api = "https://discord.com/api/v9/applications/$applicationId/external-assets";
    if (imageUrl.startsWith("mp:")) return imageUrl;
    final response = await http.post(
      Uri.parse(api),
      headers: {
        'Authorization': token,
        'Content-Type': 'application/json',
      },
      body: jsonEncode({"urls": [imageUrl]}),
    );

    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      return "mp: ${responseBody[0]['external_asset_path']}";
    } else {
      debugPrint('Error: ${response.statusCode}');
      return null;
    }
  }
}
