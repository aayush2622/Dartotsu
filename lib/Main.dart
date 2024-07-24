import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:dantotsu/api/Anilist/Data/data.dart';
import 'package:dantotsu/api/Anilist/Anilist.dart';
import 'package:dantotsu/prefManager.dart';
import 'Theme/ThemeManager.dart';
import 'Theme/Themes/blue.dart';
import 'screens/Home/HomeNavbar.dart';
import 'screens/Anime/AnimeScreen.dart';
import 'screens/Home/HomeScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  registerAllTypes();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeNotifier()),
        ChangeNotifierProvider(create: (_) => AnilistToken()),
        ChangeNotifierProvider(create: (_) => AnilistData()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeManager = Provider.of<ThemeNotifier>(context);
    final isDarkMode = themeManager.isDarkMode;
    final isOled = themeManager.isOled;
    final theme = themeManager.theme;
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return MaterialApp(
      title: 'Dantotsu',
      debugShowCheckedModeBanner: false,
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      theme: getTheme(theme, isOled, isDarkMode),
      home: const MainActivity(),
    );
  }
}

class MainActivity extends StatefulWidget {
  const MainActivity({super.key});

  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  int _selectedIndex = 1;

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    final token = Provider.of<AnilistToken>(context).token;
    final data = Provider.of<AnilistData>(context).initialized;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView( // Make the content scrollable
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  buildDarkModeSwitch(themeNotifier),
                  buildOledModeSwitch(themeNotifier),
                  ThemeDropdown(), // Added dropdown for theme selection
                ],
              ),
            ),
          ),
          IndexedStack(
            index: _selectedIndex,
            children: [
              const AnimeScreen(),
              token.isEmpty
                  ? const Center(child: Text('LoginPage'))
                  : data == true ? HomeScreen(userId: Provider.of<AnilistData>(context).userid!) : const SizedBox(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
              const Center(child: Text('Manga Screen')),
            ],
          ),
          FloatingBottomNavBar(
            selectedIndex: _selectedIndex,
            onTabSelected: _onTabSelected,
          ),
        ],
      ),
    );
  }

  Widget buildDarkModeSwitch(ThemeNotifier themeNotifier) {
    return SwitchListTile(
      title: const Text('Dark Mode'),
      value: themeNotifier.isDarkMode,
      onChanged: (bool value) async {
        themeNotifier.setDarkMode(value);
      },
    );
  }
  Widget buildOledModeSwitch(ThemeNotifier themeNotifier) {
    return SwitchListTile(
      title: const Text('OLED Mode'),
      value: themeNotifier.isOled,
      onChanged: (bool value) async {
        themeNotifier.setOled(value);
      },
    );
  }
}
