import 'package:flutter/material.dart';

/*
TODO

Change Icons of Anilist and Github
 */

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    // print(theme);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // App Name
            Text(
              'Dantotsu', // Replace with your app name
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 64,
                color: Theme.of(context).primaryColor,
              ),
            ),
            const SizedBox(height: 80), // Margin top

            // Slogan
            const Text(
              'The NEW Best Anime & Manga app for Android.', // Replace with your slogan
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 32), // Space between slogan and button

            // Login Button
            ElevatedButton.icon(
              onPressed: () {
                // Handle login button tap
              },
              icon: Icon(
                Icons.animation, // Path to your icon asset
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
              label: Text(
                'Login', // Replace with your login text
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                  fontWeight: FontWeight.bold
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            const SizedBox(height: 16), // Margin bottom for button

            // Social Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _socialIcon(Icons.discord, 'Discord',theme),
                _socialIcon(Icons.whatshot, 'GitHub',theme),
                _socialIcon(Icons.telegram, 'Telegram',theme),
              ],
            ),
            const SizedBox(height: 16), // Space between social icons and the next section

            // Restore Settings
            GestureDetector(
              onTap: () {
                // Handle restore settings tap
              },
              child: Text(
                'Restore Settings', // Replace with your restore settings text
                style: TextStyle(
                  fontFamily: 'PoppinsBold',
                  color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
                  fontSize: 11,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _socialIcon( IconData assetPath,String description,theme) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(
        assetPath,
        color:theme.primary,
      ),
    );
  }
}
