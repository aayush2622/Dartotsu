import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:dpad/dpad.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:media_kit/media_kit.dart' as mpv;
import 'package:rhttp/rhttp.dart';
import 'package:window_manager/window_manager.dart';

import 'Api/Updater/AppUpdater.dart';
import 'Core/Analytics/AnalyticsManager.dart';
import 'Core/NetworkManager/NetworkManager.dart';
import 'Core/Preferences/PrefManager.dart';
import 'Core/ThemeManager/ThemeController.dart';
import 'Core/ThemeManager/ThemeManager.dart';
import 'DI.dart';
import 'Logger.dart';
import 'Screen/Error/ErrorScreen.dart';
import 'Screen/MainScreen.dart';
import 'Screen/Onboarding/OnboardingScreen.dart';
import 'Utils/Functions/AppShortcuts.dart';
import 'Utils/Functions/DeepLink.dart';
import 'Utils/Functions/GetXFunctions.dart';
import 'l10n/app_localizations.dart';

// webview

// animationController

// test glass background switch
// test theme switcher
// test service switcher

// refractor MediaSettings
// setup firebase

void main(List<String> args) async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      FlutterError.onError = (details) {
        Zone.current.handleUncaughtError(
          details.exception,
          details.stack ?? StackTrace.current,
        );
      };
      PlatformDispatcher.instance.onError = (error, stack) {
        Zone.current.handleUncaughtError(error, stack);
        return true;
      };
      ErrorWidget.builder = (FlutterErrorDetails details) {
        return ErrorScreen(
          error: details.exception.toString(),
          stackTrace: details.stack?.toString() ?? details.toString(),
          softCrash: true,
        );
      };
      Get.log = (text, {isError = false}) => debugPrint(text);
      await init();
      runApp(const MyApp());
    },
    (error, stackTrace) {
      debugPrint('Uncaught error: $error\n$stackTrace');
      tryFind<AnalyticsManager>()?.recordError(error, stackTrace);
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
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent,
    ),
  );
  unawaited(AppUpdater().checkForUpdate());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final FocusNode _focusNode;

  ThemeController theme = find();

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  bool _handleBack() {
    final nav = Get.key.currentState;
    if (nav?.canPop() ?? false) {
      Get.back();
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return DpadNavigator(
      focusMemory: const FocusMemoryOptions(
        enabled: true,
        maxHistory: 20,
      ),
      enabled: true,
      onBackPressed: _handleBack,
      child: Listener(
        onPointerDown: (event) =>
            (event.buttons == kBackMouseButton) ? _handleBack() : null,
        child: Focus(
          autofocus: true,
          focusNode: _focusNode,
          onKeyEvent: (_, event) => appShortcuts(event)
              ? KeyEventResult.handled
              : KeyEventResult.ignored,
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
                    themeMode: theme.isDarkMode.value
                        ? ThemeMode.dark
                        : ThemeMode.light,
                    theme: getTheme(lightDynamic, theme),
                    darkTheme: getTheme(darkDynamic, theme),
                    home: !loadCustomData("initialLoaded", defaultValue: false)!
                        ? const MainScreen()
                        : const OnboardingScreen(),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
