import 'package:dantotsu/Adaptor/SettingsAdaptor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:dantotsu/api/Anilist/Data/data.dart';
import 'package:dantotsu/api/Anilist/Anilist.dart';
import 'DataClass/Setting.dart';
import 'Screens/HomeNavbar.dart';
import 'Theme/ThemeManager.dart';
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
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
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
      navigatorKey: navigatorKey,
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
  MainActivityState createState() => MainActivityState();
}

class MainActivityState extends State<MainActivity> {
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
    final data = Provider.of<AnilistData>(context);
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  settings(themeNotifier),
                  const ThemeDropdown(),
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
                  : data.initialized == true ? HomeScreen(userId: data.userid!) : const SizedBox(
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
  Widget settings(ThemeNotifier themeNotifier){
    return SettingsAdaptor(
      settings: [
        Setting(
          type: SettingType.switchType,
          name: 'Dark Mode',
          description: 'Enable Dark Mode',
          icon: Icons.dark_mode,
          isChecked: themeNotifier.isDarkMode,
          onSwitchChange: (bool value) async {
            themeNotifier.setDarkMode(value);
          },
        ),
        Setting(
          type: SettingType.switchType,
          name: 'OLED Mode',
          description: 'Enable OLED Mode',
          icon: Icons.brightness_1,
          isChecked: themeNotifier.isOled,
          onSwitchChange: (bool value) async {
            themeNotifier.setOled(value);
          },
        ),
      ],
    );
  }
}
