import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'Core/NetworkManager/NetworkManager.dart';
import 'Core/Preferences/PrefManager.dart';
import 'Core/ThemeManager/ThemeController.dart';
import 'Core/ThemeManager/ThemeManager.dart';
import 'package:flutter/foundation.dart';
import 'package:rhttp/rhttp.dart';

import 'DI.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:desktop_webview_window/desktop_webview_window.dart';
import 'package:dpad/dpad.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:media_kit/media_kit.dart' as mpv;
import 'package:window_manager/window_manager.dart';
import 'Api/Updater/AppUpdater.dart';
import 'Utils/Extensions/ContextExtensions.dart';
import 'Utils/Extensions/IntExtensions.dart';
import 'Utils/Functions/AppShortcuts.dart';
import 'Utils/Functions/DeepLink.dart';
import 'Utils/Functions/GetXFunctions.dart';
import 'Screen/Error/ErrorScreen.dart';
import 'Screen/Onboarding/OnboardingScreen.dart';
import 'Core/Services/MediaService.dart';
import 'Widgets/CachedNetworkImage.dart';
import 'l10n/app_localizations.dart';
import 'Logger.dart';

// webview

// animationController

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
      Get.log = (text, {isError = false}) => debugPrint(text);

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
      handleError(error, stackTrace, softCrash: true);
    },
    zoneSpecification: ZoneSpecification(
      print: (self, parent, zone, line) {
        Logger.log(line);
        parent.print(zone, line);
      },
    ),
  );
}

Future<void> init() async {
  await PrefManager.init();
  await Rhttp.init();
  DI.init();
  await Future.wait([
    DartotsuExtensionBridge().init(
      PrefManager.dartotsuPreferences,
      "Dartotsu",
      http: find<NetworkManager>().compatibleClient,
    ),
    Logger.init(),
    initializeDateFormatting(),
  ]);

  unawaited(_postInit());
}

Future<void> _postInit() async {
  DeepLink.init();
  mpv.MediaKit.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    await WindowManager.instance.ensureInitialized();
  }

  unawaited(AppUpdater().checkForUpdate());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final FocusNode _focusNode;

  ThemeController get theme => find();

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
            (Get.key.currentState?.canPop() ?? false)) {
          Get.back();
        }
      },
      child: Focus(
        autofocus: true,
        focusNode: _focusNode,
        onKeyEvent: (_, event) {
          return appShortcuts(event)
              ? KeyEventResult.handled
              : KeyEventResult.ignored;
        },
        child: DynamicColorBuilder(
          builder: (lightDynamic, darkDynamic) {
            return Obx(
              () {
                return GetMaterialApp(
                  key: ValueKey(theme.local.value),
                  title: 'Dartotsu',
                  debugShowCheckedModeBanner: false,
                  enableLog: true,
                  localizationsDelegates: const [
                    AppLocalizations.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  supportedLocales: AppLocalizations.supportedLocales,
                  locale: Locale(theme.local.value),
                  themeMode:
                      theme.isDarkMode.value ? ThemeMode.dark : ThemeMode.light,
                  theme: getTheme(lightDynamic, theme),
                  darkTheme: getTheme(darkDynamic, theme),
                  home: loadCustomData("initialLoaded", defaultValue: false)!
                      ? const MainScreen()
                      : const OnboardingScreen(),
                );
              },
            );
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

//late FloatingBottomNavBar navbar;

class MainScreenState extends State<MainScreen> {
  final _selectedIndex = 1.obs;

  //void _onTabSelected(int index) => _selectedIndex.value = index;

  @override
  void initState() {
    super.initState();
  }

  Widget get _navbar {
    return const SizedBox();
    /* return Obx(() {
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
    });*/
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
                      imageUrl: service.data.bg.value,
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
                heightFactor: 0.55,
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
          return const SizedBox();
        case 1:
          return !service.data.token.value.isNotEmpty
              ? const Center(child: Text("Alive"))
              : const SizedBox();
        case 2:
          return const SizedBox();
        default:
          return const SizedBox();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final serviceController = find<MediaServiceController>();
    return Obx(
      () {
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
      },
    );
  }
}
