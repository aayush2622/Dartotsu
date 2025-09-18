import 'dart:ui';

import 'package:dartotsu/Functions/Extensions.dart';
import 'package:dartotsu/Theme/ThemeManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../Widgets/CachedNetworkImage.dart';
import '../../Widgets/ScrollConfig.dart';

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
  late ThemeData theme;
  late TextStyle? labelStyle;
  int _currentPage = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    theme = Theme.of(context);
    labelStyle = theme.textTheme.labelLarge;
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
        onDone: () {},
        onChange: (value) => setState(() => _currentPage = value),
        pages: [
          _buildWelcomeWidget,
          _buildPermissionWidget,
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
      bodyWidget: Text(
        "Welcome to the app! This is a description of how it works.",
        style: theme.textTheme.labelMedium,
      )
          .animate(target: animate ? 1 : 0)
          .fadeIn(duration: 900.ms)
          .slideY(begin: 0.5, end: 0),
      image: ClipOval(
        child: Image.asset(
          'assets/images/logo.png',
          width: 64,
          height: 64,
          fit: BoxFit.cover,
        ),
      )
          .animate(target: animate ? 1 : 0)
          .scale(
            begin: const Offset(0.1, 0.1),
            end: const Offset(1, 1),
            duration: 600.ms,
          )
          .fadeIn(duration: 800.ms),
    );
  }

  PageViewModel get _buildPermissionWidget {
    final service = context.currentService();
    final animate = _currentPage == 1;
    return PageViewModel(
      titleWidget: const Text("Allow Storage Permission")
          .animate(target: animate ? 1 : 0)
          .fadeIn(duration: 600.ms)
          .slideY(begin: 0.3, end: 0),
      bodyWidget: ThemedContainer(
        context: context,
        child: const Text("test"),
      )
          .animate(target: animate ? 1 : 0)
          .fadeIn(duration: 800.ms)
          .slideX(begin: -0.3, end: 0),
      image: SizedBox.expand(
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
              )
                  .animate(target: animate ? 1 : 0)
                  .fadeIn(duration: 1200.ms)
                  .blurXY(begin: 10, end: 0),
            ),
          ),
        ),
      ),
      decoration: const PageDecoration(fullScreen: true),
    );
  }

  Widget _buildNavButton(
    BuildContext context,
    VoidCallback? onPressed,
    String label,
  ) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onPressed,
      focusColor: theme.colorScheme.primary.withOpacity(0.2),
      child: ThemedContainer(
        context: context,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(12),
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        child: Text(
          label,
          style: labelStyle?.copyWith(
            color: theme.primaryColor,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
