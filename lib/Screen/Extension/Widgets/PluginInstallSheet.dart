import '../../../Widgets/Components/ScrollConfig.dart';

import 'dart:async';

import 'package:dartotsu_extension_bridge/Extensions/DownloadablePlugin.dart';
import 'package:dartotsu_extension_bridge/Extensions/InstallStep.dart';
import 'package:flutter/material.dart';

import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Animation/WidgetAnimations.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/AppSheet.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/LoadSvg.dart';
import '../../../Widgets/Components/ScreenState.dart';
import '../../../Widgets/Components/SectionCard.dart';
import '../../Update/UpdateSheet.dart';
import 'PluginInstallState.dart';

Future<void> showInstallDialog(
  BuildContext context,
  DownloadablePlugin plugin,
  String name, {
  String? icon,
}) => showCustomBottomDialog<void>(
  context,
  PluginInstallSheet(plugin: plugin, name: name, icon: icon),
);

class PluginInstallSheet extends StatefulWidget {
  final DownloadablePlugin plugin;
  final String name;
  final String? icon;

  const PluginInstallSheet({
    super.key,
    required this.plugin,
    required this.name,
    this.icon,
  });

  @override
  State<PluginInstallSheet> createState() => _PluginInstallSheetState();
}

class _PluginInstallSheetState extends State<PluginInstallSheet>
    with ScreenStateHost<PluginInstallSheet, PluginInstallState> {
  @override
  PluginInstallState buildState() =>
      PluginInstallState(widget.plugin, widget.name);

  @override
  Widget build(BuildContext context) => AppSheet(
    child: Watch(
      () => ScrollConfig(
        context,
        child: SingleChildScrollView(
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
              AppSize(child: _body(context)),
              SizedBox(height: Dimens.gap),
              _actions(context),
            ],
          ),
        ),
      ),
    ),
  );

  Widget _header(BuildContext context) {
    final scheme = context.colorScheme;
    final theme = context.textTheme;
    final remote = state.remote.value;
    final version = '${remote?['versionName'] ?? ''}';
    final sizeBytes = remote?['fileSize'];
    final author = '${remote?['author'] ?? ''}';
    final detail = [
      if (sizeBytes is num && sizeBytes > 0) formatBytes(sizeBytes),
      if (author.isNotEmpty) author,
    ].join(' · ');
    final update = state.installed && state.hasUpdate.value;
    return Row(
      children: [
        Container(
          width: 56,
          height: 56,
          alignment: Alignment.center,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: scheme.primaryContainer,
          ),
          child: widget.icon == null
              ? Icon(
                  Icons.extension_rounded,
                  size: 28,
                  color: scheme.onPrimaryContainer,
                )
              : assetIcon(widget.icon!, size: 30),
        ).animateDropIn(),
        SizedBox(width: Dimens.gap),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                update
                    ? getString.updatePluginTitle(widget.name)
                    : getString.installPluginTitle(widget.name),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
              ),
              if (version.isNotEmpty) ...[
                SizedBox(height: Dimens.gapXs),
                Text(
                  version,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.labelLarge?.copyWith(color: scheme.primary),
                ),
              ],
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

  Widget _body(BuildContext context) {
    final phase = state.phase.value;
    if (state.busy) return _stepList(context);
    return switch (phase) {
      PluginPhase.loading => _loading(context),
      PluginPhase.missing => _error(
        context,
        getString.pluginNotInRepo(widget.name),
      ),
      PluginPhase.failed => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _error(context, state.message.value ?? getString.pluginFetchFailed),
          if (state.hasPrerequisites) ...[
            SizedBox(height: Dimens.gapSm),
            _stepList(context),
          ],
        ],
      ),
      _ => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _about(context),
          if (state.hasPrerequisites && !state.upToDate) ...[
            SizedBox(height: Dimens.gapSm),
            _stepList(context),
          ],
        ],
      ),
    };
  }

  Widget _about(BuildContext context) {
    final description = '${state.remote.value?['description'] ?? ''}'.trim();
    final theme = context.textTheme;
    final plugin = widget.plugin;
    if (state.upToDate && description.isEmpty) {
      return _note(
        context,
        Icons.check_circle_rounded,
        getString.installedState,
      );
    }
    final onlyRuntime =
        state.installed &&
        state.prerequisitesPending &&
        plugin.step.state.value == StepStatus.upToDate;
    final hint = onlyRuntime
        ? getString.installRuntimeNewer
        : state.hasPrerequisites && !state.installed
        ? getString.installNeedsRuntime
        : null;
    if (description.isEmpty && hint == null) return const SizedBox.shrink();
    return SectionCard(
      margin: EdgeInsets.zero,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 180),
        child: ScrollConfig(
          context,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (description.isNotEmpty)
                  Text(
                    description,
                    style: theme.bodyMedium?.copyWith(height: 1.4),
                  ),
                if (hint != null) ...[
                  if (description.isNotEmpty) SizedBox(height: Dimens.gapSm),
                  Text(
                    hint,
                    style: theme.bodySmall?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                      height: 1.4,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _note(BuildContext context, IconData icon, String text) {
    final scheme = context.colorScheme;
    return Container(
      padding: EdgeInsets.all(Dimens.gap),
      decoration: BoxDecoration(
        color: scheme.secondaryContainer.withValues(alpha: 0.55),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(icon, color: scheme.onSecondaryContainer),
          SizedBox(width: Dimens.gap),
          Expanded(
            child: Text(
              text,
              style: context.textTheme.bodyMedium?.copyWith(
                color: scheme.onSecondaryContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _loading(BuildContext context) {
    final scheme = context.colorScheme;
    return Container(
      padding: EdgeInsets.all(Dimens.gap),
      decoration: BoxDecoration(
        color: scheme.secondaryContainer.withValues(alpha: 0.55),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            getString.updatePreparing,
            style: context.textTheme.labelLarge?.copyWith(
              color: scheme.onSecondaryContainer,
            ),
          ),
          SizedBox(height: Dimens.gapSm),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: const LinearProgressIndicator(minHeight: 8),
          ),
        ],
      ),
    );
  }

  Widget _error(BuildContext context, String text) {
    final scheme = context.colorScheme;
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
              text,
              style: context.textTheme.bodyMedium?.copyWith(
                color: scheme.onErrorContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _stepTitle(InstallStep step) => switch (step.id) {
    'jre' => getString.installStepJre,
    'core' => getString.installStepCore,
    _ => widget.name,
  };

  String _stepText(InstallStep step) {
    final total = step.totalBytes.value;
    final version = step.version.value;
    final detail = step.detail.value;
    switch (step.state.value) {
      case StepStatus.waiting:
        if (!step.replaces.value) return getString.stepWillInstall;
        return version == null
            ? getString.stepWillUpdate
            : getString.stepWillUpdateTo(version);
      case StepStatus.checking:
        return getString.stepChecking;
      case StepStatus.downloading:
        if (total <= 0) return getString.updateDownloading;
        final speed = step.speed.value;
        return [
          getString.updateSizeOf(
            formatBytes(step.receivedBytes.value),
            formatBytes(total),
          ),
          if (speed > 0) getString.updateSpeed(formatBytes(speed)),
        ].join(' · ');
      case StepStatus.installing:
        return getString.updateInstalling;
      case StepStatus.done:
        return getString.stepInstalled;
      case StepStatus.upToDate:
        return detail == null
            ? getString.stepUpToDate
            : getString.stepUpToDateWith(detail);
      case StepStatus.skipped:
        return getString.stepNotNeeded;
      case StepStatus.failed:
        final reason = step.error.value;
        return reason == null
            ? getString.stepFailed
            : getString.stepFailedWith(reason);
    }
  }

  Widget _stepIcon(BuildContext context, InstallStep step) {
    final scheme = context.colorScheme;
    const size = 22.0;
    switch (step.state.value) {
      case StepStatus.checking:
      case StepStatus.downloading:
      case StepStatus.installing:
        final total = step.totalBytes.value;
        final downloading = step.state.value == StepStatus.downloading;
        return SizedBox(
          width: size,
          height: size,
          child: CircularProgressIndicator(
            strokeWidth: 2.5,
            value: downloading && total > 0
                ? (step.receivedBytes.value / total).clamp(0.0, 1.0)
                : null,
          ),
        );
      case StepStatus.done:
        return Icon(
          Icons.check_circle_rounded,
          size: size,
          color: scheme.primary,
        );
      case StepStatus.upToDate:
        return Icon(
          Icons.check_circle_outline_rounded,
          size: size,
          color: scheme.primary,
        );
      case StepStatus.skipped:
        return Icon(
          Icons.remove_circle_outline_rounded,
          size: size,
          color: scheme.onSurfaceVariant,
        );
      case StepStatus.failed:
        return Icon(Icons.error_rounded, size: size, color: scheme.error);
      case StepStatus.waiting:
        return Icon(
          Icons.radio_button_unchecked_rounded,
          size: size,
          color: scheme.onSurfaceVariant,
        );
    }
  }

  Widget _stepRow(BuildContext context, InstallStep step) {
    final scheme = context.colorScheme;
    final theme = context.textTheme;
    final status = step.state.value;
    final failed = status == StepStatus.failed;
    final total = step.totalBytes.value;
    final trailing = switch (status) {
      StepStatus.downloading when total > 0 =>
        '${(step.progress.value * 100).clamp(0, 100).toStringAsFixed(0)}%',
      StepStatus.waiting when total > 0 => formatBytes(total),
      _ => null,
    };
    final dim = status == StepStatus.waiting || status == StepStatus.skipped;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimens.gapXs + 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              _stepIcon(context, step),
              SizedBox(width: Dimens.gap),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _stepTitle(step),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: dim
                            ? scheme.onSecondaryContainer.withValues(alpha: 0.7)
                            : scheme.onSecondaryContainer,
                      ),
                    ),
                    Text(
                      _stepText(step),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.bodySmall?.copyWith(
                        color: failed
                            ? scheme.error
                            : scheme.onSecondaryContainer.withValues(
                                alpha: 0.75,
                              ),
                      ),
                    ),
                  ],
                ),
              ),
              if (trailing != null)
                Text(
                  trailing,
                  style: theme.labelLarge?.copyWith(
                    color: scheme.onSecondaryContainer,
                    fontWeight: FontWeight.w700,
                  ),
                ),
            ],
          ),
          if (step.active) ...[
            SizedBox(height: Dimens.gapSm),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: LinearProgressIndicator(
                minHeight: 6,
                value: status == StepStatus.downloading && total > 0
                    ? (step.receivedBytes.value / total).clamp(0.0, 1.0)
                    : null,
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _stepList(BuildContext context) {
    final scheme = context.colorScheme;
    final theme = context.textTheme;
    final steps = state.steps.toList();
    final counter = state.busy && steps.length > 1;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.gap,
        vertical: Dimens.gapSm,
      ),
      decoration: BoxDecoration(
        color: scheme.secondaryContainer.withValues(alpha: 0.55),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (counter)
            Padding(
              padding: EdgeInsets.only(top: Dimens.gapXs),
              child: Text(
                getString.installStepsProgress(state.position, steps.length),
                style: theme.labelMedium?.copyWith(
                  color: scheme.onSecondaryContainer.withValues(alpha: 0.7),
                ),
              ),
            ),
          for (final step in steps) _stepRow(context, step),
        ],
      ),
    );
  }

  Widget _actions(BuildContext context) {
    final phase = state.phase.value;
    final busy = state.busy;
    final failed = phase == PluginPhase.failed || phase == PluginPhase.missing;
    final loading = phase == PluginPhase.loading;
    final label = failed
        ? getString.updateTryAgain
        : state.upToDate
        ? getString.installedState
        : state.installed
        ? getString.update
        : getString.install;
    final VoidCallback? primary = busy || loading || (!failed && state.upToDate)
        ? null
        : failed
        ? () => unawaited(state.retry())
        : () => unawaited(state.start());
    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: busy
                ? (state.cancellable ? state.cancel : null)
                : state.pop,
            child: Text(busy ? getString.cancel : getString.updateLater),
          ),
        ),
        SizedBox(width: Dimens.gap),
        Expanded(
          child: FilledButton(
            onPressed: primary,
            child: busy || loading
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
                : Text(label),
          ),
        ),
      ],
    ).animateFadeUp();
  }
}
