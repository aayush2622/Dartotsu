import 'dart:convert';
import 'package:http/http.dart' as http;
class AniListAuth {

  Future<String> getToken(String code) async {
    final response = await http.post(
      Uri.parse('https://anilist.co/api/v2/oauth/token'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'grant_type': 'authorization_code',
        'client_id': 'YOUR_CLIENT_ID',
        'client_secret': 'YOUR_CLIENT_SECRET',
        'redirect_uri': 'YOUR_REDIRECT_URI',
        'code': code,
      }),
    );
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['access_token'];
    } else {
      throw Exception('Failed to get token');
    }
  }
}
