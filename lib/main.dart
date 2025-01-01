import 'dart:io';

import 'package:dartotsu/Screens/Login/LoginScreen.dart';
import 'package:dartotsu/Screens/Manga/MangaScreen.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' as provider;
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:isar/isar.dart';
import 'package:media_kit/media_kit.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:window_manager/window_manager.dart';
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
  await PrefManager.init();
  await StorageProvider().requestPermission();
  isar = await StorageProvider().initDB(null);

  initializeMediaServices();
  MediaKit.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    await WindowManager.instance.ensureInitialized();
  }

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

class MainActivityState extends State<MainActivity> with WidgetsBindingObserver {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  int _selectedIndex = 1;

  void _onTabSelected(int index) => setState(() => _selectedIndex = index);

  @override
  Widget build(BuildContext context) {
    Discord.getSavedToken();
    var service = Provider
        .of<MediaServiceProvider>(context)
        .currentService;
    navbar = FloatingBottomNavBar(
      selectedIndex: _selectedIndex,
      onTabSelected: _onTabSelected,
    );

    return RawKeyboardListener(
      focusNode: FocusNode(),
      autofocus: true,
      onKey: (RawKeyEvent event) async {
        if (event is RawKeyDownEvent ) {
          if (event.logicalKey == LogicalKeyboardKey.escape) {
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }
          }
          if (event.logicalKey == LogicalKeyboardKey.f11) {
            WindowManager.instance.setFullScreen(!await WindowManager.instance.isFullScreen());
          }

        }
      },
      child: Scaffold(
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
      ),
    );
  }
}
