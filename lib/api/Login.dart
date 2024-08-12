import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
class AniListAuth {
  final String clientId;
  final String clientSecret;
  final String redirectUri;

  AniListAuth({
    required this.clientId,
    required this.clientSecret,
    required this.redirectUri,
  });

  Future<void> handleRedirect(Uri uri) async {
    if (uri.queryParameters.containsKey('code')) {
      final String code = uri.queryParameters['code']!;
      await exchangeCodeForToken(code);
    } else {
      throw 'Authorization code not found';
    }
  }

  Future<void> exchangeCodeForToken(String code) async {
    final Uri tokenUrl = Uri.parse('https://anilist.co/api/v2/oauth/token');
    final response = await http.post(
      tokenUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: json.encode({
        'grant_type': 'authorization_code',
        'client_id': clientId,
        'client_secret': clientSecret,
        'redirect_uri': redirectUri,
        'code': code,
      }),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      final String accessToken = responseData['access_token'];
      debugPrint('Access Token: $accessToken');
    } else {
      throw 'Failed to exchange code for token';
    }
  }
}
