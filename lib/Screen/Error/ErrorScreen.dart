import 'dart:async';

import 'package:flutter/material.dart';

import '../../Core/Analytics/AnalyticsManager.dart';
import '../../Logger.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/NumExtensions.dart';
import 'Widgets/AppButton.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Widgets/Components/ScreenState.dart';
import 'ErrorState.dart';

class ErrorScreen extends StatefulWidget {
  final String error;
  final String stackTrace;
  final bool softCrash;
  final VoidCallback? onClose;

  const ErrorScreen({
    super.key,
    required this.error,
    required this.stackTrace,
    required this.softCrash,
    this.onClose,
  });

  @override
  createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen>
    with ScreenStateHost<ErrorScreen, ErrorState> {
  @override
  ErrorState buildState() => ErrorState(
    error: widget.error,
    stackTrace: widget.stackTrace,
    onClosed: widget.onClose,
  );

  @override
  Widget build(BuildContext context) {
    var theme = context.theme.colorScheme;
    var textTheme = context.textTheme;
    return Scaffold(
      body: CustomScrollConfig(
        context,
        children: [
          _buildAppBar(theme),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFactBox(theme, textTheme),
                  const SizedBox(height: 16),
                  _buildErrorTitle(),
                  const SizedBox(height: 8),
                  _buildErrorBox(theme),
                  const SizedBox(height: 8),
                  _buildStackTrace(theme),
                  const SizedBox(height: 16),
                  _buildActionButtons(theme),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAppBar(ColorScheme theme) {
    return SliverAppBar(
      pinned: true,
      backgroundColor: theme.surface,
      expandedHeight: 100,
      collapsedHeight: 64,
      centerTitle: true,
      surfaceTintColor: Colors.transparent,
      automaticallyImplyLeading: false,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        titlePadding: const EdgeInsetsDirectional.only(start: 16, bottom: 12),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 8,
          children: [
            IconButton(
              constraints: const BoxConstraints(),
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                color: theme.primary,
                size: 18,
              ),
              onPressed: state.goBack,
            ),
            Expanded(
              child: Text(
                state.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.labelLarge?.copyWith(
                  color: theme.primary,
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ).animateAttention(delay: 200.ms),
      ),
    );
  }

  Widget _buildFactBox(ColorScheme theme, TextTheme textTheme) {
    return Text(
      state.fact,
      style: textTheme.bodyMedium?.copyWith(
        color: theme.primary,
        fontStyle: FontStyle.italic,
      ),
    ).animateFadeUp(begin: 0.1, delay: 200.ms);
  }

  Widget _buildErrorTitle() {
    return Text(
      getString.errorLabel,
      style: const TextStyle(fontWeight: FontWeight.w600),
    ).animateFadeSlideX(begin: -0.2, delay: 200.ms);
  }

  Widget _buildErrorBox(ColorScheme theme) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: theme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(12),
      ),
      child: SelectableText(
        widget.error,
        style: const TextStyle(fontFamily: "monospace", fontSize: 13),
      ),
    ).animateShimmerPop();
  }

  Widget _buildStackTrace(ColorScheme theme) {
    return ExpansionTile(
      tilePadding: EdgeInsets.zero,
      title: Text(
        getString.stackTraceDetails,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: theme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(12),
          ),
          child: SelectableText.rich(
            TextSpan(children: state.stackSpans),
            style: TextStyle(
              fontFamily: "monospace",
              fontSize: 13,
              height: 1.4,
              color: theme.onSurface,
            ),
          ),
        ).animateShimmerPop(),
      ],
    );
  }

  Widget _buildActionButtons(ColorScheme theme) {
    return Row(
      children: [
        Expanded(
          child: AppButton(
            context: context,
            onPressed: state.shareLogFile,
            iconWidget: const Icon(Icons.share_rounded, size: 18),
            label: getString.shareLogFile,
            padding: const EdgeInsets.only(),
          ).animateFadeSlideX(begin: -0.2, delay: 300.ms),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: AppButton(
            context: context,
            onPressed: state.copyLogs,
            iconWidget: const Icon(Icons.copy_rounded, size: 18),
            label: getString.copyLogs,
            padding: const EdgeInsets.only(),
          ).animateFadeSlideX(begin: -0.2, delay: 300.ms),
        ),
      ],
    );
  }
}

bool _errorScreenOpen = false;

void handleError(
  Object error,
  StackTrace? stack, {
  String? other,
  bool softCrash = false,
  bool report = true,
}) {
  logger('$error: \n$stack', logLevel: LogLevel.error);
  if (report) {
    unawaited(
      tryFind<AnalyticsManager>()?.recordError(error, stack, fatal: true) ??
          Future<void>.value(),
    );
  }

  final nav = appNavigator;
  if (nav != null) {
    if (_errorScreenOpen) return;
    _errorScreenOpen = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final errorPage = MaterialPageRoute(
        builder: (_) => ErrorScreen(
          error: error.toString(),
          stackTrace: stack?.toString() ?? other ?? '',
          softCrash: softCrash,
          onClose: () {
            _errorScreenOpen = false;
          },
        ),
      );

      if (softCrash) {
        nav.push(errorPage);
      } else {
        nav.pushAndRemoveUntil(errorPage, (route) => false);
      }
    });
  } else {
    logger("Navigator not ready", logLevel: LogLevel.error);
  }
}
