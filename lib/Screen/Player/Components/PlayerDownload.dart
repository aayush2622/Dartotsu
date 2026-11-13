import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';

import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Animation/WidgetAnimations.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Utils/Function.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Widgets/Components/SectionCard.dart';

class PlayerDownloadView extends StatelessWidget {
  const PlayerDownloadView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.surface,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(Dimens.gap),
              child: IconButton.filledTonal(
                onPressed: () => popPage(context),
                icon: const Icon(Icons.arrow_back_rounded),
              ),
            ),
            Center(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(Dimens.pagePad),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 440),
                  child: Watch(
                    () => AppSwitcher(
                      child: Mpv.phase.value == MpvPhase.failed
                          ? const _Failed(key: ValueKey('failed'))
                          : const _Progress(key: ValueKey('progress')),
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
}

class _Badge extends StatelessWidget {
  final IconData icon;
  final bool error;
  final double? value;
  final bool ring;

  const _Badge({
    required this.icon,
    this.error = false,
    this.value,
    this.ring = false,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return SizedBox(
      width: 112,
      height: 112,
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (ring)
            SizedBox.expand(
              child: CircularProgressIndicator(
                value: value,
                strokeWidth: 5,
                strokeCap: StrokeCap.round,
                backgroundColor: scheme.primaryContainer.withValues(alpha: 0.6),
              ),
            ),
          CircleAvatar(
            radius: 42,
            backgroundColor: error
                ? scheme.errorContainer
                : scheme.primaryContainer,
            child: Icon(
              icon,
              size: 40,
              color: error
                  ? scheme.onErrorContainer
                  : scheme.onPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}

class _Progress extends StatelessWidget {
  const _Progress({super.key});

  @override
  Widget build(BuildContext context) => Watch(() {
    final addon = Mpv.addon;
    final total = addon?.total.value ?? 0;
    final received = addon?.received.value ?? 0;
    final fraction = total > 0
        ? (received / total).clamp(0.0, 1.0).toDouble()
        : null;
    final speed = Mpv.speed.value;
    final scheme = context.colorScheme;
    final theme = context.textTheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _Badge(icon: Icons.play_arrow_rounded, ring: true, value: fraction),
        SizedBox(height: Dimens.gapLg),
        Text(
          getString.playerDownloadTitle,
          textAlign: TextAlign.center,
          style: theme.headlineSmall?.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(height: Dimens.gapSm),
        Text(
          getString.playerDownloadBody,
          textAlign: TextAlign.center,
          style: theme.bodyMedium?.copyWith(color: scheme.onSurfaceVariant),
        ),
        SizedBox(height: Dimens.gapLg),
        SectionCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              LinearProgressIndicator(
                value: fraction,
                minHeight: 8,
                borderRadius: BorderRadius.circular(4),
              ),
              SizedBox(height: Dimens.gapSm),
              Row(
                children: [
                  Text(
                    fraction == null
                        ? getString.playerDownloadStarting
                        : '${(fraction * 100).floor()}%',
                    style: theme.titleMedium,
                  ),
                  const Spacer(),
                  if (fraction != null)
                    Flexible(
                      child: Text(
                        [
                          '${formatBytes(received)} / ${formatBytes(total)}',
                          if (speed > 0) '${formatBytes(speed.round())}/s',
                        ].join(' · '),
                        overflow: TextOverflow.ellipsis,
                        style: theme.labelMedium?.copyWith(
                          color: scheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: Dimens.gap),
        TextButton(
          onPressed: () {
            Mpv.cancel();
            popPage(context);
          },
          child: Text(getString.cancel),
        ),
      ],
    ).animateFadeUp();
  });
}

class _Failed extends StatelessWidget {
  const _Failed({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final theme = context.textTheme;
    final detail = Mpv.error.value;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const _Badge(icon: Icons.cloud_off_rounded, error: true),
        SizedBox(height: Dimens.gapLg),
        Text(
          getString.playerDownloadFailedTitle,
          textAlign: TextAlign.center,
          style: theme.headlineSmall?.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(height: Dimens.gapSm),
        Text(
          getString.playerDownloadFailedBody,
          textAlign: TextAlign.center,
          style: theme.bodyMedium?.copyWith(color: scheme.onSurfaceVariant),
        ),
        if (detail != null && detail.isNotEmpty) ...[
          SizedBox(height: Dimens.gapLg),
          SectionCard(
            child: Text(
              detail,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: theme.bodySmall?.copyWith(color: scheme.error),
            ),
          ),
        ],
        SizedBox(height: Dimens.gapLg),
        FilledButton.icon(
          onPressed: () => Mpv.ensure(),
          icon: const Icon(Icons.refresh_rounded),
          label: Text(getString.playerDownloadRetry),
        ),
        SizedBox(height: Dimens.gapSm),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (detail != null && detail.isNotEmpty)
              TextButton.icon(
                onPressed: () => snackString(
                  getString.playerDownloadCopy,
                  clipboard: detail,
                ),
                icon: const Icon(Icons.copy_rounded),
                label: Text(getString.playerDownloadCopy),
              ),
            TextButton(
              onPressed: () => popPage(context),
              child: Text(getString.cancel),
            ),
          ],
        ),
      ],
    ).animateFadeUp();
  }
}
