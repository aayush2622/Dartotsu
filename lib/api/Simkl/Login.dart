import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:http/http.dart' as http;

import '../../Functions/Function.dart';
import '../../Theme/LanguageSwitcher.dart';
import '../../Widgets/CustomBottomDialog.dart';
import 'Simkl.dart';

const String clientId =
    '8f2450710290285507d924b9c7772a223f49d235ac68f83586655171cdf4b3f6';

CustomBottomDialog login(BuildContext context) {
  return CustomBottomDialog(
    title: getString.loginTo(getString.simkl),
    viewList: [
      const SizedBox(height: 12),
      _buildLoginButton(
        context,
        onPressed: () async {
          Navigator.pop(context);
          var url =
              'https://simkl.com/oauth/authorize?response_type=code&client_id=$clientId&redirect_uri=dartotsu://simkl';

          var response = await FlutterWebAuth2.authenticate(
            options: const FlutterWebAuth2Options(
              windowName: 'Dartotsu',
              useWebview: true,
            ),
            url: url,
            callbackUrlScheme: 'dartotsu',
          );
          final code = Uri.parse(response).queryParameters['code'] ?? '';
          snackString('Getting Token');
          final token = await fetchToken(code: code);
          await Simkl.saveToken(token);
        },
        icon: 'assets/svg/simkl.svg',
        label: 'Login from Browser',
      ),
      const SizedBox(height: 24),
    ],
  );
}

Future<String> fetchToken({required String code}) async {
  final uri = Uri.parse('https://api.simkl.com/oauth/token');
  var secret = dotenv.env['SIMKL_SECRET'] ?? '';
  final response = await http.post(
    uri,
    headers: {
      'Content-Type': 'application/json',
    },
    body: jsonEncode({
      "code": code,
      "client_id": clientId,
      "client_secret": secret,
      "redirect_uri": "dartotsu://simkl",
      "grant_type": "authorization_code",
    }),
  );

  if (response.statusCode == 200) {
    final Map<String, dynamic> data = jsonDecode(response.body);
    final String accessToken = data['access_token'];
    return accessToken;
  } else {
    throw Exception('Failed to fetch token: ${response.statusCode}');
  }
}

Widget _buildLoginButton(BuildContext context,
    {required Function() onPressed,
    required String icon,
    required String label}) {
  final theme = Theme.of(context).colorScheme;
  return ElevatedButton.icon(
    onPressed: () => onPressed(),
    icon: Padding(
      padding: const EdgeInsets.only(right: 24.0),
      child: SvgPicture.asset(
        icon,
        width: 18,
        height: 18,
        // ignore: deprecated_member_use
        color: theme.onPrimaryContainer,
      ),
    ),
    label: Text(
      label,
      style: TextStyle(
        fontFamily: 'Poppins',
        color: theme.onPrimaryContainer,
        fontWeight: FontWeight.bold,
      ),
    ),
    style: ElevatedButton.styleFrom(
      backgroundColor: theme.primaryContainer,
      padding: const EdgeInsets.only(
        top: 26,
        bottom: 26,
        left: 24,
        right: 42,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
  );
}
