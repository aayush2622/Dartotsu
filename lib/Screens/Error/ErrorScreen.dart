import 'package:get/get.dart';
import 'package:dartotsu/Widgets/ScrollConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../Widgets/CustomElevatedButton.dart';
import '../../logger.dart';

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

class _ErrorScreenState extends State<ErrorScreen> {
  @override
  void dispose() {
    widget.onClose?.call();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = context.theme.colorScheme;

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
        titlePadding: const EdgeInsets.only(left: 16, bottom: 12),
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
              onPressed: () => Navigator.of(context).maybePop(),
            ),
            Expanded(
              child: Text(
                'Unexpected Error (✿◠‿◠)',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.labelLarge?.copyWith(
                  color: theme.primary,
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ],
        )
            .animate()
            .fadeIn(duration: 400.ms, delay: 200.ms)
            .slideY(begin: 0.3, end: 0),
      ),
    );
  }

  Widget _buildErrorTitle() {
    return const Text(
      "Error :",
      style: TextStyle(
        fontWeight: FontWeight.w600,
      ),
    )
        .animate()
        .fadeIn(duration: 300.ms, delay: 200.ms)
        .slideX(begin: -0.2, end: 0);
  }

  Widget _buildErrorBox(ColorScheme theme) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: theme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(10),
      ),
      child: SelectableText(
        widget.error,
        style: const TextStyle(
          fontFamily: "monospace",
          fontSize: 13,
        ),
      ),
    )
        .animate()
        .scale(
          begin: const Offset(0.95, 0.95),
          end: const Offset(1, 1),
        )
        .fadeIn(duration: 400.ms);
  }

  Widget _buildStackTrace(ColorScheme theme) {
    return ExpansionTile(
      tilePadding: EdgeInsets.zero,
      title: const Text(
        "Details (Stack Trace)",
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: theme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SelectableText.rich(
            TextSpan(
              children: _colorizeErrorText(widget.stackTrace, theme),
            ),
            style: TextStyle(
              fontFamily: "monospace",
              fontSize: 13,
              height: 1.4,
              color: theme.onSurface,
            ),
          ),
        )
            .animate()
            .fadeIn(duration: 500.ms, delay: 200.ms)
            .slideY(begin: -0.1, end: 0),
      ],
    );
  }

  Widget _buildActionButtons(ColorScheme theme) {
    return Row(
      children: [
        Expanded(
          child: CustomElevatedButton(
            context: context,
            onPressed: () {},
            iconWidget: Icon(
              Icons.share_rounded,
              color: theme.surface,
            ),
            label: "Share log file",
            padding: const EdgeInsets.only(),
          )
              .animate()
              .fadeIn(duration: 400.ms, delay: 300.ms)
              .slideX(begin: -0.2, end: 0),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: CustomElevatedButton(
            context: context,
            onPressed: () {},
            iconWidget: Icon(
              Icons.copy_rounded,
              color: theme.surface,
            ),
            label: "Copy Logs",
            padding: const EdgeInsets.only(),
          )
              .animate()
              .fadeIn(duration: 400.ms, delay: 400.ms)
              .slideX(begin: 0.2, end: 0),
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
}) {
  logger('$error: \n$stack', logLevel: LogLevel.error);

  final nav = Get.key.currentState;
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
    debugPrint("Navigator not ready");
  }
}

List<TextSpan> _colorizeErrorText(String text, ColorScheme theme) {
  final patterns = {
    RegExp(r'\bv?\d+(?:\.\d+)*\b'): const TextStyle(color: Colors.amberAccent),
    RegExp(r'\b(?:dart:[\w/.]+|package:[\w./_]+|https?://\S+)\b'):
        const TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w500),
    RegExp(r'(/[\w./_-]+\.\w+|\w+\.java:\d+)'):
        const TextStyle(color: Colors.lightGreen, fontStyle: FontStyle.italic),
    RegExp(r'\b(?:[a-z_]+\.)*[A-Z][a-zA-Z0-9_]*(?:\.[a-zA-Z0-9_]+)*\b'):
        const TextStyle(color: Colors.tealAccent, fontWeight: FontWeight.w300),
  };

  final spans = <TextSpan>[];

  while (text.isNotEmpty) {
    RegExpMatch? earliestMatch;
    RegExp? matchedPattern;

    for (final entry in patterns.entries) {
      final match = entry.key.firstMatch(text);
      if (match != null &&
          (earliestMatch == null || match.start < earliestMatch.start)) {
        earliestMatch = match;
        matchedPattern = entry.key;
      }
    }

    if (earliestMatch == null) {
      spans.add(
        TextSpan(
          text: text,
          style: const TextStyle(
            color: Colors.white70,
          ),
        ),
      );
      break;
    }

    if (earliestMatch.start > 0) {
      spans.add(
        TextSpan(
          text: text.substring(0, earliestMatch.start),
          style: const TextStyle(
            color: Colors.white70,
          ),
        ),
      );
    }

    spans.add(
      TextSpan(
        text: earliestMatch.group(0),
        style: patterns[matchedPattern] ??
            const TextStyle(
              color: Colors.white70,
            ),
      ),
    );

    text = text.substring(earliestMatch.end);
  }

  return spans;
}
