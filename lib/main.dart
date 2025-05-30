import 'dart:async';
import 'dart:io';

import 'package:app_links/app_links.dart';
import 'package:dartotsu/Api/Sources/Model/Manga.dart';
import 'package:dartotsu/Functions/Extensions.dart';
import 'package:dartotsu/Functions/Function.dart';
import 'package:dartotsu/Screens/Login/LoginScreen.dart';
import 'package:dartotsu/Screens/Manga/MangaScreen.dart';
import 'package:desktop_webview_window/desktop_webview_window.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' as provider;
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:isar/isar.dart';
import 'package:media_kit/media_kit.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';
import 'package:window_manager/window_manager.dart';

import 'Api/Discord/Discord.dart';
import 'Api/TypeFactory.dart';
import 'Functions/GetExtensions.dart';
import 'Functions/RegisterProtocol/Api.dart';
import 'Preferences/PrefManager.dart';
import 'Screens/Anime/AnimeScreen.dart';
import 'Screens/Home/HomeScreen.dart';
import 'Screens/HomeNavbar.dart';
import 'Services/MediaService.dart';
import 'Services/ServiceSwitcher.dart';
import 'StorageProvider.dart';
import 'Theme/Colors.dart';
import 'Theme/ThemeManager.dart';
import 'Theme/ThemeProvider.dart';
import 'l10n/app_localizations.dart';
import 'logger.dart';

late Isar isar;
WebViewEnvironment? webViewEnvironment;

void main(List<String> args) async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      if (Platform.isLinux) {
        if (runWebViewTitleBarWidget(args)) {
          return;
        }
      }
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
      throw ('Uncaught error: $error\n$stackTrace');
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
  if (Platform.isWindows) {
    ['dar', 'anymex', 'sugoireads', 'mangayomi']
        .forEach(registerProtocolHandler);
  }
  await StorageProvider.requestPermission();
  await dotenv.load(fileName: ".env");
  await PrefManager.init();
  await StorageProvider.initDB();
  await Logger.init();
  Extensions.init();
  MediaService.init();
  TypeFactory.init();
  MediaKit.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    await WindowManager.instance.ensureInitialized();
  }
  initializeDateFormatting();
  final supportedLocales = DateFormat.allLocalesWithSymbols();
  for (var locale in supportedLocales) {
    initializeDateFormatting(locale);
  }

  if (!kIsWeb && defaultTargetPlatform == TargetPlatform.windows) {
    final availableVersion = await WebViewEnvironment.getAvailableVersion();
    if (availableVersion != null) {
      final document = await getApplicationDocumentsDirectory();
      webViewEnvironment = await WebViewEnvironment.create(
        settings: WebViewEnvironmentSettings(
          userDataFolder: p.join(document.path, 'flutter_inappwebview'),
        ),
      );
    }
  }
  Discord.getSavedToken();
  initDeepLinkListener();
}

void initDeepLinkListener() async {
  if (Platform.isLinux) return;

  final appLink = AppLinks();
  try {
    final initialUri = await appLink.getInitialLink();
    if (initialUri != null) handleDeepLink(initialUri);
  } catch (err) {
    snackString('Error getting initial deep link: $err');
  }

  appLink.uriLinkStream.listen(
    (uri) => handleDeepLink(uri),
    onError: (err) => snackString('Error Opening link: $err'),
  );
}

void handleDeepLink(Uri uri) {
  if (uri.host != "add-repo") return;

  final repoMap = {
    ItemType.anime:
        uri.queryParameters["url"] ?? uri.queryParameters["anime_url"],
    ItemType.manga: uri.queryParameters["manga_url"],
    ItemType.novel: uri.queryParameters["novel_url"],
  };

  bool isRepoAdded = false;

  repoMap.forEach((type, url) {
    if (url != null && url.isNotEmpty) {
      Extensions.setRepo(type, url);
      isRepoAdded = true;
    }
  });

  snackString(
    isRepoAdded
        ? "Added Repo Links Successfully!"
        : "Missing required parameters in the link.",
  );
}

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
    return KeyboardListener(
      focusNode: FocusNode(),
      onKeyEvent: (KeyEvent event) async {
        if (event is KeyDownEvent) {
          if (event.logicalKey == LogicalKeyboardKey.escape) {
            if (Get.previousRoute.isNotEmpty) Get.back();
          } else if (event.logicalKey == LogicalKeyboardKey.f11) {
            bool isFullScreen = await windowManager.isFullScreen();
            windowManager.setFullScreen(!isFullScreen);
          } else if (event.logicalKey == LogicalKeyboardKey.enter) {
            final isAltPressed = HardwareKeyboard.instance.logicalKeysPressed
                    .contains(LogicalKeyboardKey.altLeft) ||
                HardwareKeyboard.instance.logicalKeysPressed
                    .contains(LogicalKeyboardKey.altRight);
            if (isAltPressed) {
              bool isFullScreen = await windowManager.isFullScreen();
              windowManager.setFullScreen(!isFullScreen);
            }
          }
        }
      },
      child: DynamicColorBuilder(
        builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
          return GetMaterialApp(
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: AppLocalizations.supportedLocales,
            locale: Locale(loadData(PrefName.defaultLanguage)),
            title: 'Dartotsu',
            themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
            debugShowCheckedModeBanner: false,
            enableLog: true,
            logWriterCallback: (text, {isError = false}) async {
              if (isError) {
                Logger.log(text);
                debugPrint(text);
              }
            },
            theme: getTheme(lightDynamic, themeManager),
            darkTheme: getTheme(darkDynamic, themeManager),
            home: const MainActivity(),
          );
        },
      ),
    );
  }
}

class MainActivity extends StatefulWidget {
  const MainActivity({super.key});

  @override
  MainActivityState createState() => MainActivityState();
}

late FloatingBottomNavBar navbar;

class MainActivityState extends State<MainActivity> {
  int _selectedIndex = 1;

  void _onTabSelected(int index) => setState(() => _selectedIndex = index);

  @override
  void initState() {
    super.initState();
    checkForUpdate();
  }

  @override
  Widget build(BuildContext context) {
    navbar = FloatingBottomNavBar(
      selectedIndex: _selectedIndex,
      onTabSelected: _onTabSelected,
    );
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    final service = context.currentService();
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
          navbar,
          Positioned(
            bottom: 92.bottomBar(),
            right: 12,
            child: GestureDetector(
              onLongPress: () =>
                  service.searchScreen?.onSearchIconLongClick(context),
              child: FloatingActionButton(
                onPressed: () =>
                    service.searchScreen?.onSearchIconClick(context),
                foregroundColor: Theme.of(context).colorScheme.outline,
                backgroundColor:
                    themeNotifier.isDarkMode ? greyNavDark : greyNavLight,
                elevation: 12,
                child: const Icon(Icons.search),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> checkForUpdate() async {
  final updater = ShorebirdUpdater();
  final status = await updater.checkForUpdate();
  debugPrint('Update Status: $status');
  if (status == UpdateStatus.outdated) {
    try {
      snackString('New Update found');
      await updater.update();
      snackString('Updated to the latest version! Restart the app');
    } on UpdateException catch (error) {
      Logger.log('Error updating: $error');
      throw ('Error updating: $error');
    }
  }
}
