import 'package:flutter/material.dart';

import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Animation/WidgetAnimations.dart';

class PlayerLevelIndicator extends StatelessWidget {
  final double value;
  final IconData icon;
  final bool shown;
  final bool left;

  const PlayerLevelIndicator({
    super.key,
    required this.value,
    required this.icon,
    required this.shown,
    required this.left,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Positioned(
      top: 0,
      bottom: 0,
      left: left ? 28 : null,
      right: left ? null : 28,
      child: IgnorePointer(
        child: Center(
          child: AnimatedOpacity(
            opacity: shown ? 1 : 0,
            duration: animDuration(200),
            child: Container(
              width: 44,
              height: 180,
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.6),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: LinearProgressIndicator(
                          value: value.clamp(0.0, 1.0),
                          minHeight: 8,
                          backgroundColor: Colors.white24,
                          color: scheme.primary,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Icon(icon, color: Colors.white, size: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PlayerSeekRipple extends StatefulWidget {
  final int seconds;
  final bool forward;

  const PlayerSeekRipple({
    super.key,
    required this.seconds,
    required this.forward,
  });

  @override
  State<PlayerSeekRipple> createState() => _PlayerSeekRippleState();
}

class _PlayerSeekRippleState extends State<PlayerSeekRipple> {
  int _shown = 0;

  @override
  Widget build(BuildContext context) {
    final seconds = widget.seconds;
    final forward = widget.forward;
    if (seconds > 0) _shown = seconds;
    final width = MediaQuery.sizeOf(context).width;
    return Positioned(
      top: 0,
      bottom: 0,
      left: forward ? null : width * 0.08,
      right: forward ? width * 0.08 : null,
      width: width * 0.26,
      child: IgnorePointer(
        child: Center(
          child: AnimatedScale(
            scale: seconds > 0 ? 1 : 0.8,
            duration: animDuration(180),
            curve: Curves.easeOutBack,
            child: AnimatedOpacity(
              opacity: seconds > 0 ? 1 : 0,
              duration: animDuration(180),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.55),
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      forward
                          ? Icons.fast_forward_rounded
                          : Icons.fast_rewind_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      '${forward ? '+' : '-'}${_shown}s',
                      style: context.textTheme.titleMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PlayerChip extends StatelessWidget {
  final String? text;
  final IconData icon;
  final AlignmentGeometry alignment;
  final EdgeInsetsGeometry margin;

  const PlayerChip({
    super.key,
    required this.text,
    required this.icon,
    this.alignment = Alignment.topCenter,
    this.margin = const EdgeInsets.only(top: 24),
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Positioned.fill(
      child: IgnorePointer(
        child: Align(
          alignment: alignment,
          child: Padding(
            padding: margin,
            child: AnimatedOpacity(
              opacity: text == null ? 0 : 1,
              duration: animDuration(200),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.7),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: scheme.primary.withValues(alpha: 0.5),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(icon, color: scheme.primary, size: 18),
                    const SizedBox(width: 8),
                    Text(
                      text ?? '',
                      style: context.textTheme.labelLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PlayerNextCard extends StatelessWidget {
  final int? seconds;
  final String title;
  final VoidCallback onCancel;
  final VoidCallback onPlay;

  const PlayerNextCard({
    super.key,
    required this.seconds,
    required this.title,
    required this.onCancel,
    required this.onPlay,
  });

  @override
  Widget build(BuildContext context) {
    final shown = seconds != null;
    return PositionedDirectional(
      end: 16,
      bottom: 56,
      child: IgnorePointer(
        ignoring: !shown,
        child: AnimatedOpacity(
          opacity: shown ? 1 : 0,
          duration: animDuration(200),
          child: Container(
            constraints: const BoxConstraints(maxWidth: 280),
            padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 12, 12),
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: 0.78),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white12),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  getString.playerNextIn(seconds ?? 0),
                  style: context.textTheme.labelLarge?.copyWith(
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.titleSmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(
                      onPressed: onCancel,
                      child: Text(getString.cancel),
                    ),
                    const SizedBox(width: 8),
                    FilledButton(
                      onPressed: onPlay,
                      child: Text(getString.playerPlayNow),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
