import 'dart:ui';

import 'package:dartotsu/Functions/Functions/GetXFunctions.dart';
import 'package:dartotsu/Theme/ThemeController.dart';
import 'package:dartotsu/Theme/ThemeManager.dart';
import 'package:dpad/dpad.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../Widgets/CachedNetworkImage.dart';
import '../../Widgets/ScrollConfig.dart';
import '../../main.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  createState() => _OnboardingScreenState();
}

// welcome
// login
// theme
// support

class _OnboardingScreenState extends State<OnboardingScreen> {
  ThemeData get theme => Theme.of(context);
  TextStyle? get labelStyle => theme.textTheme.labelLarge;
  int _currentPage = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollConfig(
      context,
      child: IntroductionScreen(
        showSkipButton: true,
        showNextButton: true,
        showBackButton: true,
        allowImplicitScrolling: true,
        freeze: false,
        overrideBack: (context, onPressed) => _buildNavButton(
          context,
          onPressed,
          "Back",
        ),
        overrideNext: (context, onPressed) => _buildNavButton(
          context,
          onPressed,
          "Next",
          autoFocus: true,
        ),
        overrideSkip: (context, onPressed) => _buildNavButton(
          context,
          onPressed,
          "Skip",
        ),
        overrideDone: (context, onPressed) => _buildNavButton(
          context,
          onPressed,
          "Done",
        ),
        onDone: () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => const MainScreen(),
          ),
        ),
        onChange: (value) => setState(() => _currentPage = value),
        pages: [
          _buildWelcomeWidget,
          PageViewModel(
            titleWidget: const Text("Title of introduction page")
                .animate()
                .fadeIn(duration: 600.ms)
                .slideY(begin: 0.3, end: 0),
            bodyWidget: const Text(
                    "Welcome to the app! This is a description of how it works.")
                .animate()
                .fadeIn(duration: 800.ms)
                .slideY(begin: 0.5, end: 0),
            image: const Center(
              child: Icon(Icons.waving_hand_rounded, size: 50.0),
            )
                .animate()
                .scale(begin: const Offset(0.5, 0.5), end: const Offset(1, 1))
                .fadeIn(duration: 800.ms),
          ),
        ],
      ),
    );
  }

  PageViewModel get _buildWelcomeWidget {
    final animate = _currentPage == 0;

    return PageViewModel(
      titleWidget: const Text("Welcome to Dartotsu")
          .animate(target: animate ? 1 : 0)
          .fadeIn(duration: 800.ms)
          .slideY(begin: 0.3, end: 0),
      bodyWidget: Column(
        children: [
          const Text(
              "Dartotsu is a complete rewrite of Dantotsu in Flutter.\nIt's a hybrid AniList, MyAnimeList and Simkl support!"),
          const SizedBox(height: 16),
          themeDropdown()
        ],
      )
          .animate(target: animate ? 1 : 0)
          .fadeIn(duration: 1000.ms)
          .slideY(begin: 0.3, end: 0),
      image: _buildBackground
          .animate(target: animate ? 1 : 0)
          .fadeIn(duration: 1200.ms)
          .blurXY(begin: 10, end: 0),
      decoration: const PageDecoration(fullScreen: true),
    );
  }

  Widget get _buildBackground {
    return Obx(() {
      var theme = find<ThemeController>();
      var glass = theme.useGlassMode.value;
      if (!glass) return const SizedBox();

      return SizedBox.expand(
        child: RepaintBoundary(
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
            child: Opacity(
              opacity: 0.8,
              child: cachedNetworkImage(
                imageUrl: 'https://wallpapercat.com/download/1198914',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      );
    });
  }

  Widget _buildNavButton(
    BuildContext context,
    VoidCallback? onPressed,
    String label, {
    bool autoFocus = false,
  }) {
    final radius = BorderRadius.circular(16);
    return DpadFocusable(
      autofocus: autoFocus,
      onSelect: onPressed,
      builder: (_, isFocused, __) {
        return InkWell(
          onTap: onPressed,
          canRequestFocus: false,
          borderRadius: radius,
          child: ThemedContainer(
            context: context,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(12),
            borderRadius: radius,
            color: isFocused
                ? theme.cardColor.withOpacity(0.6)
                : Colors.transparent,
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: labelStyle?.copyWith(color: theme.primaryColor),
            ),
          ),
        );
      },
    );
  }
}
