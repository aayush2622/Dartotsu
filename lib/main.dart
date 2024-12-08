import 'package:dantotsu/Screens/Login/LoginScreen.dart';
import 'package:dantotsu/Screens/Manga/MangaScreen.dart';
import 'package:dantotsu/api/EpisodeDetails/GetMediaIDs/GetMediaIDs.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' as provider;
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:isar/isar.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'Preferences/PrefManager.dart';
import 'Screens/Anime/AnimeScreen.dart';
import 'Screens/Home/HomeScreen.dart';
import 'Screens/HomeNavbar.dart';
import 'Services/MediaService.dart';
import 'Services/ServiceSwitcher.dart';
import 'StorageProvider.dart';
import 'Theme/ThemeManager.dart';
import 'Theme/ThemeProvider.dart';
import 'api/Discord/Discord.dart';
import 'api/TypeFactory.dart';

late Isar isar;

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(
    provider.ProviderScope(
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ThemeNotifier()),
          ChangeNotifierProvider(create: (_) => MediaServiceProvider()),
        ],
        child: const MyApp(),
      ),
    ),
  );
}

Future init() async {
  Get.isLogEnable = false;
  await PrefManager.init();
  initializeMediaServices();
  isar = await StorageProvider().initDB(null);
  await StorageProvider().requestPermission();
  TypeFactory.registerAllTypes();
  GetMediaIDs.getData();
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
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          locale: const Locale('en'),
          navigatorKey: navigatorKey,
          title: 'Dartotsu',
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

class MainActivityState extends State<MainActivity> {
  int _selectedIndex = 1;

  void _onTabSelected(int index) => setState(() => _selectedIndex = index);

  @override
  Widget build(BuildContext context) {
    Discord.getSavedToken();
    var service = getService();
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
                service.data.token.value.isNotEmpty
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
}
