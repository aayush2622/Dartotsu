import 'Core/Services/Api/IdMapper.dart';
import 'Screen/Together/TogetherLink.dart';
import 'dart:async';
import 'dart:io';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'Screen/Settings/Sync/Data/SyncController.dart';
import 'Utils/Nav/DpadLayers.dart';
import 'Utils/Nav/DpadNav.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:media_kit/media_kit.dart';
import 'package:sizer/sizer.dart';
import 'package:rhttp/rhttp.dart';
import 'package:window_manager/window_manager.dart';

import 'Api/Updater/AppUpdater.dart';
import 'Core/Downloads/DownloadEngine.dart';
import 'Core/NetworkManager/NetworkManager.dart';
import 'Core/Offline/OfflineMode.dart';
import 'Core/Preferences/PrefManager.dart';
import 'Core/Preferences/StorageManager.dart';
import 'Core/ThemeManager/DynamicColorScheme.dart';
import 'Utils/Functions/WindowMemory.dart';
import 'Core/ThemeManager/LocaleController.dart';
import 'Core/ThemeManager/ThemeController.dart';
import 'DI.dart';
import 'Screen/Lock/LockOverlay.dart';
import 'Utils/Functions/RefreshController.dart';
import 'Logger.dart';
import 'Screen/Downloads/DownloadsLauncher.dart';
import 'Screen/Error/ErrorScreen.dart';
import 'Screen/MainScreen.dart';
import 'Screen/Onboarding/OnboardingScreen.dart';
import 'Screen/Splash/SplashApp.dart';
import 'Utils/Functions/AppShortcuts.dart';
import 'Utils/Functions/AppRouteLinks.dart';
import 'Utils/Functions/DeepLink.dart';
import 'Utils/Functions/DisplayMode.dart';
import 'Utils/Functions/LinkSettings.dart';
import 'Api/Discord/DiscordPresenceController.dart';
import 'Screen/Detail/Comments/Data/CommentAlerts.dart';
import 'Core/Services/ActivityAlerts.dart';
import 'Core/HomeWidget/HomeWidgetSync.dart';
import 'Core/SourceAlerts/SourceAlerts.dart';
import 'Screen/Player/Engine/PlayerSupport.dart';
import 'Screen/Player/PlayerLauncher.dart';
import 'Screen/Reader/LocalBook.dart';
import 'Utils/Functions/SnackBar.dart';
import 'Widgets/Components/ScrollConfig.dart';
import 'l10n/app_localizations.dart';
import 'Core/State/State.dart';

void main(List<String> args) async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      PaintingBinding.instance.imageCache
        ..maximumSizeBytes =
            (Platform.isAndroid || Platform.isIOS ? 96 : 192) << 20
        ..maximumSize = 400;
      FlutterError.onError = (details) {
        final stack = details.stack ?? StackTrace.current;
        final extra = [
          if (details.library != null) 'library: ${details.library}',
          if (details.context != null)
            'while: ${details.context!.toDescription()}',
          ...?details.informationCollector?.call().map(
            (n) => n.toStringDeep().trim(),
          ),
        ].join('\n');
        logger(
          'Framework error: ${details.exception}\n$extra\n$stack',
          logLevel: LogLevel.error,
        );
        handleError(details.exception, stack, softCrash: true, report: false);
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

      if (!Platform.isAndroid && !Platform.isIOS) runApp(const SplashApp());

      final watchdog = Timer(const Duration(seconds: 20), () {
        runApp(
          StartupFailureApp(
            error: 'Startup is taking too long at: $_stage',
            stackTrace: '',
          ),
        );
      });
      try {
        await init(args);
      } catch (e, st) {
        watchdog.cancel();
        logger('Startup failed at $_stage: $e\n$st', logLevel: LogLevel.error);
        runApp(
          StartupFailureApp(
            error: 'Startup failed at $_stage: $e',
            stackTrace: '$st',
          ),
        );
        return;
      }
      watchdog.cancel();

      runApp(const MyApp());
    },
    (error, stackTrace) {
      logger('Uncaught error: $error\n$stackTrace', logLevel: LogLevel.error);
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

String _stage = 'launch';

class StartupFailureApp extends StatelessWidget {
  final String error;
  final String stackTrace;

  const StartupFailureApp({
    super.key,
    required this.error,
    required this.stackTrace,
  });

  @override
  Widget build(BuildContext context) {
    final text = stackTrace.isEmpty ? error : '$error\n\n$stackTrace';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Dartotsu could not start',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 12),
                Expanded(
                  child: SingleChildScrollView(child: SelectableText(text)),
                ),
                const SizedBox(height: 12),
                FilledButton(
                  onPressed: () => Clipboard.setData(ClipboardData(text: text)),
                  child: const Text('Copy'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> init(List<String> args) async {
  _stage = 'logger';
  Logger.captureDebugPrint();
  _stage = 'preferences and http';
  await Future.wait([PrefManager.init(), Rhttp.init()]);
  _stage = 'dependency injection';
  DI.init();

  final client = find<NetworkManager>();

  _stage = 'logger, bridge and window';
  await Future.wait([
    Logger.init(),
    DartotsuExtensionBridge.init(
      getDirectory: StorageManager.getDirectory,
      isarInstance: PrefManager.dartotsuPreferences,
      network: client,
      onLog: (message, show) {
        logger('[Bridge LOGS] $message');
        if (show) snackString(message);
      },
    ),
    initializeDateFormatting(),
    if (Platform.isWindows || Platform.isLinux || Platform.isMacOS)
      WindowManager.instance.ensureInitialized(),
  ]);

  await WindowMemory.instance.restore();

  _stage = 'media kit';
  unawaited(applyRefreshRate());
  try {
    MediaKit.ensureInitialized();
  } catch (e, st) {
    PlayerSupport.available = false;
    PlayerSupport.failure = '$e';
    logger('Player unavailable: $e\n$st', logLevel: LogLevel.error);
  }
  applySystemBarStyle(isDark: false);

  WidgetsBinding.instance.addPostFrameCallback(
    (_) => unawaited(_postInit(args)),
  );
}

void applySystemBarStyle({required bool isDark}) {
  if (!Platform.isAndroid && !Platform.isIOS) return;
  final iconBrightness = isDark ? Brightness.light : Brightness.dark;
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: iconBrightness,
      statusBarBrightness: isDark ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent,
      systemNavigationBarIconBrightness: iconBrightness,
      systemStatusBarContrastEnforced: false,
      systemNavigationBarContrastEnforced: false,
    ),
  );
}

/// Work that can safely run after the first frame.
Future<void> _postInit(List<String> args) async {
  installDownloadLinks();
  IdMapper.warm();
  find<OfflineMode>();
  find<DownloadEngine>();
  find<ActivityAlerts>().start();
  find<CommentAlerts>().start();
  find<SourceAlerts>().start();
  HomeWidgetSync.start();
  installPlayerLinks();
  installReaderLinks();
  DeepLink.register(TogetherLinks());
  DeepLink.register(AppRouteLinks());
  DeepLink.init();
  unawaited(refreshLinkHandling());
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    DeepLink.initVideoIntentListener(args);
  }
  unawaited(find<AppUpdater>().checkForUpdate());
  find<SyncController>().startAuto();
  find<DiscordPresenceController>().start();
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
        DpadScaleEffect(scale: 1.04),
        DpadBorderEffect(
          width: 2.5,
          borderRadius: BorderRadius.all(Radius.circular(18)),
        ),
        DpadGlowEffect(
          opacity: 0.28,
          blurRadius: 14,
          spreadRadius: 0,
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
    applySystemBarStyle(isDark: _theme.isDarkModeActive);
    return LockOverlay(child: _dpadWrap(context, child));
  }

  @override
  void dispose() {
    _focusNode.dispose();
    try {
      DartotsuExtensionBridge.dispose();
    } catch (e, st) {
      logError('main', e, st);
    }
    super.dispose();
  }

  bool _handleBack() => layerBack();

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (event) {
        usingKeyboard = false;
        if (event.buttons == kBackMouseButton) _handleBack();
      },
      onPointerHover: (_) => usingKeyboard = false,
      onPointerMove: (_) => usingKeyboard = false,
      child: Focus(
        focusNode: _focusNode,
        canRequestFocus: false,
        skipTraversal: true,
        onKeyEvent: (_, event) => appShortcuts(event)
            ? KeyEventResult.handled
            : KeyEventResult.ignored,
        child: DynamicColorBuilder(
          builder: (lightDynamic, darkDynamic) {
            _theme.setDynamicSchemes(
              lightDynamic?.toFlutterScheme(),
              darkDynamic?.toFlutterScheme(),
            );
            return Watch(
              () => AppRoot(
                title: 'Dartotsu',
                builder: _appBuilder,
                scrollBehavior: const AppScrollBehavior(),
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
