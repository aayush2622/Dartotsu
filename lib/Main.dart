import 'dart:io';

import 'package:dantotsu/Adaptor/Settings/SettingsAdaptor.dart';
import 'package:dantotsu/api/Anilist/Anilist.dart';
import 'package:dantotsu/api/Anilist/Data/data.dart';
import 'package:dantotsu/prefManager.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:win32_registry/win32_registry.dart';

import 'DataClass/Setting.dart';
import 'Screens/HomeNavbar.dart';
import 'Screens/Login/LoginScreen.dart';
import 'Theme/ThemeManager.dart';
import 'screens/Anime/AnimeScreen.dart';
import 'screens/Home/HomeScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PrefManager.init();
  if (Platform.isWindows) {
    await register('dantotsu');
  }
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
    final useMaterialYou = themeManager.useMaterialYou;
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
        return MaterialApp(
          navigatorKey: navigatorKey,
          title: 'Dantotsu',
          themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
          debugShowCheckedModeBanner: false,
          theme: useMaterialYou && lightDynamic != null
              ? ThemeData(colorScheme: lightDynamic)
              : getTheme(theme, isOled, false),
          darkTheme: useMaterialYou && darkDynamic != null
              ? ThemeData(colorScheme: darkDynamic)
              : getTheme(theme, isOled, true),
          home: const MainActivity(),
        );
      },
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
                  ? const LoginScreen()
                  : data.initialized == true
                      ? HomeScreen(userId: data.userid!)
                      : const SizedBox(
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

  Widget settings(ThemeNotifier themeNotifier) { //
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
        Setting(
          type: SettingType.switchType,
          name: 'Material You',
          description: 'Enable Material You',
          icon: Icons.palette,
          isChecked: themeNotifier.useMaterialYou,
          onSwitchChange: (bool value) async {
            themeNotifier.setMaterialYou(value);
          },
        )
      ],
    );
  }
}
Future<void> register(String scheme) async {
  try {
    String appPath = Platform.resolvedExecutable;

    String protocolRegKey = 'Software\\Classes\\$scheme';
    RegistryValue protocolRegValue = const RegistryValue(
      'URL',
      RegistryValueType.string,
      '',
    );
    String protocolCmdRegKey = 'shell\\open\\command';
    RegistryValue protocolCmdRegValue = RegistryValue(
      '',
      RegistryValueType.string,
      '"$appPath" "%1"',
    );

    final regKey = Registry.currentUser.createKey(protocolRegKey);
    regKey.createValue(protocolRegValue);
    regKey.createKey(protocolCmdRegKey).createValue(protocolCmdRegValue);

    print('Registration successful for scheme: $scheme');
  } catch (e) {
    print('Failed to register scheme: $e');
  }
}
