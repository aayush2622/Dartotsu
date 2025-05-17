import 'package:dartotsu/Widgets/LoadSvg.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:provider/provider.dart';

import '../../Functions/Function.dart';
import '../../Services/ServiceSwitcher.dart';
import '../../Theme/LanguageSwitcher.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    var service = Provider.of<MediaServiceProvider>(context).currentService;
    var screen = service.loginScreen;
    if (screen == null) {
      return service.notImplemented(widget.runtimeType.toString());
    }
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 64),
            Text(
              getString.appName,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w100,
                fontSize: 64,
                color: theme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              getString.appTagline,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 38),
            _buildLoginButton(context),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildSocialIcon(
                    Icons.discord, 'https://discord.gg/eyQdCpdubF'),
                const SizedBox(width: 16),
                _buildSocialIcon(
                    Bootstrap.github, 'https://github.com/aayush2622/dartotsu'),
                const SizedBox(width: 16),
                _buildSocialIcon(Icons.telegram_sharp, 'https://t.me/Dartotsu'),
              ],
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {},
              child: Text(
                getString.restoreSettings,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  color: theme.onSurface.withValues(alpha: 0.6),
                  fontSize: 11,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    var service = Provider.of<MediaServiceProvider>(context).currentService;
    return ElevatedButton.icon(
      onPressed: () => service.data.login(context),
      icon: Padding(
        padding: const EdgeInsets.only(right: 24.0),
        child: loadSvg(
          service.iconPath,
          width: 18,
          height: 18,
          color: theme.onPrimaryContainer,
        ),
      ),
      label: Text(
        getString.login,
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
