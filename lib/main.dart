import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:app_links/app_links.dart';
import 'package:dartotsu/Functions/Extensions.dart';
import 'package:dartotsu/Functions/Function.dart';
import 'package:dartotsu/Screens/Login/LoginScreen.dart';
import 'package:dartotsu/Screens/Manga/MangaScreen.dart';
import 'package:dartotsu_extension_bridge/Aniyomi/AniyomiExtensions.dart';
import 'package:dartotsu_extension_bridge/Mangayomi/MangayomiExtensions.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:desktop_webview_window/desktop_webview_window.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:isar/isar.dart';
import 'package:media_kit/media_kit.dart';
import 'package:provider/provider.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';
import 'package:window_manager/window_manager.dart';

import 'Api/Discord/Discord.dart';
import 'Api/TypeFactory.dart';
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

void main(List<String> args) async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      if (Platform.isLinux && runWebViewTitleBarWidget(args)) {
        return;
      }
      await init();
      runApp(
        MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => ThemeNotifier()),
            ChangeNotifierProvider(create: (_) => MediaServiceProvider()),
          ],
          child: const MyApp(),
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
    Logger.log(
      'FlutterError: ${details.exception}\n${details.stack}',
      logLevel: LogLevel.error,
    );
  }; //TODO: setup error screen

  PlatformDispatcher.instance.onError = (error, stack) {
    Logger.log('PlatformDispatcher error: $error\n$stack',
        logLevel: LogLevel.error);
    return true;
  };
}

Future init() async {
  if (Platform.isWindows) {
    ['dar', 'anymex', 'sugoireads', 'mangayomi']
        .forEach(registerProtocolHandler);
  }
  await PrefManager.init();
  await DartotsuExtensionBridge().init(isar, "Darotsu");
  await Logger.init();
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

  Discord.getSavedToken();
  initDeepLinkListener();
}

void initDeepLinkListener() async {
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

  final scheme = uri.scheme.toLowerCase();
  bool isRepoAdded = false;

  const mangayomiSchemes = {"dar", "anymex", "sugoireads", "mangayomi"};
  const aniyomiSchemes = {"aniyomi", "tachiyomi"};
  if (mangayomiSchemes.contains(scheme)) {
    var manager = Get.find<MangayomiExtensions>(tag: 'MangayomiExtensions');
    final repoMap = {
      ItemType.anime:
          uri.queryParameters["anime_url"] ?? uri.queryParameters["url"],
      ItemType.manga: uri.queryParameters["manga_url"],
      ItemType.novel: uri.queryParameters["novel_url"],
    };
    repoMap.forEach((type, url) {
      if (url != null && url.isNotEmpty) {
        manager.onRepoSaved([url], type);
        isRepoAdded = true;
      }
    });
  } else if (aniyomiSchemes.contains(scheme)) {
    var manager = Get.find<AniyomiExtensions>(tag: 'AniyomiExtensions');
    final url = uri.queryParameters["url"];
    if (url != null && url.isNotEmpty) {
      manager.onRepoSaved(
        [url],
        scheme == "aniyomi" ? ItemType.anime : ItemType.manga,
      );
      isRepoAdded = true;
    }
  }

  snackString(
    isRepoAdded
        ? "Added Repo Links Successfully!"
        : "Missing or invalid parameters in the link.",
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
    if (context.isPhone) {
      return FloatingBottomNavBarMobile(
        selectedIndex: _selectedIndex,
        onTabSelected: _onTabSelected,
      );
    } else {
      return FloatingBottomNavBarDesktop(
        selectedIndex: _selectedIndex,
        onTabSelected: _onTabSelected,
      );
    }
  }

  Widget _buildBackground(ThemeNotifier themeNotifier, MediaService service) {
    if (!themeNotifier.useGlassMode) return const SizedBox.shrink();

    return Positioned.fill(
      child: Stack(
        children: [
          Positioned.fill(
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
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
          ),
          // Gradient overlay at the bottom 75%
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: FractionallySizedBox(
                heightFactor: 0.75,
                widthFactor: 1,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black54,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
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
