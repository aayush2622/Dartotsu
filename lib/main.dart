import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:app_links/app_links.dart';
import 'package:dartotsu/Functions/Extensions.dart';
import 'package:dartotsu/Functions/Function.dart';
import 'package:dartotsu/Screens/Login/LoginScreen.dart';
import 'package:dartotsu/Screens/Manga/MangaScreen.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:desktop_webview_window/desktop_webview_window.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
import 'Api/Sources/Eval/dart/model/m_source.dart';
import 'Api/TypeFactory.dart';
import 'Functions/GetExtensions.dart';
import 'Functions/RegisterProtocol/Api.dart';
import 'Preferences/PrefManager.dart';
import 'Screens/Anime/AnimeScreen.dart';
import 'Screens/Home/HomeScreen.dart';
import 'Screens/HomeNavBar.dart';
import 'Screens/HomeNavbarDesktop.dart';
import 'Screens/HomeNavbarMobile.dart';
import 'Services/MediaService.dart';
import 'Services/ServiceSwitcher.dart';
import 'Theme/Colors.dart';
import 'Theme/ThemeManager.dart';
import 'Theme/ThemeProvider.dart';
import 'Widgets/CachedNetworkImage.dart';
import 'l10n/app_localizations.dart';
import 'logger.dart';

late Isar isar;
WebViewEnvironment? webViewEnvironment;

void main(List<String> args) async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      if (Platform.isLinux && runWebViewTitleBarWidget(args)) {
        return;
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
      debugPrint('Uncaught error: $error\n$stackTrace');
    },
    zoneSpecification: ZoneSpecification(
      print: (Zone self, ZoneDelegate parent, Zone zone, String line) {
        Logger.log(line);
        parent.print(zone, line);
      },
    ),
  );
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    Logger.log('FlutterError: ${details.exception}\n${details.stack}');
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    Logger.log('PlatformDispatcher error: $error\n$stack');
    return true;
  };
}

Future init() async {
  if (Platform.isWindows) {
    ['dar', 'anymex', 'sugoireads', 'mangayomi']
        .forEach(registerProtocolHandler);
  }
  await PrefManager.init();
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
          } else if (event.logicalKey == LogicalKeyboardKey.keyG) {
            var theme = Provider.of<ThemeNotifier>(context, listen: false);
            if (theme.useGlassMode) {
              await theme.setGlassEffect(false);
              snackString('Glass effect disabled');
            } else {
              await theme.setGlassEffect(true);
              snackString('Glass effect enabled');
            }
          } else if (event.logicalKey == LogicalKeyboardKey.keyM) {
            var theme = Provider.of<ThemeNotifier>(context, listen: false);
            if (theme.useMaterialYou) {
              await theme.setMaterialYou(false);
              snackString('Material You disabled');
            } else {
              await theme.setMaterialYou(true);
              snackString('Material You enabled');
            }
          } else if (event.logicalKey == LogicalKeyboardKey.keyD) {
            var theme = Provider.of<ThemeNotifier>(context, listen: false);
            if (theme.isDarkMode) {
              await theme.setDarkMode(false);
              snackString('Dark mode disabled');
            } else {
              await theme.setDarkMode(true);
              snackString('Dark mode enabled');
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
              Logger.log(text);
              if (isError) {
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

  Widget get _navbar {
    navbar = context.isPhone
        ? FloatingBottomNavBarMobile(
            selectedIndex: _selectedIndex,
            onTabSelected: _onTabSelected,
          )
        : FloatingBottomNavBarDesktop(
            selectedIndex: _selectedIndex,
            onTabSelected: _onTabSelected,
          );
    return navbar;
  }

  Widget _buildBackground(ThemeNotifier themeNotifier, MediaService service) {
    if (!themeNotifier.useGlassMode) return const SizedBox.shrink();
    return Positioned.fill(
      child: ImageFiltered(
        imageFilter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Opacity(
          opacity: 0.8,
          child: Obx(
            () => cachedNetworkImage(
              imageUrl: service.data.bg.value.isNotEmpty
                  ? service.data.bg.value
                  : 'https://wallpapercat.com/download/1198914',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBody(MediaService service) {
    return Obx(() {
      switch (_selectedIndex) {
        case 0:
          return const AnimeScreen();
        case 1:
          return service.data.token.value.isNotEmpty
              ? const HomeScreen()
              : const LoginScreen();
        case 2:
          return const MangaScreen();
        default:
          return const SizedBox();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    final service = context.currentService();

    return Scaffold(
      body: Stack(
        children: [
          _buildBackground(themeNotifier, service),
          Row(
            children: [
              if (!context.isPhone) SizedBox(width: 100, child: _navbar),
              Expanded(child: _buildBody(service)),
            ],
          ),
          if (context.isPhone) _navbar,
          Positioned(
            bottom: 92.bottomBar(),
            right: 12,
            child: GestureDetector(
              onLongPress: () => DartotsuExtensionBridge().fetchAnimeTitles(),
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
