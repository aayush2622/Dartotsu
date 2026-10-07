import 'package:flutter/material.dart';

final _navigatorKey = GlobalKey<NavigatorState>();

BuildContext? get appContext => _navigatorKey.currentContext;

BuildContext? get appOverlayContext =>
    _navigatorKey.currentState?.overlay?.context;

NavigatorState? get appNavigator => _navigatorKey.currentState;

/// The app's root widget: a [MaterialApp] on the navigator that [appContext],
/// [appOverlayContext] and [appNavigator] resolve against.
class AppRoot extends StatelessWidget {
  final String title;
  final TransitionBuilder? builder;
  final ScrollBehavior? scrollBehavior;
  final Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates;
  final Iterable<Locale> supportedLocales;
  final Locale? locale;
  final List<NavigatorObserver> navigatorObservers;
  final ThemeMode themeMode;
  final ThemeData theme;
  final ThemeData darkTheme;
  final Widget home;

  const AppRoot({
    super.key,
    required this.title,
    this.builder,
    this.scrollBehavior,
    this.localizationsDelegates,
    required this.supportedLocales,
    this.locale,
    this.navigatorObservers = const [],
    required this.themeMode,
    required this.theme,
    required this.darkTheme,
    required this.home,
  });

  @override
  Widget build(BuildContext context) => MaterialApp(
    navigatorKey: _navigatorKey,
    title: title,
    debugShowCheckedModeBanner: false,
    builder: builder,
    scrollBehavior: scrollBehavior,
    localizationsDelegates: localizationsDelegates,
    supportedLocales: supportedLocales,
    locale: locale,
    navigatorObservers: navigatorObservers,
    themeMode: themeMode,
    theme: theme,
    darkTheme: darkTheme,
    home: home,
  );
}
