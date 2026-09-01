import 'dart:ui';

import 'package:dpad/dpad.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Core/ThemeManager/ThemeController.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Extensions/NumExtensions.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/CachedNetworkImage.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Components/ThemedContainer.dart';
import '../Login/LoginScreen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  ThemeController get _theme => find();
  int _page = 0;

  ThemeData get theme => Theme.of(context);
  TextStyle? get _labelStyle => theme.textTheme.labelLarge;

  void _finish() => Navigator.of(
    context,
  ).pushReplacement(MaterialPageRoute(builder: (_) => const LoginScreen()));

  @override
  Widget build(BuildContext context) {
    final scheme = theme.colorScheme;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    scheme.surface,
                    scheme.surfaceContainerHigh,
                    scheme.primaryContainer.withValues(alpha: 0.4),
                  ],
                ),
              ),
            ),
          ),
          _background,
          ScrollConfig(
            context,
            child: IntroductionScreen(
              globalBackgroundColor: Colors.transparent,
              showSkipButton: true,
              showNextButton: true,
              showBackButton: true,
              allowImplicitScrolling: true,
              overrideBack: (c, cb) => _navButton(cb, 'Back'),
              overrideNext: (c, cb) => _navButton(cb, 'Next', autoFocus: true),
              overrideSkip: (c, cb) => _navButton(cb, 'Skip'),
              overrideDone: (c, cb) => _navButton(cb, getString.getStarted),
              onDone: _finish,
              onSkip: _finish,
              onChange: (v) => setState(() => _page = v),
              pages: [_page0(), _page1(), _page2()],
            ),
          ),
        ],
      ),
    );
  }

  Widget _badge(IconData icon) => Center(
    child: Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer.withValues(alpha: 0.55),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, size: 54, color: theme.colorScheme.onPrimaryContainer),
    ),
  );

  PageViewModel _page0() => PageViewModel(
    decoration: const PageDecoration(fullScreen: true),
    image: _badge(Icons.auto_awesome_rounded).animatePopIn(),
    titleWidget: Text(
      getString.appName.toUpperCase(),
      style: theme.textTheme.displayMedium?.copyWith(
        fontWeight: FontWeight.w200,
        color: theme.colorScheme.primary,
      ),
    ).animateFadeUp(target: _page == 0),
    bodyWidget: Text(
      getString.appTagline,
      textAlign: TextAlign.center,
    ).animateFadeUp(target: _page == 0, begin: 0.4, delay: 200.ms),
  );

  PageViewModel _page1() => PageViewModel(
    decoration: const PageDecoration(fullScreen: true),
    image: _badge(Icons.palette_rounded).animatePopIn(),
    titleWidget: const Text(
      'Make it yours',
    ).animateFadeUp(target: _page == 1, duration: 700),
    bodyWidget: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Pick a palette. Every accent, from cards to the player, follows it.',
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 320),
          child: themeDropdown(),
        ),
        const SizedBox(height: 8),
        Obx(
          () => SwitchListTile(
            title: const Text('Glass mode'),
            value: _theme.useGlassMode.value,
            onChanged: _theme.setGlassEffect,
          ),
        ),
      ],
    ).animateFadeUp(target: _page == 1, duration: 900),
  );

  PageViewModel _page2() => PageViewModel(
    decoration: const PageDecoration(fullScreen: true),
    image: _badge(Icons.sync_rounded).animatePopIn(),
    titleWidget: const Text(
      'Sync your library',
    ).animateFadeUp(target: _page == 2, duration: 700),
    bodyWidget: const Text(
      'Sign in with AniList to bring your lists, progress and scores '
      'with you. Or skip and browse as a guest.',
      textAlign: TextAlign.center,
    ).animateFadeUp(target: _page == 2, begin: 0.4, delay: 150.ms),
  );

  Widget get _background => Obx(() {
    final opacity = _theme.useGlassMode.value ? 0.55 : 0.14;
    return IgnorePointer(
      child: SizedBox.expand(
        child: RepaintBoundary(
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
            child: Opacity(
              opacity: opacity,
              child: cachedNetworkImage(
                imageUrl: kFallbackGlassBackground,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  });

  Widget _navButton(
    VoidCallback? onPressed,
    String label, {
    bool autoFocus = false,
  }) {
    final radius = BorderRadius.circular(16);
    return DpadFocusable(
      autofocus: autoFocus,
      onSelect: onPressed,
      builder: (_, state, child) => ThemedContainer(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(12),
        borderRadius: radius,
        color: state.focused
            ? theme.cardColor.withValues(alpha: 0.6)
            : Colors.transparent,
        child: child,
      ),
      child: InkWell(
        onTap: onPressed,
        canRequestFocus: false,
        borderRadius: radius,
        child: ThemedContainer(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(12),
          borderRadius: radius,
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: _labelStyle?.copyWith(color: theme.colorScheme.primary),
          ),
        ),
      ),
    );
  }
}
