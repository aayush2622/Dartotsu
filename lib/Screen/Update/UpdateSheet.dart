import 'package:flutter/material.dart';
import 'package:markdown_widget/config/configs.dart';
import 'package:markdown_widget/widget/blocks/leaf/heading.dart';
import 'package:markdown_widget/widget/blocks/leaf/link.dart';
import 'package:markdown_widget/widget/markdown.dart';

import '../../Api/Updater/AppUpdater.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Function.dart';
import '../../Utils/Nav/DpadNav.dart';
import '../../Widgets/Components/AppSheet.dart';
import '../../Widgets/Components/SectionCard.dart';

String formatBytes(num bytes) {
  const units = ['B', 'KB', 'MB', 'GB'];
  var value = bytes.toDouble();
  var unit = 0;
  while (value >= 1024 && unit < units.length - 1) {
    value /= 1024;
    unit++;
  }
  return '${value.toStringAsFixed(unit < 2 ? 0 : 1)} ${units[unit]}';
}

class UpdateSheet extends StatelessWidget {
  final AppUpdater updater;
  final UpdateInfo info;
  final Live<bool> skip;
  final VoidCallback onLater;

  const UpdateSheet({
    super.key,
    required this.updater,
    required this.info,
    required this.skip,
    required this.onLater,
  });

  @override
  Widget build(BuildContext context) => AppSheet(
    child: Watch(
      () => SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(
          Dimens.pagePad,
          Dimens.gapSm,
          Dimens.pagePad,
          Dimens.pagePad,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _header(context),
            SizedBox(height: Dimens.gap),
            if (info.body.trim().isNotEmpty) _notes(context),
            AppSize(child: _status(context)),
            SizedBox(height: Dimens.gap),
            _actions(context),
          ],
        ),
      ),
    ),
  );

  Widget _header(BuildContext context) {
    final scheme = context.colorScheme;
    final theme = context.textTheme;
    final released = info.published;
    final detail = [
      if (info.name.isNotEmpty && info.name != info.tag) info.name,
      if (released != null)
        getString.updateReleased(
          MaterialLocalizations.of(context).formatMediumDate(released),
        ),
      if (info.size != null) formatBytes(info.size!),
    ].join(' · ');
    return Row(
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: scheme.primaryContainer,
          ),
          child: Icon(
            Icons.system_update_rounded,
            size: 28,
            color: scheme.onPrimaryContainer,
          ),
        ).animateDropIn(),
        SizedBox(width: Dimens.gap),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                getString.updateAvailable,
                style: theme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: Dimens.gapXs),
              Text(
                info.tag,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: theme.labelLarge?.copyWith(color: scheme.primary),
              ),
              if (detail.isNotEmpty)
                Text(
                  detail,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.bodySmall?.copyWith(
                    color: scheme.onSurfaceVariant,
                  ),
                ),
            ],
          ),
        ),
      ],
    ).animateFadeUp();
  }

  Widget _notes(BuildContext context) {
    final scheme = context.colorScheme;
    final style = context.textTheme.bodyMedium!;
    return Padding(
      padding: EdgeInsets.only(bottom: Dimens.gap),
      child: SectionCard(
        title: getString.updateWhatsNew,
        margin: EdgeInsets.zero,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 240),
          child: DpadFocusable(
            enabled: false,
            child: FocusTraversalGroup(
              descendantsAreFocusable: false,
              child: MarkdownWidget(
                data: info.body,
                shrinkWrap: true,
                config: MarkdownConfig(
                  configs: [
                    LinkConfig(
                      onTap: openLinkInBrowser,
                      style: style.copyWith(color: scheme.primary),
                    ),
                    H1Config(
                      style: style.copyWith(
                        fontWeight: FontWeight.bold,
                        color: scheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ).animateFadeUp();
  }

  Widget _status(BuildContext context) {
    final scheme = context.colorScheme;
    final theme = context.textTheme;
    final phase = updater.phase.value;
    if (phase == UpdatePhase.failed) {
      return Container(
        padding: EdgeInsets.all(Dimens.gap),
        decoration: BoxDecoration(
          color: scheme.errorContainer,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Icon(Icons.error_outline_rounded, color: scheme.onErrorContainer),
            SizedBox(width: Dimens.gap),
            Expanded(
              child: Text(
                updater.error.value ?? '',
                style: theme.bodyMedium?.copyWith(
                  color: scheme.onErrorContainer,
                ),
              ),
            ),
          ],
        ),
      );
    }
    if (!updater.busy) {
      return Padding(
        padding: EdgeInsets.only(bottom: Dimens.gapXs),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () => skip.value = !skip.value,
          child: Row(
            children: [
              Checkbox(
                value: skip.value,
                visualDensity: VisualDensity.compact,
                onChanged: (v) => skip.value = v ?? false,
              ),
              Expanded(
                child: Text(
                  getString.updateSkipVersion,
                  style: theme.bodyMedium?.copyWith(
                    color: scheme.onSurfaceVariant,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
    final progress = updater.progress.value;
    final total = updater.totalBytes.value;
    final known =
        phase == UpdatePhase.downloading && total > 0 && progress >= 0;
    final label = switch (phase) {
      UpdatePhase.preparing => getString.updatePreparing,
      UpdatePhase.downloading => getString.updateDownloading,
      _ => getString.updateInstalling,
    };
    final speed = updater.speed.value;
    final detail = known
        ? [
            getString.updateSizeOf(
              formatBytes(updater.receivedBytes.value),
              formatBytes(total),
            ),
            if (speed > 0) getString.updateSpeed(formatBytes(speed)),
          ].join(' · ')
        : '';
    return Container(
      padding: EdgeInsets.all(Dimens.gap),
      decoration: BoxDecoration(
        color: scheme.secondaryContainer.withValues(alpha: 0.55),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  label,
                  style: theme.labelLarge?.copyWith(
                    color: scheme.onSecondaryContainer,
                  ),
                ),
              ),
              if (known)
                Text(
                  '${progress.toStringAsFixed(0)}%',
                  style: theme.labelLarge?.copyWith(
                    color: scheme.onSecondaryContainer,
                    fontWeight: FontWeight.w700,
                  ),
                ),
            ],
          ),
          SizedBox(height: Dimens.gapSm),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LinearProgressIndicator(
              minHeight: 8,
              value: known ? progress / 100 : null,
            ),
          ),
          if (detail.isNotEmpty) ...[
            SizedBox(height: Dimens.gapSm),
            Text(
              detail,
              style: theme.bodySmall?.copyWith(
                color: scheme.onSecondaryContainer.withValues(alpha: 0.8),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _actions(BuildContext context) {
    final phase = updater.phase.value;
    final busy = updater.busy;
    final cancellable =
        phase == UpdatePhase.preparing || phase == UpdatePhase.downloading;
    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: busy ? (cancellable ? updater.cancel : null) : onLater,
            child: Text(busy ? getString.cancel : getString.updateLater),
          ),
        ),
        SizedBox(width: Dimens.gap),
        Expanded(
          child: FilledButton(
            onPressed: busy ? null : updater.start,
            child: busy
                ? SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.5,
                      color: context.colorScheme.onSurface.withValues(
                        alpha: 0.5,
                      ),
                    ),
                  )
                : Text(
                    phase == UpdatePhase.failed
                        ? getString.updateTryAgain
                        : getString.update,
                  ),
          ),
        ),
      ],
    ).animateFadeUp();
  }
}
