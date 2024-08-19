import 'package:dantotsu/api/Anilist/AnilistViewModel.dart';
import 'package:dantotsu/Screens/Anime/AnimeScreen.dart';
import 'package:dantotsu/api/Anilist/Data/data.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:protocol_handler/protocol_handler.dart';
import 'package:provider/provider.dart';

import 'Prefrerences/PrefManager.dart';
import 'Screens/HomeNavbar.dart';
import 'Screens/Login/LoginScreen.dart';
import 'Screens/Manga/MangaScreen.dart';
import 'Theme/ThemeManager.dart';
import 'Theme/ThemeProvider.dart';
import 'api/Anilist/Anilist.dart';
// import 'screens/Home/HomeScreen.dart';
import 'package:dantotsu/Screens/Home/HomeScreen.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PrefManager.init();
  await protocolHandler.register('dantotsu');
  registerAllTypes();
  AnilistHomeViewModel.loadMain();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeNotifier()),
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
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          systemNavigationBarColor: Colors.transparent),
    );
    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
        return GetMaterialApp(
          navigatorKey: navigatorKey,
          title: 'Dantotsu',
          themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
          debugShowCheckedModeBanner: false,
          theme: getTheme(lightDynamic, themeManager),
          darkTheme: getTheme(darkDynamic, themeManager),
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

class MainActivityState extends State<MainActivity> with ProtocolListener {
  int _selectedIndex = 1;

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    protocolHandler.addListener(this);
    super.initState();
  }

  @override
  void dispose() {
    protocolHandler.removeListener(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Obx(() {
            return IndexedStack(
              index: _selectedIndex,
              children: [
                const AnimeScreen(),
                Anilist.token.value.isNotEmpty
                    ? const HomeScreen()
                    : const LoginScreen(),
                const MangaScreen(),
              ],
            );
          }),
          FloatingBottomNavBar(
            selectedIndex: _selectedIndex,
            onTabSelected: _onTabSelected,
          ),
        ],
      ),
    );
  }

  @override
  void onProtocolUrlReceived(String url){
    final token = RegExp(r'(?<=access_token=).+(?=&token_type)')
        .firstMatch(url.toString())
        ?.group(0);
    if (token != null) Anilist.saveToken(token);
  }
}
