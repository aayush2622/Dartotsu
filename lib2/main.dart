import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:dartotsu/Functions/Extensions/IntExtensions.dart';
import 'package:dartotsu/Functions/Functions/AppShortcuts.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:desktop_webview_window/desktop_webview_window.dart';
import 'package:dpad/dpad.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:media_kit/media_kit.dart';
import 'package:window_manager/window_manager.dart';
import 'Api/Updater/AppUpdater.dart';
import 'Functions/Extensions/ContextExtensions.dart';
import 'Functions/Functions/DeepLink.dart';
import 'Functions/Functions/GetXFunctions.dart';
import 'Api/Discord/Discord.dart';
import 'Api/TypeFactory.dart';
import 'Preferences/PrefManager.dart';
import 'Screens/Anime/AnimeScreen.dart';
import 'Screens/Error/ErrorScreen.dart';
import 'Screens/Home/HomeScreen.dart';
import 'Screens/HomeNavBar.dart';
import 'Screens/HomeNavbarDesktop.dart';
import 'Screens/HomeNavbarMobile.dart';
import 'Screens/Onboarding/OnboardingScreen.dart';
import 'Services/MediaService.dart';
import 'Theme/ThemeManager.dart';
import 'Theme/ThemeController.dart';
import 'Widgets/CachedNetworkImage.dart';
import 'l10n/app_localizations.dart';
import 'Logger.dart';

// test glass background switch
// test theme switcher
// test service switcher

// refractor MediaSettings
void main(List<String> args) async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      FlutterError.onError = (details) {
        Zone.current.handleUncaughtError(
          details.exception,
          details.stack ?? StackTrace.current,
        );
      };
      PlatformDispatcher.instance.onError = (error, stack) {
        handleError(error, stack);
        return true;
      };
      ErrorWidget.builder = (FlutterErrorDetails details) {
        return ErrorScreen(
          error: details.exception.toString(),
          stackTrace: details.stack?.toString() ?? details.toString(),
          softCrash: true,
        );
      };
      if (Platform.isLinux && runWebViewTitleBarWidget(args)) return;

      await init();
      runApp(
        const DpadNavigator(
          enabled: true,
          child: MyApp(),
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
}

Future init() async {
  await PrefManager.init();
  await DartotsuExtensionBridge().init(PrefManager.isar, "Dartotsu");
  await Logger.init();
  await MpvConf.init();
  put(MediaServiceController());
  put(ThemeController());
  TypeFactory.init();
  DeepLink.init();
  MediaKit.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    await WindowManager.instance.ensureInitialized();
  }
  initializeDateFormatting();
  final supportedLocales = DateFormat.allLocalesWithSymbols();
  for (var locale in supportedLocales) {
    initializeDateFormatting(locale);
  }
  AppUpdater().checkForUpdate();
  Discord.getSavedToken();
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final FocusNode _focusNode;

  ThemeController get theme => find<ThemeController>();

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarDividerColor: Colors.transparent,
      ),
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (event) {
        if (event.buttons == kBackMouseButton &&
            Navigator.canPop(Get.context!)) {
          Get.back();
        }
      },
      child: Focus(
        autofocus: true,
        focusNode: _focusNode,
        onKeyEvent: (_, event) {
          final handled = appShortcuts(event);
          return handled ? KeyEventResult.handled : KeyEventResult.ignored;
        },
        child: DynamicColorBuilder(
          builder: (lightDynamic, darkDynamic) {
            return Obx(() {
              return GetMaterialApp(
                title: 'Dartotsu',
                debugShowCheckedModeBanner: false,
                enableLog: true,
                logWriterCallback: (text, {isError = false}) {
                  Logger.log(text);
                  if (isError) debugPrint(text);
                },
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: AppLocalizations.supportedLocales,
                locale: Locale(loadData(PrefName.defaultLanguage)),
                themeMode:
                    theme.isDarkMode.value ? ThemeMode.dark : ThemeMode.light,
                theme: getTheme(lightDynamic, theme),
                darkTheme: getTheme(darkDynamic, theme),
                home: !loadCustomData(
                  "initialLoaded",
                  defaultValue: false,
                )!
                    ? const MainScreen()
                    : const OnboardingScreen(),
              );
            });
          },
        ),
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

late FloatingBottomNavBar navbar;

class MainScreenState extends State<MainScreen> {
  final _selectedIndex = 1.obs;

  void _onTabSelected(int index) => _selectedIndex.value = index;

  @override
  void initState() {
    super.initState();
  }

  Widget get _navbar {
    return Obx(() {
      navbar = context.isPhone
          ? FloatingBottomNavBarMobile(
              selectedIndex: _selectedIndex.value,
              onTabSelected: _onTabSelected,
            )
          : FloatingBottomNavBarDesktop(
              selectedIndex: _selectedIndex.value,
              onTabSelected: _onTabSelected,
            );
      return navbar;
    });
  }

  Widget _buildBackground(MediaService service) {
    final themeController = find<ThemeController>();
    final useGlassMode = themeController.useGlassMode.value;
    if (!useGlassMode) return const SizedBox.shrink();
    final scheme = context.colorScheme;
    return Positioned.fill(
      child: Stack(
        children: [
          Positioned.fill(
            child: RepaintBoundary(
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                child: Opacity(
                  opacity: 0.8,
                  child: Obx(
                    () => cachedNetworkImage(
                      imageUrl: service.data.bg.value.isNotEmpty
                          ? service.data.bg.value
                          : 'https://wallpapercat.com/download/1198914',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: FractionallySizedBox(
                heightFactor: 0.75,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.transparent, scheme.surface],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
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
      switch (_selectedIndex.value) {
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
    final serviceController = find<MediaServiceController>();
    return Obx(() {
      final service = serviceController.currentService.value;
      return Scaffold(
        body: Stack(
          children: [
            _buildBackground(service),
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
                onTap: () => service.searchScreen?.onSearchIconClick(context),
                child: ThemedContainer(
                  context: context,
                  borderRadius: BorderRadius.circular(16.0),
                  padding: const EdgeInsets.all(4.0),
                  child: const Icon(Icons.search),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
