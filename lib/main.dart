import 'dart:async';
import 'dart:io';

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
import 'package:media_kit/media_kit.dart';
import 'package:sizer/sizer.dart';
import 'package:rhttp/rhttp.dart';
import 'package:window_manager/window_manager.dart';

import 'Api/Updater/AppUpdater.dart';
import 'Core/NetworkManager/NetworkBridge.dart';
import 'Core/NetworkManager/NetworkManager.dart';
import 'Core/Preferences/PrefManager.dart';
import 'Core/Preferences/StorageManager.dart';
import 'Core/ThemeManager/LocaleController.dart';
import 'Core/ThemeManager/ThemeController.dart';
import 'DI.dart';
import 'Utils/Functions/RefreshController.dart';
import 'Logger.dart';
import 'Screen/Error/ErrorScreen.dart';
import 'Screen/MainScreen.dart';
import 'Screen/Onboarding/OnboardingScreen.dart';
import 'Utils/Functions/AppShortcuts.dart';
import 'Utils/Functions/DeepLink.dart';
import 'Utils/Functions/GetXFunctions.dart';
import 'Utils/Functions/NavigateToScreen.dart';
import 'Utils/Functions/SnackBar.dart';
import 'l10n/app_localizations.dart';

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
      ErrorWidget.builder = (details) => ErrorScreen(
        error: details.exception.toString(),
        stackTrace: details.stack?.toString() ?? details.toString(),
        softCrash: true,
      );
      Get.log = (text, {isError = false}) => debugPrint(text);

      await init(args);
      runApp(const MyApp());
    },
    (error, stackTrace) {
      debugPrint('Uncaught error: $error\n$stackTrace');
      handleError(error, stackTrace, softCrash: true);
    },
    zoneSpecification: ZoneSpecification(
      print: (self, parent, zone, line) {
        logger(line);
        parent.print(zone, line);
      },
    ),
  );
}

Future<void> init(List<String> args) async {
  await PrefManager.init();
  await Rhttp.init();
  DI.init();

  final client = find<NetworkManager>();

  await Future.wait([
    Logger.init(),
    DartotsuExtensionBridge.init(
      getDirectory: StorageManager.getDirectory,
      isarInstance: PrefManager.dartotsuPreferences,
      http: client.compatibleClient,
      network: AppBridgeNetwork(client.cookieManager),
      onLog: (message, show) {
        debugPrint('[Bridge LOGS] $message');
        if (show) snackString(message);
      },
    ),
    initializeDateFormatting(),
    if (Platform.isWindows || Platform.isLinux || Platform.isMacOS)
      WindowManager.instance.ensureInitialized(),
  ]);

  MediaKit.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent,
    ),
  );

  unawaited(_postInit(args));
}

/// Work that can safely run after the first frame.
Future<void> _postInit(List<String> args) async {
  DeepLink.init();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    DeepLink.initVideoIntentListener(args);
  }
  unawaited(find<AppUpdater>().checkForUpdate());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _focusNode = FocusNode();
  final ThemeController _theme = find();
  final LocaleController _locale = find();

  late final _dpadWrap = Dpad.wrap(
    onBack: _handleBack,
    theme: const DpadThemeData(
      effects: [
        DpadScaleEffect(scale: 1.03),
        DpadBorderEffect(
          width: 2,
          borderRadius: BorderRadius.all(Radius.circular(18)),
        ),
      ],
    ),
  );

  /// `MaterialApp.builder`: feed `sizer`'s [Device] from `MediaQuery` (no
  /// `LayoutBuilder` above the app — that breaks semantics on Flutter 3.29+),
  /// then the d-pad wrapper.
  Widget _appBuilder(BuildContext context, Widget? child) {
    final mq = MediaQuery.of(context);
    Device.setScreenSize(
      context,
      BoxConstraints.tightFor(width: mq.size.width, height: mq.size.height),
      mq.orientation,
      600,
      1100,
    );
    return _dpadWrap(context, child);
  }

  @override
  void dispose() {
    _focusNode.dispose();
    try {
      DartotsuExtensionBridge.dispose();
    } catch (_) {}
    super.dispose();
  }

  bool _handleBack() => guardedBack();

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (event) =>
          event.buttons == kBackMouseButton ? _handleBack() : null,
      child: Focus(
        focusNode: _focusNode,
        canRequestFocus: false,
        skipTraversal: true,
        onKeyEvent: (_, event) => appShortcuts(event)
            ? KeyEventResult.handled
            : KeyEventResult.ignored,
        child: DynamicColorBuilder(
          builder: (lightDynamic, darkDynamic) {
            _theme.setDynamicSchemes(lightDynamic, darkDynamic);
            return Obx(
              () => GetMaterialApp(
                title: 'Dartotsu',
                debugShowCheckedModeBanner: false,
                enableLog: true,
                builder: _appBuilder,
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: AppLocalizations.supportedLocales,
                locale: _locale.locale,
                navigatorObservers: [routeObserver],
                themeMode: _theme.themeMode,
                theme: _theme.light,
                darkTheme: _theme.dark,
                home: PrefName.hasCompletedOnboarding.value
                    ? const MainScreen()
                    : const OnboardingScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}
