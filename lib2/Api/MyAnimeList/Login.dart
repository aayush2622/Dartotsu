import 'dart:convert';
import 'dart:math';

import 'package:dartotsu/Api/MyAnimeList/MalQueries/MalStrings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:http/http.dart' as http;

import '../../Functions/Function.dart';
import '../../Theme/LanguageSwitcher.dart';
import '../../Widgets/CustomBottomDialog.dart';
import 'Mal.dart';

CustomBottomDialog login(BuildContext context) {
  return CustomBottomDialog(
    title: getString.loginTo(getString.mal),
    viewList: [
      const SizedBox(height: 12),
      _buildLoginButton(
        context,
        onPressed: () async {
          Navigator.pop(context);
          final secureRandom = Random.secure();
          final codeVerifierBytes =
              List<int>.generate(96, (_) => secureRandom.nextInt(256));

          final codeChallenge = base64UrlEncode(codeVerifierBytes)
              .replaceAll('=', '')
              .replaceAll('+', '-')
              .replaceAll('/', '_');

          var url =
              'https://myanimelist.net/v1/oauth2/authorize?response_type=code&client_id=${MalStrings.clientId}&code_challenge=$codeChallenge';

          var response = await FlutterWebAuth2.authenticate(
            options: const FlutterWebAuth2Options(
              windowName: 'Dartotsu',
              useWebview: true,
            ),
            url: url,
            callbackUrlScheme: 'dantotsu',
          );
          final code = Uri.parse(response).queryParameters['code'] ?? '';
          snackString('Getting Token');
          final token = await fetchToken(
            clientId: MalStrings.clientId,
            code: code,
            codeVerifier: codeChallenge,
          );
          await Mal.saveToken(token);
        },
        icon: 'assets/svg/mal.svg',
        label: 'Login from Browser',
      ),
      const SizedBox(height: 24),
    ],
  );
}

Future<String> fetchToken({
  required String clientId,
  required String code,
  required String codeVerifier,
}) async {
  final uri = Uri.parse('https://myanimelist.net/v1/oauth2/token');
  final response = await http.post(
    uri,
    body: {
      'client_id': clientId,
      'code': code,
      'code_verifier': codeVerifier,
      'grant_type': 'authorization_code',
    },
  );

  if (response.statusCode == 200) {
    return response.body;
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
