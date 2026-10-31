import 'dart:async';

import 'package:dartotsu_extension_bridge/Extensions/DownloadablePlugin.dart';
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
            AppSize(child: _body(context)),
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
            boxShadow: [
              BoxShadow(
                color: scheme.primary.withValues(alpha: 0.25),
                blurRadius: 20,
              ),
            ],
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
    if (state.busy) return _progress(context);
    return switch (phase) {
      PluginPhase.loading => _loading(context),
      PluginPhase.missing => _error(
        context,
        getString.pluginNotInRepo(widget.name),
      ),
      PluginPhase.failed => _error(
        context,
        state.message.value ?? getString.pluginFetchFailed,
      ),
      _ => _about(context),
    };
  }

  Widget _about(BuildContext context) {
    final description = '${state.remote.value?['description'] ?? ''}'.trim();
    final theme = context.textTheme;
    if (state.upToDate && description.isEmpty) {
      return _note(
        context,
        Icons.check_circle_rounded,
        getString.installedState,
      );
    }
    if (description.isEmpty) return const SizedBox.shrink();
    return SectionCard(
      margin: EdgeInsets.zero,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 180),
        child: SingleChildScrollView(
          child: Text(
            description,
            style: theme.bodyMedium?.copyWith(height: 1.4),
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

  Widget _progress(BuildContext context) {
    final scheme = context.colorScheme;
    final theme = context.textTheme;
    final plugin = widget.plugin;
    final total = plugin.totalBytes.value;
    final received = plugin.receivedBytes.value;
    final speed = plugin.speed.value;
    final installing = state.installing;
    final known = !installing && total > 0;
    final fraction = known ? (received / total).clamp(0.0, 1.0) : null;
    final detail = known
        ? [
            getString.updateSizeOf(formatBytes(received), formatBytes(total)),
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
                  installing
                      ? getString.updateInstalling
                      : total > 0
                      ? getString.updateDownloading
                      : getString.updatePreparing,
                  style: theme.labelLarge?.copyWith(
                    color: scheme.onSecondaryContainer,
                  ),
                ),
              ),
              if (fraction != null)
                Text(
                  '${(fraction * 100).toStringAsFixed(0)}%',
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
            child: LinearProgressIndicator(minHeight: 8, value: fraction),
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
                ? (state.installing ? null : state.cancel)
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
