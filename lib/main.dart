import 'dart:async';
import 'dart:io';

import 'package:dantotsu/Screens/Login/LoginScreen.dart';
import 'package:dantotsu/Screens/Manga/MangaScreen.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' as provider;
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:isar/isar.dart';
import 'package:media_kit/media_kit.dart';
import 'package:provider/provider.dart';
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
import 'logger.dart';
import 'package:path/path.dart' as p;
late Isar isar;
WebViewEnvironment? webViewEnvironment;

void main(List<String> args) async {
  runZonedGuarded(
    () async {
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
    },
    (error, stackTrace) {
      Logger.log('Uncaught error: $error\n$stackTrace');
      debugPrint('Uncaught error: $error\n$stackTrace');
    },
    zoneSpecification: ZoneSpecification(
      print: (Zone self, ZoneDelegate parent, Zone zone, String message) {
        Logger.log(message);
        parent.print(zone, message);
      },
    ),
  );
}

Future init() async {
  await dotenv.load(fileName: ".env");
  await PrefManager.init();
  await StorageProvider().requestPermission();
  isar = await StorageProvider().initDB(null);
  await Logger.init();
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

  if (!kIsWeb && defaultTargetPlatform == TargetPlatform.windows) {
    final availableVersion = await WebViewEnvironment.getAvailableVersion();
    assert(availableVersion != null,
    'Failed to find an installed WebView2 runtime or non-stable Microsoft Edge installation.');
    final document = await StorageProvider().getDirectory();
    webViewEnvironment = await WebViewEnvironment.create(
        settings: WebViewEnvironmentSettings(
            userDataFolder: p.join(document!.path, 'flutter_inappwebview'),),);
  }
  Get.config(
    enableLog: true,
    logWriterCallback: (text, {isError = false}) async {
      Logger.log(text);
      debugPrint(text);
    },
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
          locale: Locale( loadCustomData("defaultLanguage") ?? 'en'),
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
