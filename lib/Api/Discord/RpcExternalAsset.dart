import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import 'Discord.dart';

extension DiscordUrlExtension on String {
  Future<String?> getDiscordUrl() async {
    var token = Discord.token.value;
    if (token.isEmpty) return null;

    const String api =
        "https://discord.com/api/v9/applications/$applicationId/external-assets";
    if (startsWith("mp:")) return this;
    final response = await http.post(
      Uri.parse(api),
      headers: {
        'Authorization': token,
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        "urls": [this]
      }),
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
