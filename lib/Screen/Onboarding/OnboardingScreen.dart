import 'dart:ui';

import '../../Utils/Nav/DpadNav.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Core/ThemeManager/ThemeController.dart';
import '../../Core/ThemeManager/ThemeMode.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Extensions/NumExtensions.dart';
import '../../Utils/Functions/LinkSettings.dart';
import '../../Widgets/Components/CachedNetworkImage.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Components/AppControls.dart';
import '../Login/LoginScreen.dart';
import '../Settings/Widgets/ThemeDropdown.dart';
import '../../Core/ThemeManager/GlassBackgroundSource.dart';
import '../../Core/State/State.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  ThemeController get _theme => find();
  final _page = 0.live;

  ThemeData get theme => Theme.of(context);

  void _finish() => Navigator.of(
    context,
  ).pushReplacement(MaterialPageRoute(builder: (_) => const LoginScreen()));

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
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
              overrideBack: (c, cb) => _navButton(cb, getString.onboardingBack),
              overrideNext: (c, cb) =>
                  _navButton(cb, getString.onboardingNext, autoFocus: true),
              overrideSkip: (c, cb) => _navButton(cb, getString.onboardingSkip),
              overrideDone: (c, cb) => _navButton(cb, getString.getStarted),
              onDone: _finish,
              onSkip: _finish,
              onChange: (v) => _page.value = v,
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

  PageViewModel _pageOf({
    required int index,
    required IconData icon,
    required Widget title,
    required List<Widget> body,
  }) {
    final active = _page.value == index;
    return PageViewModel(
      decoration: const PageDecoration(
        imageFlex: 0,
        bodyFlex: 1,
        contentMargin: EdgeInsets.zero,
        titlePadding: EdgeInsets.zero,
        bodyPadding: EdgeInsets.zero,
        imagePadding: EdgeInsets.zero,
        bodyAlignment: Alignment.center,
      ),
      titleWidget: const SizedBox.shrink(),
      bodyWidget: LayoutBuilder(
        builder: (context, box) => SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: box.maxHeight - 32),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _badge(icon).animatePopIn(),
                  const SizedBox(height: 24),
                  DefaultTextStyle.merge(
                    style: theme.textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                    child: title,
                  ).animateFadeUp(target: active, duration: 700),
                  const SizedBox(height: 16),
                  ...body,
                ],
              ).animateFadeUp(target: active, begin: 0.2, delay: 150.ms),
            ),
          ),
        ),
      ),
    );
  }

  PageViewModel _page0() => _pageOf(
    index: 0,
    icon: Icons.auto_awesome_rounded,
    title: Text(
      getString.appName.toUpperCase(),
      style: theme.textTheme.displayMedium?.copyWith(
        fontWeight: FontWeight.w200,
        color: theme.colorScheme.primary,
      ),
    ),
    body: [Text(getString.appTagline, textAlign: TextAlign.center)],
  );

  PageViewModel _page1() => _pageOf(
    index: 1,
    icon: Icons.palette_rounded,
    title: Text(getString.onboardingPaletteTitle),
    body: [
      Text(getString.onboardingPaletteBody, textAlign: TextAlign.center),
      const SizedBox(height: 20),
      ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 320),
        child: Watch(
          () => DpadTap(
            onTap: () => openThemePicker(context),
            borderRadius: BorderRadius.circular(12),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.color_lens,
                    size: 22,
                    color: theme.colorScheme.primary,
                  ),
                  const SizedBox(width: 12),
                  Text(themeLabel(_theme)),
                  const SizedBox(width: 6),
                  Icon(
                    Icons.chevron_right_rounded,
                    size: 18,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      const SizedBox(height: 8),
      ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 320),
        child: Watch(
          () => AppSegmented<ThemeModePref>(
            value: _theme.mode.value,
            onChanged: _theme.setThemeMode,
            segments: [
              AppSegment(
                ThemeModePref.system,
                icon: Icons.brightness_auto_rounded,
                label: getString.themeModeAuto,
              ),
              AppSegment(
                ThemeModePref.light,
                icon: Icons.light_mode_rounded,
                label: getString.themeModeLight,
              ),
              AppSegment(
                ThemeModePref.dark,
                icon: Icons.dark_mode_rounded,
                label: getString.themeModeDark,
              ),
            ],
          ),
        ),
      ),
      const SizedBox(height: 8),
      ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 320),
        child: Watch(
          () => SwitchListTile(
            title: Text(getString.glassMode),
            value: _theme.useGlassMode.value,
            onChanged: _theme.setGlassEffect,
          ),
        ),
      ),
    ],
  );

  PageViewModel _page2() => _pageOf(
    index: 2,
    icon: Icons.sync_rounded,
    title: Text(getString.onboardingSyncTitle),
    body: [
      Text(getString.onboardingSyncBody, textAlign: TextAlign.center),
      Watch(
        () => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (canOpenLinkSettings) ...[
              const SizedBox(height: 20),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 360),
                child: DpadTap(
                  onTap: openLinkSettings,
                  borderRadius: BorderRadius.circular(12),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.link_rounded,
                          size: 22,
                          color: theme.colorScheme.primary,
                        ),
                        const SizedBox(width: 12),
                        const Flexible(
                          child: Text(
                            'Open AniList and repo links in Dartotsu',
                          ),
                        ),
                        const SizedBox(width: 6),
                        Icon(
                          Icons.chevron_right_rounded,
                          size: 18,
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    ],
  );

  Widget get _background => Watch(() {
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
    return DpadFocusable(
      autofocus: autoFocus,
      onSelect: onPressed,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        ),
        child: Text(label, textAlign: TextAlign.center),
      ),
    );
  }
}
