import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../Core/State/State.dart';
import '../../Core/ThemeManager/AppTheme.dart';
import '../../Core/ThemeManager/GlassBackgroundSource.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Core/ThemeManager/language.dart';
import '../../Core/ThemeManager/ThemeController.dart';
import '../../Core/ThemeManager/ThemeMode.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Extensions/NumExtensions.dart';
import '../../Utils/Functions/LinkSettings.dart';
import '../../Utils/Nav/DpadNav.dart';
import '../../Widgets/Components/AppControls.dart';
import '../../Widgets/Components/CachedNetworkImage.dart';
import '../../Widgets/Components/ScreenState.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Components/SectionCard.dart';
import 'OnboardingState.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with ScreenStateHost<OnboardingScreen, OnboardingState> {
  @override
  OnboardingState buildState() => OnboardingState();

  ThemeController get _theme => state.theme;

  ThemeData get theme => Theme.of(context);

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final scheme = theme.colorScheme;
    final page = state.page.value;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: AlignmentDirectional.topStart,
                  end: AlignmentDirectional.bottomEnd,
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
          SafeArea(
            child: Column(
              children: [
                _topBar(page),
                Expanded(
                  child: ScrollConfig(
                    context,
                    child: PageView(
                      controller: state.controller,
                      onPageChanged: (v) => state.page.value = v,
                      children: [
                        _welcome(page == 0),
                        _language(page == 1),
                        _features(page == 2),
                        _look(page == 3),
                        if (Platform.isAndroid) _permissions(page == 4),
                        _accounts(page == OnboardingState.pageCount - 1),
                      ],
                    ),
                  ),
                ),
                _bottomBar(page),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _topBar(int page) => Padding(
    padding: const EdgeInsetsDirectional.fromSTEB(24, 8, 12, 0),
    child: SizedBox(
      height: 48,
      child: Row(
        children: [
          Text(
            getString.appName,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: theme.colorScheme.primary,
            ),
          ).animateFadeIn(target: page != 0),
          const Spacer(),
          if (!state.isLast)
            TextButton(
              onPressed: state.finish,
              child: Text(getString.onboardingSkip),
            ),
        ],
      ),
    ),
  );

  Widget _bottomBar(int page) {
    final scheme = theme.colorScheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 520),
        child: Row(
          children: [
            SizedBox(
              width: 96,
              child: AnimatedOpacity(
                duration: animDuration(200),
                opacity: state.isFirst ? 0 : 1,
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: IgnorePointer(
                    ignoring: state.isFirst,
                    child: TextButton(
                      onPressed: state.back,
                      child: Text(getString.onboardingBack),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (var i = 0; i < OnboardingState.pageCount; i++)
                    DpadTap(
                      onTap: () => state.go(i),
                      borderRadius: BorderRadius.circular(8),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: AnimatedContainer(
                          duration: animDuration(300),
                          curve: Curves.easeOutCubic,
                          width: i == page ? 26 : 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: i == page
                                ? scheme.primary
                                : scheme.onSurface.withValues(alpha: 0.25),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(
              width: 140,
              child: Align(
                alignment: AlignmentDirectional.centerEnd,
                child: DpadFocusable(
                  autofocus: true,
                  onSelect: state.next,
                  effects: const [
                    DpadScaleEffect(scale: 1.04),
                    DpadBorderEffect(
                      width: 2.5,
                      borderRadius: BorderRadius.all(Radius.circular(999)),
                    ),
                    DpadGlowEffect(
                      opacity: 0.28,
                      blurRadius: 14,
                      spreadRadius: 0,
                      borderRadius: BorderRadius.all(Radius.circular(999)),
                    ),
                  ],
                  child: FilledButton(
                    onPressed: state.next,
                    child: AnimatedSwitcher(
                      duration: animDuration(200),
                      child: Text(
                        state.isLast
                            ? getString.getStarted
                            : getString.onboardingNext,
                        key: ValueKey(state.isLast),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _frame({
    required bool active,
    required IconData icon,
    required String title,
    String? body,
    List<Widget> children = const [],
  }) => LayoutBuilder(
    builder: (context, box) => SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: box.maxHeight - 32),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 520),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _badge(icon).animatePopIn(),
                const SizedBox(height: 28),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (body != null) ...[
                  const SizedBox(height: 12),
                  Text(
                    body,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
                if (children.isNotEmpty) ...[
                  const SizedBox(height: 28),
                  ...children,
                ],
              ],
            ).animateFadeUp(target: active, begin: 0.15, delay: 100.ms),
          ),
        ),
      ),
    ),
  );

  Widget _badge(IconData icon) {
    final scheme = theme.colorScheme;
    return Container(
      width: 112,
      height: 112,
      decoration: BoxDecoration(shape: BoxShape.circle, color: scheme.primary),
      child: Icon(icon, size: 52, color: scheme.onPrimary),
    );
  }

  Widget _welcome(bool active) => _frame(
    active: active,
    icon: Icons.auto_awesome_rounded,
    title: getString.appName.toUpperCase(),
    body: getString.appTagline,
  );

  Widget _language(bool active) => _frame(
    active: active,
    icon: Icons.translate_rounded,
    title: getString.language,
    body: getString.onboardingLanguageBody,
    children: [
      Watch(() {
        final current = state.locale.code.value;
        return Wrap(
          alignment: WrapAlignment.center,
          spacing: 8,
          runSpacing: 8,
          children: [
            for (final code in state.languages)
              ChoiceChip(
                label: Text(completeLanguageName(code)),
                selected: code == current,
                onSelected: (_) => state.locale.code.value = code,
              ),
          ],
        );
      }),
    ],
  );

  Widget _features(bool active) {
    final items = [
      (
        Icons.checklist_rounded,
        getString.onboardingFeatureTrack,
        getString.onboardingFeatureTrackDesc,
      ),
      (
        Icons.play_circle_rounded,
        getString.onboardingFeatureWatch,
        getString.onboardingFeatureWatchDesc,
      ),
      (
        Icons.download_for_offline_rounded,
        getString.onboardingFeatureOffline,
        getString.onboardingFeatureOfflineDesc,
      ),
      (
        Icons.sync_alt_rounded,
        getString.onboardingFeatureSync,
        getString.onboardingFeatureSyncDesc,
      ),
    ];
    return _frame(
      active: active,
      icon: Icons.widgets_rounded,
      title: getString.onboardingFeaturesTitle,
      body: getString.onboardingFeaturesBody,
      children: [
        for (var i = 0; i < items.length; i++)
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: _featureRow(items[i].$1, items[i].$2, items[i].$3)
                .animateFadeUp(
                  target: active,
                  begin: 0.3,
                  delay: (200 + i * 90).ms,
                ),
          ),
      ],
    );
  }

  Widget _featureRow(IconData icon, String title, String desc) {
    final scheme = theme.colorScheme;
    return SectionCard(
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: scheme.primaryContainer,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(icon, color: scheme.onPrimaryContainer),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: theme.textTheme.titleSmall),
                const SizedBox(height: 2),
                Text(
                  desc,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: scheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _look(bool active) {
    final dark = theme.brightness == Brightness.dark;
    return _frame(
      active: active,
      icon: Icons.palette_rounded,
      title: getString.onboardingPaletteTitle,
      body: getString.onboardingPaletteBody,
      children: [
        Watch(() {
          final custom = _theme.useCustomColor.value;
          final current = _theme.themeName.value;
          return Wrap(
            alignment: WrapAlignment.center,
            spacing: 14,
            runSpacing: 14,
            children: [
              for (final t in AppTheme.values)
                _swatch(
                  t,
                  t.themeFor(dark ? Brightness.dark : Brightness.light),
                  !custom && !_theme.useMaterialYou.value && t.name == current,
                ),
            ],
          );
        }),
        const SizedBox(height: 24),
        Watch(
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
        const SizedBox(height: 8),
        Watch(
          () => SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(getString.materialYou),
            subtitle: Text(getString.materialYouDesc),
            value: _theme.useMaterialYou.value,
            onChanged: _theme.setMaterialYou,
          ),
        ),
        Watch(
          () => SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(getString.glassMode),
            value: _theme.useGlassMode.value,
            onChanged: _theme.setGlassEffect,
          ),
        ),
      ],
    );
  }

  Widget _swatch(AppTheme t, ThemeData preview, bool selected) {
    final colors = preview.colorScheme;
    final ring = theme.colorScheme.primary;
    return Tooltip(
      message: t.label,
      child: DpadTap(
        scale: true,
        ripple: false,
        borderRadius: BorderRadius.circular(32),
        onTap: () => _theme.setTheme(t.name),
        child: AnimatedContainer(
          duration: animDuration(250),
          width: 56,
          height: 56,
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: selected ? ring : Colors.transparent,
              width: 2.5,
            ),
          ),
          child: ClipOval(
            child: Stack(
              fit: StackFit.expand,
              children: [
                ColoredBox(color: colors.surface),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: FractionallySizedBox(
                    widthFactor: 0.5,
                    child: ColoredBox(color: colors.primary),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: FractionallySizedBox(
                    widthFactor: 0.5,
                    heightFactor: 0.5,
                    child: ColoredBox(color: colors.tertiary),
                  ),
                ),
                if (selected)
                  Center(
                    child: Icon(
                      Icons.check_rounded,
                      size: 20,
                      color: colors.onPrimary,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _permissions(bool active) {
    final items = [
      (
        Permission.notification,
        Icons.notifications_active_rounded,
        getString.permNotifications,
        getString.permNotificationsDesc,
      ),
      (
        Permission.manageExternalStorage,
        Icons.folder_rounded,
        getString.permStorage,
        getString.permStorageDesc,
      ),
      (
        Permission.requestInstallPackages,
        Icons.system_update_rounded,
        getString.permInstall,
        getString.permInstallDesc,
      ),
      (
        Permission.ignoreBatteryOptimizations,
        Icons.battery_charging_full_rounded,
        getString.permBattery,
        getString.permBatteryDesc,
      ),
    ];
    return _frame(
      active: active,
      icon: Icons.verified_user_rounded,
      title: getString.onboardingPermsTitle,
      body: getString.onboardingPermsBody,
      children: [
        for (final (permission, icon, name, desc) in items)
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: SectionCard(
              child: Row(
                children: [
                  Icon(icon, color: theme.colorScheme.primary),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: theme.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          desc,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  if (state.granted[permission] == true)
                    Icon(
                      Icons.check_circle_rounded,
                      color: theme.colorScheme.primary,
                    )
                  else
                    FilledButton.tonal(
                      onPressed: () => state.grant(permission),
                      child: Text(getString.permGrant),
                    ),
                ],
              ),
            ),
          ),
      ],
    );
  }

  Widget _accounts(bool active) {
    const services = ['AniList', 'MyAnimeList', 'Simkl', 'Kitsu', 'MangaBaka'];
    return _frame(
      active: active,
      icon: Icons.sync_rounded,
      title: getString.onboardingSyncTitle,
      body: getString.onboardingSyncBody,
      children: [
        Text(
          getString.onboardingServices,
          style: theme.textTheme.labelLarge?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: 10),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 8,
          runSpacing: 8,
          children: [
            for (final s in services)
              Chip(
                label: Text(s),
                avatar: Icon(
                  Icons.check_circle_rounded,
                  size: 18,
                  color: theme.colorScheme.primary,
                ),
              ),
          ],
        ),
        if (canOpenLinkSettings) ...[
          const SizedBox(height: 20),
          SectionCard(
            child: DpadTap(
              onTap: openLinkSettings,
              borderRadius: BorderRadius.circular(12),
              child: Row(
                children: [
                  Icon(Icons.link_rounded, color: theme.colorScheme.primary),
                  const SizedBox(width: 12),
                  Expanded(child: Text(getString.onboardingOpenLinks)),
                  Icon(
                    Icons.chevron_right_rounded,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ],
              ),
            ),
          ),
        ],
      ],
    );
  }

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
}
