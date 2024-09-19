import 'package:dantotsu/Widgets/AlertDialogBuilder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../Functions/Function.dart';
import '../../api/Anilist/Anilist.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 64),
            Text(
              'Dantotsu',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w100,
                fontSize: 64,
                color: theme.primary,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'The NEW Best Anime & Manga app\nor Android.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 38),
            _buildLoginButton(
              context,
              onPressed: () => openLinkInBrowser(
                  'https://anilist.co/api/v2/oauth/authorize?client_id=14959&response_type=token'),
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
                      onChanged: (value) => (token = value),
                    ),
                  )
                  ..setPositiveButton('Ok', () async => Anilist.saveToken(token))
                  ..setNegativeButton('Cancel', null)
                  ..show();
              },
              icon: 'assets/svg/anilist.svg',
              label: 'Login with token',
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildSocialIcon(Icons.discord, 'https://discord.gg/4HPZ5nAWw'),
                const SizedBox(width: 16),
                _buildSocialIcon(Bootstrap.github,
                    'https://github.com/aayush2622/dantotsu-pc'),
                const SizedBox(width: 16),
                _buildSocialIcon(
                    Icons.telegram_sharp, 'https://t.me/+gzBCQExtLQo1YTNh'),
              ],
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Restore Settings',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  color: theme.onSurface.withOpacity(0.6),
                  fontSize: 11,
                ),
              ),
            ),
          ],
        ),
      ),
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

  Widget _buildSocialIcon(IconData icon, String url) {
    return IconButton(
      color: Colors.grey.shade800,
      iconSize: 36,
      icon: Icon(icon),
      onPressed: () => openLinkInBrowser(url),
    );
  }
}
