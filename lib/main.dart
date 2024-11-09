import 'package:dantotsu/api/Anilist/AnilistViewModel.dart';
import 'package:dantotsu/Screens/Anime/AnimeScreen.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' as provider;
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:isar/isar.dart';
import 'package:protocol_handler/protocol_handler.dart';
import 'package:provider/provider.dart';


import 'Preferences/PrefManager.dart';
import 'Screens/HomeNavbar.dart';
import 'Screens/Login/LoginScreen.dart';
import 'Screens/Manga/MangaScreen.dart';
import 'StorageProvider.dart';
import 'Theme/ThemeManager.dart';
import 'Theme/ThemeProvider.dart';
import 'api/Anilist/Anilist.dart';
import 'package:dantotsu/Screens/Home/HomeScreen.dart';

late Isar isar;
void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(
    provider.ProviderScope(
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ThemeNotifier()),
        ],
        child: const MyApp(),
      ),
    ),
  );
}

Future init() async {
  Get.config(enableLog: false);
  await PrefManager.init();
  await protocolHandler.register('dantotsu');
  isar = await StorageProvider().initDB(null);
  await StorageProvider().requestPermission();
  TypeFactory.registerAllTypes();
  initializeDateFormatting();
  final supportedLocales = DateFormat.allLocalesWithSymbols();
  for (var locale in supportedLocales) {
    initializeDateFormatting(locale);
  }
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
          systemNavigationBarColor: Colors.transparent,
          systemNavigationBarDividerColor: Colors.transparent,
      ),
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

FloatingBottomNavBar? navbar;

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
    AnilistHomeViewModel.loadMain();
    navbar = FloatingBottomNavBar(
      selectedIndex: _selectedIndex,
      onTabSelected: _onTabSelected,
    );
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
          navbar!,
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
