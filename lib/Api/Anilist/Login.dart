import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';

import '../../Functions/Function.dart';
import '../../Theme/LanguageSwitcher.dart';
import '../../Widgets/AlertDialogBuilder.dart';
import '../../Widgets/CustomBottomDialog.dart';
import 'Anilist.dart';

CustomBottomDialog login(BuildContext context) {
  return CustomBottomDialog(
    title: getString.loginTo(getString.anilist),
    viewList: [
      const SizedBox(height: 38),
      _buildLoginButton(
        context,
        onPressed: () async {
          Navigator.pop(context);
          const url =
              'https://anilist.co/api/v2/oauth/authorize?client_id=14959&response_type=token';
          var response = await FlutterWebAuth2.authenticate(
            options: const FlutterWebAuth2Options(
              windowName: 'Dartotsu',
              useWebview: true,
            ),
            url: url,
            callbackUrlScheme: 'dantotsu',
          );
          final token = RegExp(r'(?<=access_token=).+(?=&token_type)')
              .firstMatch(response.toString())
              ?.group(0);
          if (token != null) Anilist.saveToken(token);
        },
        icon: 'assets/svg/anilist.svg',
        label: 'Login from Browser',
      ),
      const SizedBox(height: 16),
      _buildLoginButton(
        context,
        onPressed: () {
          openLinkInBrowser(
              'https://anilist.co/api/v2/oauth/authorize?client_id=21003&response_type=token');
          var token = '';
          AlertDialogBuilder(context)
            ..setTitle('Login with token')
            ..setMessage('Please paste the token here')
            ..setCustomView(
              TextField(
                decoration: const InputDecoration(hintText: 'Token'),
                onChanged: (value) => (token = value),
              ),
            )
            ..setPositiveButton(
                'Ok', () async => await Anilist.saveToken(token))
            ..setNegativeButton('Cancel', null)
            ..setOnDismissListener(() => Navigator.pop(context))
            ..show();
        },
        icon: 'assets/svg/anilist.svg',
        label: 'Login with token',
      ),
      const SizedBox(height: 24),
    ],
  );
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
